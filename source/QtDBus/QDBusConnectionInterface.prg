/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged
   METHOD onCallWithCallbackFailed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusConnectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusConnectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QDBusConnectionInterface>
#endif

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent) [private]
*/

/*
QDBusReply<QStringList> registeredServiceNames() const
*/

/*
QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
*/

/*
QDBusReply<QString> serviceOwner(const QString &name) const
*/

/*
QDBusReply<bool> unregisterService(const QString &serviceName)
*/

/*
QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
*/

/*
QDBusReply<uint> servicePid(const QString &serviceName) const
*/

/*
QDBusReply<uint> serviceUid(const QString &serviceName) const
*/

/*
QDBusReply<void> startService(const QString &name)
*/

/*
void serviceRegistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEREGISTERED )
{
  if( hb_pcount() == 1 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "serviceRegistered(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceRegistered, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceRegistered(QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
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
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
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
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEUNREGISTERED )
{
  if( hb_pcount() == 1 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "serviceUnregistered(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceUnregistered, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceUnregistered(QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
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
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
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
void serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEOWNERCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "serviceOwnerChanged(QString,QString,QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceOwnerChanged, 
                                                              [sender]
                                                              (const QString & arg1, const QString & arg2, const QString & arg3) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "serviceOwnerChanged(QString,QString,QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
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
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
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

/*
void callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONCALLWITHCALLBACKFAILED )
{
  if( hb_pcount() == 1 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "callWithCallbackFailed(QDBusError,QDBusMessage)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::callWithCallbackFailed, 
                                                              [sender]
                                                              (const QDBusError & arg1, const QDBusMessage & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "callWithCallbackFailed(QDBusError,QDBusMessage)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QDBUSERROR" );
            PHB_ITEM pArg2 = Signals2_return_object( (void *) &arg2, "QDBUSMESSAGE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "callWithCallbackFailed(QDBusError,QDBusMessage)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "callWithCallbackFailed(QDBusError,QDBusMessage)" );

      QObject::disconnect( Signals2_get_connection( sender, "callWithCallbackFailed(QDBusError,QDBusMessage)" ) );

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
