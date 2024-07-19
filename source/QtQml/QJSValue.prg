//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QJSValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new9
   METHOD new
   METHOD delete
   METHOD deleteProperty
   METHOD equals
   METHOD hasOwnProperty
   METHOD hasProperty
   METHOD isArray
   METHOD isBool
   METHOD isCallable
   METHOD isDate
   METHOD isError
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isVariant
   METHOD property
   METHOD prototype
   METHOD setProperty
   METHOD setPrototype
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt
   METHOD toNumber
   METHOD toQObject
   METHOD toString
   METHOD toUInt
   METHOD toVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QJSValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QJSValue>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtQml/QJSValue>
#endif

#include <QtCore/QDateTime>
#include <QtCore/QVariant>

    /*
    QJSValue(QJSValue::SpecialValue value = QJSValue::UndefinedValue)
    */
HB_FUNC_STATIC(QJSVALUE_NEW1)
{
  auto obj = new QJSValue(HB_ISNIL(1) ? static_cast<QJSValue::SpecialValue>(QJSValue::UndefinedValue)
                                      : static_cast<QJSValue::SpecialValue>(hb_parni(1)));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QJSValue(int value)
*/
HB_FUNC_STATIC(QJSVALUE_NEW4)
{
  auto obj = new QJSValue(PINT(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QJSValue(uint value)
*/
HB_FUNC_STATIC(QJSVALUE_NEW5)
{
  auto obj = new QJSValue(PUINT(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QJSValue(double value)
*/
HB_FUNC_STATIC(QJSVALUE_NEW6)
{
  auto obj = new QJSValue(PDOUBLE(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QJSValue(const QString &value)
*/
HB_FUNC_STATIC(QJSVALUE_NEW7)
{
  auto obj = new QJSValue(PQSTRING(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QJSValue(const char * value)
*/
HB_FUNC_STATIC(QJSVALUE_NEW9)
{
  auto obj = new QJSValue(PCONSTCHAR(1));
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC(QJSVALUE_NEW)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    HB_FUNC_EXEC(QJSVALUE_NEW1);
  }
  else if (ISNUMPAR(1) && ISQJSVALUE(1))
  {
    /*
    QJSValue(const QJSValue &other)
    */
    auto obj = new QJSValue(*PQJSVALUE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISLOG(1))
  {
    /*
    QJSValue(bool value)
    */
    auto obj = new QJSValue(PBOOL(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QJSVALUE_NEW7);
  }
  else if (ISNUMPAR(1) && ISQLATIN1STRING(1))
  {
    /*
    QJSValue(const QLatin1String &value)
    */
    auto obj = new QJSValue(*PQLATIN1STRING(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QJSVALUE_DELETE)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool deleteProperty(const QString &name)
*/
HB_FUNC_STATIC(QJSVALUE_DELETEPROPERTY)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->deleteProperty(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool equals(const QJSValue &other) const
*/
HB_FUNC_STATIC(QJSVALUE_EQUALS)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQJSVALUE(1))
    {
#endif
      RBOOL(obj->equals(*PQJSVALUE(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasOwnProperty(const QString &name) const
*/
HB_FUNC_STATIC(QJSVALUE_HASOWNPROPERTY)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->hasOwnProperty(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasProperty(const QString &name) const
*/
HB_FUNC_STATIC(QJSVALUE_HASPROPERTY)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->hasProperty(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isArray() const
*/
HB_FUNC_STATIC(QJSVALUE_ISARRAY)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isArray());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isBool() const
*/
HB_FUNC_STATIC(QJSVALUE_ISBOOL)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isBool());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isCallable() const
*/
HB_FUNC_STATIC(QJSVALUE_ISCALLABLE)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isCallable());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDate() const
*/
HB_FUNC_STATIC(QJSVALUE_ISDATE)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isDate());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isError() const
*/
HB_FUNC_STATIC(QJSVALUE_ISERROR)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isError());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QJSVALUE_ISNULL)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNumber() const
*/
HB_FUNC_STATIC(QJSVALUE_ISNUMBER)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNumber());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC(QJSVALUE_ISOBJECT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isObject());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isQObject() const
*/
HB_FUNC_STATIC(QJSVALUE_ISQOBJECT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isQObject());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isRegExp() const
*/
HB_FUNC_STATIC(QJSVALUE_ISREGEXP)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isRegExp());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isString() const
*/
HB_FUNC_STATIC(QJSVALUE_ISSTRING)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isString());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isUndefined() const
*/
HB_FUNC_STATIC(QJSVALUE_ISUNDEFINED)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isUndefined());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isVariant() const
*/
HB_FUNC_STATIC(QJSVALUE_ISVARIANT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isVariant());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QJSVALUE_PROPERTY)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QJSValue property(const QString &name) const
    */
    auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QJSValue(obj->property(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QJSVALUE", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QJSValue property(quint32 arrayIndex) const
    */
    auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QJSValue(obj->property(PQUINT32(1)));
      Qt5xHb::createReturnClass(ptr, "QJSVALUE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QJSValue prototype() const
*/
HB_FUNC_STATIC(QJSVALUE_PROTOTYPE)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QJSValue(obj->prototype());
      Qt5xHb::createReturnClass(ptr, "QJSVALUE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QJSVALUE_SETPROPERTY)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQJSVALUE(2))
  {
    /*
    void setProperty(const QString &name, const QJSValue &value)
    */
    auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setProperty(PQSTRING(1), *PQJSVALUE(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && ISQJSVALUE(2))
  {
    /*
    void setProperty(quint32 arrayIndex, const QJSValue &value)
    */
    auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setProperty(PQUINT32(1), *PQJSVALUE(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPrototype(const QJSValue &prototype)
*/
HB_FUNC_STATIC(QJSVALUE_SETPROTOTYPE)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQJSVALUE(1))
    {
#endif
      obj->setPrototype(*PQJSVALUE(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool strictlyEquals(const QJSValue &other) const
*/
HB_FUNC_STATIC(QJSVALUE_STRICTLYEQUALS)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQJSVALUE(1))
    {
#endif
      RBOOL(obj->strictlyEquals(*PQJSVALUE(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool toBool() const
*/
HB_FUNC_STATIC(QJSVALUE_TOBOOL)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->toBool());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC(QJSVALUE_TODATETIME)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDateTime(obj->toDateTime());
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint32 toInt() const
*/
HB_FUNC_STATIC(QJSVALUE_TOINT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT32(obj->toInt());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
double toNumber() const
*/
HB_FUNC_STATIC(QJSVALUE_TONUMBER)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RDOUBLE(obj->toNumber());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QObject * toQObject() const
*/
HB_FUNC_STATIC(QJSVALUE_TOQOBJECT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->toQObject();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC(QJSVALUE_TOSTRING)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toString());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
quint32 toUInt() const
*/
HB_FUNC_STATIC(QJSVALUE_TOUINT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT32(obj->toUInt());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVariant toVariant() const
*/
HB_FUNC_STATIC(QJSVALUE_TOVARIANT)
{
  auto obj = static_cast<QJSValue *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVariant(obj->toVariant());
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QJSVALUE_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QJSVALUE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QJSVALUE_NEWFROM);
}

HB_FUNC_STATIC(QJSVALUE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QJSVALUE_NEWFROM);
}

HB_FUNC_STATIC(QJSVALUE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QJSVALUE_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
