// Generated by gencpp from file referee/SendDimensionsResponse.msg
// DO NOT EDIT!


#ifndef REFEREE_MESSAGE_SENDDIMENSIONSRESPONSE_H
#define REFEREE_MESSAGE_SENDDIMENSIONSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace referee
{
template <class ContainerAllocator>
struct SendDimensionsResponse_
{
  typedef SendDimensionsResponse_<ContainerAllocator> Type;

  SendDimensionsResponse_()
    : ok(false)
    , correctDimensions()  {
    }
  SendDimensionsResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , correctDimensions(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _correctDimensions_type;
  _correctDimensions_type correctDimensions;




  typedef boost::shared_ptr< ::referee::SendDimensionsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::referee::SendDimensionsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SendDimensionsResponse_

typedef ::referee::SendDimensionsResponse_<std::allocator<void> > SendDimensionsResponse;

typedef boost::shared_ptr< ::referee::SendDimensionsResponse > SendDimensionsResponsePtr;
typedef boost::shared_ptr< ::referee::SendDimensionsResponse const> SendDimensionsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::referee::SendDimensionsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::referee::SendDimensionsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace referee

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::referee::SendDimensionsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::referee::SendDimensionsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::referee::SendDimensionsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::referee::SendDimensionsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::referee::SendDimensionsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::referee::SendDimensionsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::referee::SendDimensionsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9687182000a5c0215573ab2ca54af104";
  }

  static const char* value(const ::referee::SendDimensionsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9687182000a5c021ULL;
  static const uint64_t static_value2 = 0x5573ab2ca54af104ULL;
};

template<class ContainerAllocator>
struct DataType< ::referee::SendDimensionsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "referee/SendDimensionsResponse";
  }

  static const char* value(const ::referee::SendDimensionsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::referee::SendDimensionsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n\
geometry_msgs/Point correctDimensions\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::referee::SendDimensionsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::referee::SendDimensionsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.correctDimensions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendDimensionsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::referee::SendDimensionsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::referee::SendDimensionsResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "correctDimensions: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.correctDimensions);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REFEREE_MESSAGE_SENDDIMENSIONSRESPONSE_H
