/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject() CLASS QDBusConnectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

/*
void serviceRegistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEREGISTERED )
{
  auto sender = (QDBusConnectionInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("serviceRegistered(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceRegistered, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
  auto sender = (QDBusConnectionInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("serviceUnregistered(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceUnregistered, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
  auto sender = (QDBusConnectionInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("serviceOwnerChanged(QString,QString,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceOwnerChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1, const QString & arg2, const QString & arg3) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
  auto sender = (QDBusConnectionInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("callWithCallbackFailed(QDBusError,QDBusMessage)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::callWithCallbackFailed, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QDBusError & arg1, const QDBusMessage & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QDBUSERROR" );
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_object( (void *) &arg2, "QDBUSMESSAGE" );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
