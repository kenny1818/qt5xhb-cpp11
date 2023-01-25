/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaMethod

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD typeName
   METHOD parameterTypes
   METHOD parameterNames
   METHOD tag
   METHOD access
   METHOD methodType
   METHOD attributes
   METHOD methodIndex
   METHOD revision
   METHOD enclosingMetaObject
   METHOD invoke
   METHOD methodSignature
   METHOD name
   METHOD returnType
   METHOD parameterCount
   METHOD parameterType
   METHOD getParameterTypes
   METHOD isValid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMetaMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QMetaMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QMetaMethod>
#endif

/*
QMetaMethod()
*/
HB_FUNC_STATIC( QMETAMETHOD_NEW )
{
  if( ISNUMPAR(0) )
  {
    auto obj = new QMetaMethod();
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMETAMETHOD_DELETE )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
const char * typeName() const
*/
HB_FUNC_STATIC( QMETAMETHOD_TYPENAME )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( static_cast< const char*>( obj->typeName() ) );
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
QList<QByteArray> parameterTypes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPES )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QByteArray> list = obj->parameterTypes();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBYTEARRAY");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
QList<QByteArray> parameterNames() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERNAMES )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QByteArray> list = obj->parameterNames();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBYTEARRAY");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
const char * tag() const
*/
HB_FUNC_STATIC( QMETAMETHOD_TAG )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( static_cast< const char*>( obj->tag() ) );
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
QMetaMethod::Access access() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ACCESS )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->access() );
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
QMetaMethod::MethodType methodType() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODTYPE )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->methodType() );
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
int attributes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ATTRIBUTES )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->attributes() );
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
int methodIndex() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODINDEX )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->methodIndex() );
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
int revision() const
*/
HB_FUNC_STATIC( QMETAMETHOD_REVISION )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->revision() );
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
const QMetaObject * enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ENCLOSINGMETAOBJECT )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMetaObject * ptr = obj->enclosingMetaObject();
      Qt5xHb::createReturnClass(ptr, "QMETAOBJECT", false);
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
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
*/

/*
bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
*/

/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
*/

/*
bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
*/

/*
[1]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
[2]bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
[3]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
[4]bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument( 0 ),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument() ) const
*/

HB_FUNC_STATIC( QMETAMETHOD_INVOKE )
{
  hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
}

/*
QByteArray methodSignature() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODSIGNATURE )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->methodSignature() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray name() const
*/
HB_FUNC_STATIC( QMETAMETHOD_NAME )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->name() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
int returnType() const
*/
HB_FUNC_STATIC( QMETAMETHOD_RETURNTYPE )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->returnType() );
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
int parameterCount() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERCOUNT )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->parameterCount() );
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
int parameterType( int index ) const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPE )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->parameterType( PINT(1) ) );
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
void getParameterTypes( int * types ) const
*/
HB_FUNC_STATIC( QMETAMETHOD_GETPARAMETERTYPES )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      int par1;
      obj->getParameterTypes( &par1 );
      hb_storni( par1, 1 );
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
bool isValid() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ISVALID )
{
  auto obj = static_cast<QMetaMethod*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMETAMETHOD_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QMETAMETHOD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAMETHOD_NEWFROM );
}

HB_FUNC_STATIC( QMETAMETHOD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAMETHOD_NEWFROM );
}

HB_FUNC_STATIC( QMETAMETHOD_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMETAMETHOD_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
