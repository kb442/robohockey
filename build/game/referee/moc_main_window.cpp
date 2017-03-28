/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/game/referee/include/referee/main_window.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_referee__MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      29,   21,   20,   20, 0x05,

 // slots: signature, parameters, type, tag, flags
      54,   20,   20,   20, 0x0a,
      87,   81,   20,   20, 0x0a,
     119,   20,   20,   20, 0x0a,
     155,   20,   20,   20, 0x0a,
     189,   20,   20,   20, 0x0a,
     219,   20,   20,   20, 0x0a,
     249,   20,   20,   20, 0x0a,
     285,   20,   20,   20, 0x0a,
     321,   20,   20,   20, 0x0a,
     349,  341,   20,   20, 0x0a,
     370,   20,   20,   20, 0x0a,
     382,   20,   20,   20, 0x0a,
     412,  401,   20,   20, 0x0a,
     436,  401,   20,   20, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_referee__MainWindow[] = {
    "referee::MainWindow\0\0correct\0"
    "dimensionsFeedback(bool)\0"
    "on_actionAbout_triggered()\0check\0"
    "on_button_connect_clicked(bool)\0"
    "on_pushButton_controlGame_clicked()\0"
    "on_pushButton_resetGame_clicked()\0"
    "on_pushButton_goalA_clicked()\0"
    "on_pushButton_goalB_clicked()\0"
    "on_pushButton_removeGoalA_clicked()\0"
    "on_pushButton_removeGoalB_clicked()\0"
    "updateLoggingView()\0nr,name\0"
    "addTeam(int,QString)\0timerTick()\0"
    "preferencesSaved()\0nr,correct\0"
    "sendTeamColor(int,bool)\0"
    "sendTeamDimension(int,bool)\0"
};

void referee::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->dimensionsFeedback((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->on_actionAbout_triggered(); break;
        case 2: _t->on_button_connect_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->on_pushButton_controlGame_clicked(); break;
        case 4: _t->on_pushButton_resetGame_clicked(); break;
        case 5: _t->on_pushButton_goalA_clicked(); break;
        case 6: _t->on_pushButton_goalB_clicked(); break;
        case 7: _t->on_pushButton_removeGoalA_clicked(); break;
        case 8: _t->on_pushButton_removeGoalB_clicked(); break;
        case 9: _t->updateLoggingView(); break;
        case 10: _t->addTeam((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 11: _t->timerTick(); break;
        case 12: _t->preferencesSaved(); break;
        case 13: _t->sendTeamColor((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 14: _t->sendTeamDimension((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData referee::MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject referee::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_referee__MainWindow,
      qt_meta_data_referee__MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &referee::MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *referee::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *referee::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_referee__MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int referee::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    return _id;
}

// SIGNAL 0
void referee::MainWindow::dimensionsFeedback(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
