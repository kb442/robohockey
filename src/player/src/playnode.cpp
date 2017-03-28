#include "ros/ros.h"
#include "std_msgs/String.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <sensor_msgs/LaserScan.h>
#include "sensor_msgs/Image.h"
#include <sensor_msgs/image_encodings.h>
#include <geometry_msgs/Twist.h>
#include <image_transport/image_transport.h>
#include "cv_bridge/cv_bridge.h"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/opencv.hpp"

#include <iostream>
#include <math.h>
#include <time.h>

#include <image_transport/image_transport.h>
#include <image_transport/subscriber_filter.h>

/*
 * gmapping : rosrun gmapping slam_gmapping scan:=/robot1/front_laser/scan _odom_frame:=/robot1/odom _base_frame:=/robot1/base_link
 *
 * es sollten odom Informationen bereit gestellt werden ich weiß leider noch nicht wie man sie abruft und somit weiß wo man auf der karte ist
 *
 *
 * DAS FILE IST ZURZEIT EINE KATASTROPHE,
 * die zwei flags dist_flag und rl gehoeren vertauscht damit ihr Name zur aufgabe passt.
 * ich hab angefangen die funktion fuer die felder zu schreiben aber noch nicht eingebaut.
 * wir sollten noch eine Mittelung einbauen
 *
 * 2.Roboter starten:
 * --roslaunch player player.launch __name:=robot2 cmd_vel:=/robot2/cmd_vel front_camera/image_raw:=/robot2/front_camera/image_raw front_laser/scan:=/robot2/front_laser/scan
 * ++rosrun player player_node __name:=robot2 cmd_vel:=/robot2/cmd_vel front_camera/image_raw:=/robot2/front_came/image_raw front_laser/scan:=/robot2/front_laser/scan
 */




#define ROBOT_W 0.55
#define IMAGE_WINDOW "Camera Input"
#define MAX_RANGE 6.0
#define VELMUL 0.4
#define MAX_VEL 0.3

double range[360];
double weight[360] = {0};

typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::LaserScan> approx_sync;
ros::Publisher velocity_pub;

void perception_callback(const sensor_msgs::Image::ConstPtr& msg_img, const sensor_msgs::LaserScan::ConstPtr& msg_laser)
{
    ros::Time t = ros::Time::now();
    //ROS_INFO("New image and scan available");
    cv_bridge::CvImagePtr cv_ptr = cv_bridge::toCvCopy(msg_img, sensor_msgs::image_encodings::BGR8);
    cv::Mat image = cv_ptr->image;
    cv::flip(image, image, -1);
    cv::imshow(IMAGE_WINDOW, image);
    cv::waitKey(10);

    for(int i=0;i<180;i++){
        if (msg_laser->ranges[179-i]<6){
            range[i] = msg_laser->ranges[179-i];
        }
        else if(range[i]<=0.1)
            range[i]=0.1;

        else;

        //std::cout << i << ":  " << range[i]<< std::endl;
    }
    for(int i=180;i<360;i++){
            if (msg_laser->ranges[359+180-i]<6){
                range[i] = msg_laser->ranges[359+180-i];
            }
            else if(range[i]<=0.1)
                range[i]=0.1;
            else;
          //std::cout << i << ":  " << range[i]<< std::endl;

    }

    ROS_INFO_STREAM("time: " <<  ros::Time::now() - t);
        /* DO SOMETHING WITH image AND msg_laser HERE... OR NOT...*/
}

void set_velocities(float lin_vel, float ang_vel)
{
    geometry_msgs::Twist msg;
    msg.linear.x = lin_vel;
    msg.angular.z = ang_vel;

    velocity_pub.publish(msg);
}

double calc_vel(double* range){
    double temp = MAX_RANGE;
    static double old;

    for (int i = 359; i >= 300; i--){
        if(range[i] <= temp &&range[i]!=0)
            temp = range[i];
        }
    for (int i = 0; i >= 59; i++){
        if(range[i] <= temp &&range[i]!=0)
            temp = range[i];
        }
    old = (temp+old)/2;
    if(old>=MAX_VEL)
        return MAX_VEL;
    else
        return old;

}

boost::tuple<double,double> calc_turn(double* temp,int border,float dist){
    double suml= 0,sumr = 0;
    for (int i = 1; i<border+1; i++){
        if (range[i]< dist){
            suml = suml + temp[i];

        }
        else
            suml = suml + dist*weight[i];
    }
    for (int i = 359; i>359-border; i--){
       if (range[i]< dist){
            sumr = sumr + temp[i];

       }
       else
           sumr = sumr + dist*weight[i];
    }
    double sum = sumr + suml;

    //std::cout << "farsum  " << far_sum << std::endl;

    double turn = suml - sumr;
    return boost::make_tuple(sum,turn);
}



