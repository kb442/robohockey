/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QListView>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QStatusBar>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QAction *action_Quit;
    QAction *action_Preferences;
    QAction *actionAbout;
    QAction *actionAbout_Qt;
    QWidget *centralwidget;
    QHBoxLayout *hboxLayout;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QLabel *label_teamA;
    QLabel *label_scoreA;
    QLabel *label_dimensionsA;
    QLabel *label_colorA;
    QLabel *label_goalsA;
    QPushButton *pushButton_goalA;
    QPushButton *pushButton_removeGoalA;
    QVBoxLayout *verticalLayout_6;
    QLabel *label_status;
    QLabel *label_clock;
    QSpacerItem *verticalSpacer;
    QPushButton *button_connect;
    QPushButton *pushButton_controlGame;
    QPushButton *pushButton_resetGame;
    QVBoxLayout *verticalLayout_5;
    QLabel *label_teamB;
    QLabel *label_scoreB;
    QLabel *label_dimensionsB;
    QLabel *label_colorB;
    QLabel *label_goalsB;
    QPushButton *pushButton_goalB;
    QPushButton *pushButton_removeGoalB;
    QListView *listView_log;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QString::fromUtf8("MainWindowDesign"));
        MainWindowDesign->resize(682, 690);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        action_Quit = new QAction(MainWindowDesign);
        action_Quit->setObjectName(QString::fromUtf8("action_Quit"));
        action_Quit->setShortcutContext(Qt::ApplicationShortcut);
        action_Preferences = new QAction(MainWindowDesign);
        action_Preferences->setObjectName(QString::fromUtf8("action_Preferences"));
        actionAbout = new QAction(MainWindowDesign);
        actionAbout->setObjectName(QString::fromUtf8("actionAbout"));
        actionAbout_Qt = new QAction(MainWindowDesign);
        actionAbout_Qt->setObjectName(QString::fromUtf8("actionAbout_Qt"));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        hboxLayout = new QHBoxLayout(centralwidget);
        hboxLayout->setObjectName(QString::fromUtf8("hboxLayout"));
        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(0);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        label_teamA = new QLabel(centralwidget);
        label_teamA->setObjectName(QString::fromUtf8("label_teamA"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label_teamA->sizePolicy().hasHeightForWidth());
        label_teamA->setSizePolicy(sizePolicy);
        QFont font;
        font.setPointSize(16);
        label_teamA->setFont(font);
        label_teamA->setAlignment(Qt::AlignCenter);
        label_teamA->setMargin(6);

        verticalLayout_2->addWidget(label_teamA);

        label_scoreA = new QLabel(centralwidget);
        label_scoreA->setObjectName(QString::fromUtf8("label_scoreA"));
        QFont font1;
        font1.setPointSize(72);
        label_scoreA->setFont(font1);
        label_scoreA->setStyleSheet(QString::fromUtf8("background-color: rgb(0, 211, 255);"));
        label_scoreA->setAlignment(Qt::AlignCenter);

        verticalLayout_2->addWidget(label_scoreA);

        label_dimensionsA = new QLabel(centralwidget);
        label_dimensionsA->setObjectName(QString::fromUtf8("label_dimensionsA"));
        label_dimensionsA->setFont(font);
        label_dimensionsA->setAlignment(Qt::AlignCenter);
        label_dimensionsA->setMargin(6);

        verticalLayout_2->addWidget(label_dimensionsA);

        label_colorA = new QLabel(centralwidget);
        label_colorA->setObjectName(QString::fromUtf8("label_colorA"));
        label_colorA->setFont(font);
        label_colorA->setAlignment(Qt::AlignCenter);
        label_colorA->setMargin(6);

        verticalLayout_2->addWidget(label_colorA);

        label_goalsA = new QLabel(centralwidget);
        label_goalsA->setObjectName(QString::fromUtf8("label_goalsA"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(label_goalsA->sizePolicy().hasHeightForWidth());
        label_goalsA->setSizePolicy(sizePolicy1);
        label_goalsA->setFont(font);
        label_goalsA->setAlignment(Qt::AlignCenter);
        label_goalsA->setMargin(6);

        verticalLayout_2->addWidget(label_goalsA);

        pushButton_goalA = new QPushButton(centralwidget);
        pushButton_goalA->setObjectName(QString::fromUtf8("pushButton_goalA"));
        pushButton_goalA->setEnabled(false);
        pushButton_goalA->setMinimumSize(QSize(0, 80));
        pushButton_goalA->setFont(font);

        verticalLayout_2->addWidget(pushButton_goalA);

        pushButton_removeGoalA = new QPushButton(centralwidget);
        pushButton_removeGoalA->setObjectName(QString::fromUtf8("pushButton_removeGoalA"));
        pushButton_removeGoalA->setEnabled(false);

        verticalLayout_2->addWidget(pushButton_removeGoalA);


        horizontalLayout->addLayout(verticalLayout_2);

        verticalLayout_6 = new QVBoxLayout();
        verticalLayout_6->setSpacing(0);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        label_status = new QLabel(centralwidget);
        label_status->setObjectName(QString::fromUtf8("label_status"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(label_status->sizePolicy().hasHeightForWidth());
        label_status->setSizePolicy(sizePolicy2);
        label_status->setMinimumSize(QSize(0, 34));
        label_status->setFont(font);
        label_status->setAlignment(Qt::AlignCenter);

        verticalLayout_6->addWidget(label_status);

        label_clock = new QLabel(centralwidget);
        label_clock->setObjectName(QString::fromUtf8("label_clock"));
        QSizePolicy sizePolicy3(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(label_clock->sizePolicy().hasHeightForWidth());
        label_clock->setSizePolicy(sizePolicy3);
        label_clock->setMinimumSize(QSize(0, 109));
        QFont font2;
        font2.setPointSize(48);
        label_clock->setFont(font2);
        label_clock->setAlignment(Qt::AlignCenter);
        label_clock->setMargin(5);

        verticalLayout_6->addWidget(label_clock);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_6->addItem(verticalSpacer);

        button_connect = new QPushButton(centralwidget);
        button_connect->setObjectName(QString::fromUtf8("button_connect"));
        button_connect->setEnabled(true);
        QSizePolicy sizePolicy4(QSizePolicy::MinimumExpanding, QSizePolicy::Fixed);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(button_connect->sizePolicy().hasHeightForWidth());
        button_connect->setSizePolicy(sizePolicy4);

        verticalLayout_6->addWidget(button_connect);

        pushButton_controlGame = new QPushButton(centralwidget);
        pushButton_controlGame->setObjectName(QString::fromUtf8("pushButton_controlGame"));
        pushButton_controlGame->setEnabled(false);
        QSizePolicy sizePolicy5(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(pushButton_controlGame->sizePolicy().hasHeightForWidth());
        pushButton_controlGame->setSizePolicy(sizePolicy5);
        pushButton_controlGame->setMinimumSize(QSize(0, 53));
        pushButton_controlGame->setFont(font);

        verticalLayout_6->addWidget(pushButton_controlGame);

        pushButton_resetGame = new QPushButton(centralwidget);
        pushButton_resetGame->setObjectName(QString::fromUtf8("pushButton_resetGame"));
        pushButton_resetGame->setEnabled(false);
        sizePolicy5.setHeightForWidth(pushButton_resetGame->sizePolicy().hasHeightForWidth());
        pushButton_resetGame->setSizePolicy(sizePolicy5);

        verticalLayout_6->addWidget(pushButton_resetGame);


        horizontalLayout->addLayout(verticalLayout_6);

        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setSpacing(0);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        label_teamB = new QLabel(centralwidget);
        label_teamB->setObjectName(QString::fromUtf8("label_teamB"));
        sizePolicy.setHeightForWidth(label_teamB->sizePolicy().hasHeightForWidth());
        label_teamB->setSizePolicy(sizePolicy);
        label_teamB->setFont(font);
        label_teamB->setAlignment(Qt::AlignCenter);
        label_teamB->setMargin(6);

        verticalLayout_5->addWidget(label_teamB);

        label_scoreB = new QLabel(centralwidget);
        label_scoreB->setObjectName(QString::fromUtf8("label_scoreB"));
        label_scoreB->setFont(font1);
        label_scoreB->setStyleSheet(QString::fromUtf8("background-color: rgb(252, 255, 0);"));
        label_scoreB->setAlignment(Qt::AlignCenter);

        verticalLayout_5->addWidget(label_scoreB);

        label_dimensionsB = new QLabel(centralwidget);
        label_dimensionsB->setObjectName(QString::fromUtf8("label_dimensionsB"));
        label_dimensionsB->setFont(font);
        label_dimensionsB->setAlignment(Qt::AlignCenter);
        label_dimensionsB->setMargin(6);

        verticalLayout_5->addWidget(label_dimensionsB);

        label_colorB = new QLabel(centralwidget);
        label_colorB->setObjectName(QString::fromUtf8("label_colorB"));
        label_colorB->setFont(font);
        label_colorB->setAlignment(Qt::AlignCenter);
        label_colorB->setMargin(6);

        verticalLayout_5->addWidget(label_colorB);

        label_goalsB = new QLabel(centralwidget);
        label_goalsB->setObjectName(QString::fromUtf8("label_goalsB"));
        sizePolicy1.setHeightForWidth(label_goalsB->sizePolicy().hasHeightForWidth());
        label_goalsB->setSizePolicy(sizePolicy1);
        label_goalsB->setFont(font);
        label_goalsB->setAlignment(Qt::AlignCenter);
        label_goalsB->setMargin(6);

        verticalLayout_5->addWidget(label_goalsB);

        pushButton_goalB = new QPushButton(centralwidget);
        pushButton_goalB->setObjectName(QString::fromUtf8("pushButton_goalB"));
        pushButton_goalB->setEnabled(false);
        pushButton_goalB->setMinimumSize(QSize(0, 80));
        pushButton_goalB->setFont(font);

        verticalLayout_5->addWidget(pushButton_goalB);

        pushButton_removeGoalB = new QPushButton(centralwidget);
        pushButton_removeGoalB->setObjectName(QString::fromUtf8("pushButton_removeGoalB"));
        pushButton_removeGoalB->setEnabled(false);

        verticalLayout_5->addWidget(pushButton_removeGoalB);


        horizontalLayout->addLayout(verticalLayout_5);


        verticalLayout_4->addLayout(horizontalLayout);

        listView_log = new QListView(centralwidget);
        listView_log->setObjectName(QString::fromUtf8("listView_log"));
        QSizePolicy sizePolicy6(QSizePolicy::MinimumExpanding, QSizePolicy::Expanding);
        sizePolicy6.setHorizontalStretch(0);
        sizePolicy6.setVerticalStretch(0);
        sizePolicy6.setHeightForWidth(listView_log->sizePolicy().hasHeightForWidth());
        listView_log->setSizePolicy(sizePolicy6);

        verticalLayout_4->addWidget(listView_log);


        hboxLayout->addLayout(verticalLayout_4);

        MainWindowDesign->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindowDesign);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 682, 25));
        menu_File = new QMenu(menubar);
        menu_File->setObjectName(QString::fromUtf8("menu_File"));
        MainWindowDesign->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindowDesign);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindowDesign->setStatusBar(statusbar);

        menubar->addAction(menu_File->menuAction());
        menu_File->addAction(action_Preferences);
        menu_File->addSeparator();
        menu_File->addSeparator();
        menu_File->addAction(action_Quit);

        retranslateUi(MainWindowDesign);
        QObject::connect(action_Quit, SIGNAL(triggered()), MainWindowDesign, SLOT(close()));

        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "Robohockey", 0, QApplication::UnicodeUTF8));
        action_Quit->setText(QApplication::translate("MainWindowDesign", "&Quit", 0, QApplication::UnicodeUTF8));
        action_Quit->setShortcut(QApplication::translate("MainWindowDesign", "Ctrl+Q", 0, QApplication::UnicodeUTF8));
        action_Preferences->setText(QApplication::translate("MainWindowDesign", "&Preferences", 0, QApplication::UnicodeUTF8));
        actionAbout->setText(QApplication::translate("MainWindowDesign", "&About", 0, QApplication::UnicodeUTF8));
        actionAbout_Qt->setText(QApplication::translate("MainWindowDesign", "About &Qt", 0, QApplication::UnicodeUTF8));
        label_teamA->setText(QApplication::translate("MainWindowDesign", "Team A", 0, QApplication::UnicodeUTF8));
        label_scoreA->setText(QApplication::translate("MainWindowDesign", "0", 0, QApplication::UnicodeUTF8));
        label_dimensionsA->setText(QApplication::translate("MainWindowDesign", "Dimensions", 0, QApplication::UnicodeUTF8));
        label_colorA->setText(QApplication::translate("MainWindowDesign", "Team Color", 0, QApplication::UnicodeUTF8));
        label_goalsA->setText(QApplication::translate("MainWindowDesign", "0 Goals", 0, QApplication::UnicodeUTF8));
        pushButton_goalA->setText(QApplication::translate("MainWindowDesign", "GOAL!", 0, QApplication::UnicodeUTF8));
        pushButton_removeGoalA->setText(QApplication::translate("MainWindowDesign", "Remove Goal", 0, QApplication::UnicodeUTF8));
        label_status->setText(QApplication::translate("MainWindowDesign", "Game stopped", 0, QApplication::UnicodeUTF8));
        label_clock->setText(QApplication::translate("MainWindowDesign", "00:00", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        button_connect->setToolTip(QApplication::translate("MainWindowDesign", "Set the target to the current joint trajectory state.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_STATUSTIP
        button_connect->setStatusTip(QApplication::translate("MainWindowDesign", "Clear all waypoints and set the target to the current joint trajectory state.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_STATUSTIP
        button_connect->setText(QApplication::translate("MainWindowDesign", "Connect", 0, QApplication::UnicodeUTF8));
        pushButton_controlGame->setText(QApplication::translate("MainWindowDesign", "Wait for Teams", 0, QApplication::UnicodeUTF8));
        pushButton_resetGame->setText(QApplication::translate("MainWindowDesign", "Reset Game", 0, QApplication::UnicodeUTF8));
        label_teamB->setText(QApplication::translate("MainWindowDesign", "Team B", 0, QApplication::UnicodeUTF8));
        label_scoreB->setText(QApplication::translate("MainWindowDesign", "0", 0, QApplication::UnicodeUTF8));
        label_dimensionsB->setText(QApplication::translate("MainWindowDesign", "Dimensions", 0, QApplication::UnicodeUTF8));
        label_colorB->setText(QApplication::translate("MainWindowDesign", "Team Color", 0, QApplication::UnicodeUTF8));
        label_goalsB->setText(QApplication::translate("MainWindowDesign", "0 Goals", 0, QApplication::UnicodeUTF8));
        pushButton_goalB->setText(QApplication::translate("MainWindowDesign", "GOAL!", 0, QApplication::UnicodeUTF8));
        pushButton_removeGoalB->setText(QApplication::translate("MainWindowDesign", "Remove Goal", 0, QApplication::UnicodeUTF8));
        menu_File->setTitle(QApplication::translate("MainWindowDesign", "&File", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
