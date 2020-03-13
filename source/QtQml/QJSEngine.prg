/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD collectGarbage
   METHOD evaluate
   METHOD globalObject
   METHOD newArray
   METHOD newObject
   METHOD newQObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJSEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QJSEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtQml/QJSEngine>
#endif

/*
QJSEngine()
*/
void QJSEngine_new1 ()
{
  auto obj = new QJSEngine ();
  _qt5xhb_returnNewObject( obj, false );
}

/*
QJSEngine(QObject * parent)
*/
void QJSEngine_new2 ()
{
  auto obj = new QJSEngine ( PQOBJECT(1) );
  _qt5xhb_returnNewObject( obj, false );
}

//[1]QJSEngine()
//[2]QJSEngine(QObject * parent)

HB_FUNC_STATIC( QJSENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJSEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QJSEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSENGINE_DELETE )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void collectGarbage()
*/
HB_FUNC_STATIC( QJSENGINE_COLLECTGARBAGE )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->collectGarbage ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QJSValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
HB_FUNC_STATIC( QJSENGINE_EVALUATE )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
    {
#endif
      auto ptr = new QJSValue( obj->evaluate ( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJSValue globalObject() const
*/
HB_FUNC_STATIC( QJSENGINE_GLOBALOBJECT )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QJSValue( obj->globalObject () );
      _qt5xhb_createReturnClass ( ptr, "QJSVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJSValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QJSENGINE_NEWARRAY )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      auto ptr = new QJSValue( obj->newArray ( OPUINT(1,0) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJSValue newObject()
*/
HB_FUNC_STATIC( QJSENGINE_NEWOBJECT )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QJSValue( obj->newObject () );
      _qt5xhb_createReturnClass ( ptr, "QJSVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJSValue newQObject(QObject * object)
*/
HB_FUNC_STATIC( QJSENGINE_NEWQOBJECT )
{
  auto obj = (QJSEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      auto ptr = new QJSValue( obj->newQObject ( PQOBJECT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