int main(int argc, char **argv)
{

  ros::init(argc, argv, "robot_node");
  ros::NodeHandle n;

    double x = 0;

    weight[0] = 1.0/(sqrt(2*M_PI))*exp(-(pow(x,2))/sqrt(2));

    for(int i = 1; i < 180 ; i++){
        x  = x + (1.0/100.0);
        weight[i] = 1.0/(sqrt(2*M_PI))*exp(-(pow(x,2))/sqrt(2));
        if(weight[i]==0)
            weight[i]=0.00001;
        weight[360-i] = weight[i];

    }
    for(int i = 0; i<360 ; i++)
        std::cout <<i <<"   "<< 1/weight[i] << std::endl;


  velocity_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);

  ros::topic::waitForMessage<sensor_msgs::Image>("front_camera/image_raw");
  ros::topic::waitForMessage<sensor_msgs::LaserScan>("front_laser/scan");

  image_transport::ImageTransport it_(n);
  image_transport::SubscriberFilter image_sub(it_, "front_camera/image_raw", 1);
  message_filters::Subscriber<sensor_msgs::LaserScan> laser_sub(n, "front_laser/scan", 1);
  message_filters::Synchronizer<approx_sync> sync(approx_sync(20), image_sub, laser_sub);
  sync.registerCallback(boost::bind(&perception_callback, _1, _2));

  cv::namedWindow(IMAGE_WINDOW);

  ros::Rate r(10);

  int count = 0;
  double temp[360] = {};
  double min_dist = sqrt(2*pow(ROBOT_W/2,2));
  bool   drive_flag = true;
  bool   rl_flag = false;           //true = links;
  bool   distance_flag = false;     //false = collision








  set_velocities(0, 0);
  while(ros::ok())
  {


      double suml = 0;
      double sumr = 0;
      double near = 0;
      double turn_mul = 0;
      double near_sum = 0;
      double far_sum = 0;
      double super_near = 0;
      distance_flag= false;




      for(int i = 0; i < 360; i++){
          temp[i] = range[i] * weight[i];
          //std::cout <<i<<"  "<<temp[i] << std::endl;
      }


//-----------NEAR---------------------------------------------------------------

    for (int i = 1; i<30; i++){
        if (range[i]<= 1){
            suml = suml + temp[i];
        }
        else
            suml = suml + 1*weight[i];
    }
    for (int i = 359; i>330; i--){
       if (range[i]<= 1){
            sumr = sumr + temp[i];
       }
       else
           sumr = sumr + 1*weight[i];
    }

    near = suml - sumr;
    near_sum = sumr + suml;
    //std::cout << "nearsum  " << near << "   " <<suml<<"    "<<sumr<<std::endl;


    suml = 0;
    sumr = 0;

//----------FAR----------------------------------------------------------------
    for (int i = 1; i<10; i++){
        if (temp[i]< 4*weight[i]){
            suml = suml + temp[i];

        }
        else
            suml = suml + 4*weight[i];
    }
    for (int i = 359; i>350; i--){
       if (temp[i]< 4*weight[i]){
            sumr = sumr + temp[i];

       }
       else
           sumr = sumr + 4*weight[i];
    }

    //turn_mul = super_near/2 + near + (suml - sumr);
    far_sum = sumr + suml;

    //std::cout << "farsum  " << far_sum << std::endl;

    turn_mul = near +(suml - sumr)/4 ;

  //-------------------------------------------------------------------------

    for (int i = 55; i > 0; i--){
        if(range[i] <= min_dist ){
            if(rl_flag == true && drive_flag == false)
                rl_flag = true;
            else
                rl_flag = false;
            drive_flag = false;
            distance_flag=true;
             break;
        }
        else if (range[359-i] <= min_dist){
            if(rl_flag == false && drive_flag == false)
                rl_flag = false;
            else
                rl_flag = true;
            drive_flag = false;
            distance_flag=true;
             break;


            }
    }
    if(distance_flag==true)
        drive_flag=false;
    else
        drive_flag=true;

    far_sum = calc_vel(&range[0]);

    if (drive_flag){
            set_velocities(VELMUL*far_sum, turn_mul * 0.5*far_sum);
    }
    else if(rl_flag)
        set_velocities(0, 0.2);
    else
        set_velocities(0, -0.2);

    ROS_INFO_STREAM("turn: "<<range[0]<<"  drive: " <<drive_flag);

    ros::spinOnce();
    r.sleep();
  }
  return 0;
}
