/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD lastError
   METHOD address

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QDBusServer>
#endif

#include <QDBusError>

/*
QDBusServer(const QString &address, QObject *parent = 0)
*/
void QDBusServer_new1 ()
{
  QDBusServer * o = new QDBusServer ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDBusServer(QObject *parent = 0)
*/
void QDBusServer_new2 ()
{
  QDBusServer * o = new QDBusServer ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QDBusServer(const QString &address, QObject *parent = 0)
//[2]QDBusServer(QObject *parent = 0)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSSERVER_DELETE )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ISCONNECTED )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnected () );
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
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSSERVER_LASTERROR )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDBusError * ptr = new QDBusError( obj->lastError () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSERROR", true );
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
QString address() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ADDRESS )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->address () );
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
void newConnection( const QDBusConnection & connection )
*/
HB_FUNC_STATIC( QDBUSSERVER_ONNEWCONNECTION )
{
  if( hb_pcount() == 1 )
  {
    QDBusServer * sender = (QDBusServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "newConnection(QDBusConnection)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusServer::newConnection, 
                                                              [sender]
                                                              (const QDBusConnection & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "newConnection(QDBusConnection)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDBUSSERVER" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QDBUSCONNECTION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "newConnection(QDBusConnection)", connection );

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
    QDBusServer * sender = (QDBusServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "newConnection(QDBusConnection)" );

      QObject::disconnect( Signals2_get_connection( sender, "newConnection(QDBusConnection)" ) );

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
