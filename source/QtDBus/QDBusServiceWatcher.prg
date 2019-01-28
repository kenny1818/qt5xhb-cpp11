/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
#endif

CLASS QDBusServiceWatcher INHERIT QObject

   METHOD new
   METHOD delete
   METHOD watchedServices
   METHOD setWatchedServices
   METHOD addWatchedService
   METHOD removeWatchedService
   METHOD watchMode
   METHOD setWatchMode
   METHOD connection
   METHOD setConnection

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusServiceWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusServiceWatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QDBusServiceWatcher>
#endif

#include <QDBusConnection>

/*
explicit QDBusServiceWatcher(QObject *parent = nullptr)
*/
void QDBusServiceWatcher_new1 ()
{
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = nullptr)
*/
void QDBusServiceWatcher_new2 ()
{
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( PQSTRING(1), *PQDBUSCONNECTION(2), ISNIL(3)? (QDBusServiceWatcher::WatchMode) QDBusServiceWatcher::WatchForOwnerChange : (QDBusServiceWatcher::WatchMode) hb_parni(3), OPQOBJECT(4,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QDBusServiceWatcher(QObject *parent = nullptr)
//[2]QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = nullptr)

HB_FUNC( QDBUSSERVICEWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDBusServiceWatcher_new1();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISQDBUSCONNECTION(2) && ISOPTNUM(3) && ISOPTQOBJECT(4) )
  {
    QDBusServiceWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_DELETE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

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
QStringList watchedServices() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_WATCHEDSERVICES )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->watchedServices () );
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
void setWatchedServices(const QStringList &services)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETWATCHEDSERVICES )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setWatchedServices ( PQSTRINGLIST(1) );
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
void addWatchedService(const QString &newService)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ADDWATCHEDSERVICE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->addWatchedService ( PQSTRING(1) );
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
bool removeWatchedService(const QString &service)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_REMOVEWATCHEDSERVICE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->removeWatchedService ( PQSTRING(1) ) );
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
WatchMode watchMode() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_WATCHMODE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->watchMode () );
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
void setWatchMode(WatchMode mode)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETWATCHMODE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setWatchMode ( (QDBusServiceWatcher::WatchMode) hb_parni(1) );
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
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_CONNECTION )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusConnection * ptr = new QDBusConnection( obj->connection () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
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
void setConnection(const QDBusConnection &connection)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETCONNECTION )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDBUSCONNECTION(1) )
    {
#endif
      obj->setConnection ( *PQDBUSCONNECTION(1) );
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
void serviceRegistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEREGISTERED )
{
  QDBusServiceWatcher * sender = (QDBusServiceWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "serviceRegistered(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusServiceWatcher::serviceRegistered, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceRegistered(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSSERVICEWATCHER" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "serviceRegistered(QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "serviceRegistered(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "serviceRegistered(QString)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void serviceUnregistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEUNREGISTERED )
{
  QDBusServiceWatcher * sender = (QDBusServiceWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "serviceUnregistered(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusServiceWatcher::serviceUnregistered, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceUnregistered(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSSERVICEWATCHER" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "serviceUnregistered(QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "serviceUnregistered(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "serviceUnregistered(QString)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner )
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEOWNERCHANGED )
{
  QDBusServiceWatcher * sender = (QDBusServiceWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "serviceOwnerChanged(QString,QString,QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusServiceWatcher::serviceOwnerChanged, 
                                                              [sender]
                                                              (const QString & arg1, const QString & arg2, const QString & arg3) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceOwnerChanged(QString,QString,QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSSERVICEWATCHER" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Signals2_store_connection( sender, "serviceOwnerChanged(QString,QString,QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "serviceOwnerChanged(QString,QString,QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "serviceOwnerChanged(QString,QString,QString)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
