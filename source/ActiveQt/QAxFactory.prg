/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
REQUEST QOBJECT
REQUEST QUUID
#endif

CLASS QAxFactory INHERIT QObject

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxFactory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxFactory>
#endif

HB_FUNC_STATIC( QAXFACTORY_DELETE )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QUuid appID () const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUuid( obj->appID () );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
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
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QUuid( obj->classID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
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
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QObject * ptr = obj->createObject ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QUuid( obj->eventsID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
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
virtual QString exposeToSuperClass ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->exposeToSuperClass ( PQSTRING(1) ) );
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
virtual QStringList featureList () const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->featureList () );
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
virtual bool hasStockEvents ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasStockEvents ( PQSTRING(1) ) );
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
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QUuid( obj->interfaceID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
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
virtual bool isService () const
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isService () );
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
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      const QMetaObject * ptr = obj->metaObject ( PQSTRING(1) );
      _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT", false );
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
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISQSETTINGS(2) )
    {
#endif
      obj->registerClass ( PQSTRING(1), PQSETTINGS(2) );
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
virtual bool stayTopLevel ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->stayTopLevel ( PQSTRING(1) ) );
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
virtual QUuid typeLibID () const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUuid( obj->typeLibID () );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
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
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISQSETTINGS(2) )
    {
#endif
      obj->unregisterClass ( PQSTRING(1), PQSETTINGS(2) );
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
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC_STATIC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      RBOOL( obj->validateLicenseKey ( PQSTRING(1), PQSTRING(2) ) );
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
static bool isServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RBOOL( QAxFactory::isServer () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool registerActiveObject ( QObject * object )
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
      RBOOL( QAxFactory::registerActiveObject ( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString serverDirPath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERDIRPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RQSTRING( QAxFactory::serverDirPath () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString serverFilePath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERFILEPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RQSTRING( QAxFactory::serverFilePath () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
#endif
      RBOOL( QAxFactory::startServer ( ISNIL(1)? (QAxFactory::ServerType) QAxFactory::MultipleInstances : (QAxFactory::ServerType) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool stopServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_STOPSERVER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RBOOL( QAxFactory::stopServer () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
