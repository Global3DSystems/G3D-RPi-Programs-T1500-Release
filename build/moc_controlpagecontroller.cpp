/****************************************************************************
** Meta object code from reading C++ file 'controlpagecontroller.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.11.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../controlpagecontroller.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'controlpagecontroller.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.11.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ControlPageController_t {
    QByteArrayData data[15];
    char stringdata0[238];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ControlPageController_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ControlPageController_t qt_meta_stringdata_ControlPageController = {
    {
QT_MOC_LITERAL(0, 0, 21), // "ControlPageController"
QT_MOC_LITERAL(1, 22, 27), // "position_build_plate_signal"
QT_MOC_LITERAL(2, 50, 0), // ""
QT_MOC_LITERAL(3, 51, 28), // "fan_control_cmd_onoff_signal"
QT_MOC_LITERAL(4, 80, 7), // "turn_on"
QT_MOC_LITERAL(5, 88, 9), // "fan_speed"
QT_MOC_LITERAL(6, 98, 27), // "uv_control_cmd_onoff_signal"
QT_MOC_LITERAL(7, 126, 13), // "home_z_signal"
QT_MOC_LITERAL(8, 140, 29), // "tilt_control_cmd_onoff_signal"
QT_MOC_LITERAL(9, 170, 7), // "turn_up"
QT_MOC_LITERAL(10, 178, 4), // "step"
QT_MOC_LITERAL(11, 183, 13), // "move_z_signal"
QT_MOC_LITERAL(12, 197, 2), // "up"
QT_MOC_LITERAL(13, 200, 23), // "move_z_with_step_signal"
QT_MOC_LITERAL(14, 224, 13) // "stop_z_signal"

    },
    "ControlPageController\0position_build_plate_signal\0"
    "\0fan_control_cmd_onoff_signal\0turn_on\0"
    "fan_speed\0uv_control_cmd_onoff_signal\0"
    "home_z_signal\0tilt_control_cmd_onoff_signal\0"
    "turn_up\0step\0move_z_signal\0up\0"
    "move_z_with_step_signal\0stop_z_signal"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ControlPageController[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x06 /* Public */,
       3,    2,   60,    2, 0x06 /* Public */,
       6,    2,   65,    2, 0x06 /* Public */,
       7,    0,   70,    2, 0x06 /* Public */,
       8,    2,   71,    2, 0x06 /* Public */,
       8,    1,   76,    2, 0x26 /* Public | MethodCloned */,
      11,    1,   79,    2, 0x06 /* Public */,
      13,    1,   82,    2, 0x06 /* Public */,
      14,    0,   85,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool, QMetaType::QString,    4,    5,
    QMetaType::Void, QMetaType::Bool, QMetaType::QString,    4,    5,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool, QMetaType::Double,    9,   10,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,   12,
    QMetaType::Void, QMetaType::Double,   10,
    QMetaType::Void,

       0        // eod
};

void ControlPageController::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ControlPageController *_t = static_cast<ControlPageController *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->position_build_plate_signal(); break;
        case 1: _t->fan_control_cmd_onoff_signal((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 2: _t->uv_control_cmd_onoff_signal((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 3: _t->home_z_signal(); break;
        case 4: _t->tilt_control_cmd_onoff_signal((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 5: _t->tilt_control_cmd_onoff_signal((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->move_z_signal((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->move_z_with_step_signal((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 8: _t->stop_z_signal(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (ControlPageController::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::position_build_plate_signal)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)(bool , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::fan_control_cmd_onoff_signal)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)(bool , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::uv_control_cmd_onoff_signal)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::home_z_signal)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)(bool , double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::tilt_control_cmd_onoff_signal)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::move_z_signal)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::move_z_with_step_signal)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (ControlPageController::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ControlPageController::stop_z_signal)) {
                *result = 8;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject ControlPageController::staticMetaObject = {
    { &HttpRequestHandler::staticMetaObject, qt_meta_stringdata_ControlPageController.data,
      qt_meta_data_ControlPageController,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ControlPageController::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ControlPageController::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ControlPageController.stringdata0))
        return static_cast<void*>(this);
    return HttpRequestHandler::qt_metacast(_clname);
}

int ControlPageController::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = HttpRequestHandler::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void ControlPageController::position_build_plate_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void ControlPageController::fan_control_cmd_onoff_signal(bool _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ControlPageController::uv_control_cmd_onoff_signal(bool _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void ControlPageController::home_z_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void ControlPageController::tilt_control_cmd_onoff_signal(bool _t1, double _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 6
void ControlPageController::move_z_signal(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void ControlPageController::move_z_with_step_signal(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void ControlPageController::stop_z_signal()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
