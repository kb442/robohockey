/********************************************************************************
** Form generated from reading UI file 'dialogsettings.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DIALOGSETTINGS_H
#define UI_DIALOGSETTINGS_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QDialog>
#include <QtGui/QDialogButtonBox>
#include <QtGui/QDoubleSpinBox>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QSpinBox>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DialogSettings
{
public:
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QGroupBox *groupBox;
    QGridLayout *gridLayout;
    QLineEdit *line_edit_master;
    QCheckBox *checkbox_use_environment;
    QLineEdit *line_edit_IP;
    QLabel *label_2;
    QLabel *label;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_3;
    QSpinBox *spinBox_duration;
    QLabel *label_9;
    QLabel *label_3;
    QLabel *label_15;
    QSpinBox *spinBox_color;
    QSpinBox *spinBox_dimensions;
    QLabel *label_14;
    QSpinBox *spinBox_goal;
    QLabel *label_8;
    QLabel *label_7;
    QDoubleSpinBox *spinBox_width;
    QDoubleSpinBox *spinBox_margin;
    QDoubleSpinBox *spinBox_length;
    QLabel *label_16;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *DialogSettings)
    {
        if (DialogSettings->objectName().isEmpty())
            DialogSettings->setObjectName(QString::fromUtf8("DialogSettings"));
        DialogSettings->setWindowModality(Qt::WindowModal);
        DialogSettings->resize(339, 653);
        DialogSettings->setModal(true);
        verticalLayoutWidget = new QWidget(DialogSettings);
        verticalLayoutWidget->setObjectName(QString::fromUtf8("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(10, 10, 321, 633));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        groupBox = new QGroupBox(verticalLayoutWidget);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setMaximumSize(QSize(456, 16777215));
        gridLayout = new QGridLayout(groupBox);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        line_edit_master = new QLineEdit(groupBox);
        line_edit_master->setObjectName(QString::fromUtf8("line_edit_master"));

        gridLayout->addWidget(line_edit_master, 2, 0, 1, 2);

        checkbox_use_environment = new QCheckBox(groupBox);
        checkbox_use_environment->setObjectName(QString::fromUtf8("checkbox_use_environment"));
        checkbox_use_environment->setLayoutDirection(Qt::RightToLeft);

        gridLayout->addWidget(checkbox_use_environment, 5, 0, 1, 2);

        line_edit_IP = new QLineEdit(groupBox);
        line_edit_IP->setObjectName(QString::fromUtf8("line_edit_IP"));

        gridLayout->addWidget(line_edit_IP, 4, 0, 1, 2);

        label_2 = new QLabel(groupBox);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setFrameShape(QFrame::NoFrame);
        label_2->setFrameShadow(QFrame::Raised);

        gridLayout->addWidget(label_2, 3, 0, 1, 1);

        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));
        label->setFrameShape(QFrame::NoFrame);
        label->setFrameShadow(QFrame::Plain);

        gridLayout->addWidget(label, 1, 0, 1, 1);


        verticalLayout->addWidget(groupBox);

        groupBox_2 = new QGroupBox(verticalLayoutWidget);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        groupBox_2->setMaximumSize(QSize(16777215, 16777215));
        gridLayout_3 = new QGridLayout(groupBox_2);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        spinBox_duration = new QSpinBox(groupBox_2);
        spinBox_duration->setObjectName(QString::fromUtf8("spinBox_duration"));
        spinBox_duration->setMinimum(1);
        spinBox_duration->setMaximum(3600);
        spinBox_duration->setValue(600);

        gridLayout_3->addWidget(spinBox_duration, 1, 0, 1, 1);

        label_9 = new QLabel(groupBox_2);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout_3->addWidget(label_9, 16, 0, 1, 1);

        label_3 = new QLabel(groupBox_2);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_3->addWidget(label_3, 2, 0, 1, 1);

        label_15 = new QLabel(groupBox_2);
        label_15->setObjectName(QString::fromUtf8("label_15"));

        gridLayout_3->addWidget(label_15, 0, 0, 1, 1);

        spinBox_color = new QSpinBox(groupBox_2);
        spinBox_color->setObjectName(QString::fromUtf8("spinBox_color"));
        spinBox_color->setMaximum(100);
        spinBox_color->setSingleStep(5);
        spinBox_color->setValue(10);

        gridLayout_3->addWidget(spinBox_color, 12, 0, 1, 1);

        spinBox_dimensions = new QSpinBox(groupBox_2);
        spinBox_dimensions->setObjectName(QString::fromUtf8("spinBox_dimensions"));
        spinBox_dimensions->setMaximum(100);
        spinBox_dimensions->setSingleStep(5);
        spinBox_dimensions->setValue(20);

        gridLayout_3->addWidget(spinBox_dimensions, 14, 0, 1, 1);

        label_14 = new QLabel(groupBox_2);
        label_14->setObjectName(QString::fromUtf8("label_14"));

        gridLayout_3->addWidget(label_14, 13, 0, 1, 1);

        spinBox_goal = new QSpinBox(groupBox_2);
        spinBox_goal->setObjectName(QString::fromUtf8("spinBox_goal"));
        spinBox_goal->setMaximum(100);
        spinBox_goal->setSingleStep(5);
        spinBox_goal->setValue(30);

        gridLayout_3->addWidget(spinBox_goal, 17, 0, 1, 1);

        label_8 = new QLabel(groupBox_2);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout_3->addWidget(label_8, 7, 0, 1, 1);

        label_7 = new QLabel(groupBox_2);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout_3->addWidget(label_7, 11, 0, 1, 1);

        spinBox_width = new QDoubleSpinBox(groupBox_2);
        spinBox_width->setObjectName(QString::fromUtf8("spinBox_width"));
        spinBox_width->setSingleStep(0.1);
        spinBox_width->setValue(3);

        gridLayout_3->addWidget(spinBox_width, 4, 0, 1, 1);

        spinBox_margin = new QDoubleSpinBox(groupBox_2);
        spinBox_margin->setObjectName(QString::fromUtf8("spinBox_margin"));
        spinBox_margin->setMaximum(10);
        spinBox_margin->setSingleStep(0.01);
        spinBox_margin->setValue(0.2);

        gridLayout_3->addWidget(spinBox_margin, 10, 0, 1, 1);

        spinBox_length = new QDoubleSpinBox(groupBox_2);
        spinBox_length->setObjectName(QString::fromUtf8("spinBox_length"));
        spinBox_length->setSingleStep(0.1);
        spinBox_length->setValue(5);

        gridLayout_3->addWidget(spinBox_length, 8, 0, 1, 1);

        label_16 = new QLabel(groupBox_2);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        gridLayout_3->addWidget(label_16, 9, 0, 1, 1);


        verticalLayout->addWidget(groupBox_2);

        buttonBox = new QDialogButtonBox(verticalLayoutWidget);
        buttonBox->setObjectName(QString::fromUtf8("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        retranslateUi(DialogSettings);
        QObject::connect(buttonBox, SIGNAL(accepted()), DialogSettings, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), DialogSettings, SLOT(reject()));

        QMetaObject::connectSlotsByName(DialogSettings);
    } // setupUi

    void retranslateUi(QDialog *DialogSettings)
    {
        DialogSettings->setWindowTitle(QApplication::translate("DialogSettings", "Preferences", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QApplication::translate("DialogSettings", "Ros Master", 0, QApplication::UnicodeUTF8));
        line_edit_master->setText(QApplication::translate("DialogSettings", "http://192.168.1.2:11311/", 0, QApplication::UnicodeUTF8));
        checkbox_use_environment->setText(QApplication::translate("DialogSettings", "Use environment variables", 0, QApplication::UnicodeUTF8));
        line_edit_IP->setText(QApplication::translate("DialogSettings", "192.168.1.67", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("DialogSettings", "Ros IP", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("DialogSettings", "Ros Master Url", 0, QApplication::UnicodeUTF8));
        groupBox_2->setTitle(QApplication::translate("DialogSettings", "Game Preferences", 0, QApplication::UnicodeUTF8));
        label_9->setText(QApplication::translate("DialogSettings", "Points per Goal:", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("DialogSettings", "Field Width [m]:", 0, QApplication::UnicodeUTF8));
        label_15->setText(QApplication::translate("DialogSettings", "Game duration [s]:", 0, QApplication::UnicodeUTF8));
        label_14->setText(QApplication::translate("DialogSettings", "Points for Dimensions:", 0, QApplication::UnicodeUTF8));
        label_8->setText(QApplication::translate("DialogSettings", "Field Length [m]:", 0, QApplication::UnicodeUTF8));
        label_7->setText(QApplication::translate("DialogSettings", "Points for Color:", 0, QApplication::UnicodeUTF8));
        label_16->setText(QApplication::translate("DialogSettings", "Dimension error margin [m]:", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class DialogSettings: public Ui_DialogSettings {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DIALOGSETTINGS_H
