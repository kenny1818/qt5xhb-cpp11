/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QURL
#endif

CLASS QQmlComponent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD progress
   METHOD status
   METHOD url
   METHOD loadUrl
   METHOD setData

   METHOD onProgressChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QQmlComponent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtQml/QQmlComponent>
#endif

#include <QtQml/QQmlContext>

/*
QQmlComponent( QQmlEngine * engine, QObject * parent = nullptr )
*/
void QQmlComponent_new1()
{
  auto obj = new QQmlComponent( PQQMLENGINE(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QQmlComponent( QQmlEngine * engine, const QString & fileName, QObject * parent = nullptr )
*/
void QQmlComponent_new2()
{
  auto obj = new QQmlComponent( PQQMLENGINE(1), PQSTRING(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QQmlComponent( QQmlEngine * engine, const QString & fileName, QQmlComponent::CompilationMode mode, QObject * parent = nullptr )
*/
void QQmlComponent_new3()
{
  auto obj = new QQmlComponent( PQQMLENGINE(1), PQSTRING(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QQmlComponent( QQmlEngine * engine, const QUrl & url, QObject * parent = nullptr )
*/
void QQmlComponent_new4()
{
  auto obj = new QQmlComponent( PQQMLENGINE(1), *PQURL(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QQmlComponent( QQmlEngine * engine, const QUrl & url, QQmlComponent::CompilationMode mode, QObject * parent = nullptr )
*/
void QQmlComponent_new5()
{
  auto obj = new QQmlComponent( PQQMLENGINE(1), *PQURL(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QQmlComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && HB_ISCHAR(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    QQmlComponent_new2();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && HB_ISCHAR(2) && HB_ISNUM(3) && (ISQOBJECT(4)||HB_ISNIL(4)) )
  {
    QQmlComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    QQmlComponent_new4();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && HB_ISNUM(3) && (ISQOBJECT(4)||HB_ISNIL(4)) )
  {
    QQmlComponent_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLCOMPONENT_DELETE )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QObject * beginCreate( QQmlContext * publicContext )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_BEGINCREATE )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQQMLCONTEXT(1) )
    {
#endif
      QObject * ptr = obj->beginCreate( PQQMLCONTEXT(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void completeCreate()
*/
HB_FUNC_STATIC( QQMLCOMPONENT_COMPLETECREATE )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->completeCreate();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QObject * create( QQmlContext * context = nullptr )
*/
void QQmlComponent_create1()
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QObject * ptr = obj->create( OPQQMLCONTEXT(1,nullptr) );
    Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
  }
}

/*
void create( QQmlIncubator & incubator, QQmlContext * context = nullptr, QQmlContext * forContext = nullptr )
*/
void QQmlComponent_create2()
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->create( *PQQMLINCUBATOR(1), OPQQMLCONTEXT(2,nullptr), OPQQMLCONTEXT(3,nullptr) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||HB_ISNIL(1)) )
  {
    QQmlComponent_create1();
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||HB_ISNIL(2)) && (ISQQMLCONTEXT(3)||HB_ISNIL(3)) )
  {
    QQmlComponent_create2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QQmlContext * creationContext() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATIONCONTEXT )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->creationContext();
      Qt5xHb::createReturnQObjectClass( ptr, "QQMLCONTEXT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISERROR )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isError() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISLOADING )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLoading() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISNULL )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISREADY )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReady() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal progress() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_PROGRESS )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->progress() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QQmlComponent::Status status() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_STATUS )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_URL )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void loadUrl( const QUrl & url )
*/
void QQmlComponent_loadUrl1()
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->loadUrl( *PQURL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadUrl( const QUrl & url, QQmlComponent::CompilationMode mode )
*/
void QQmlComponent_loadUrl2()
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->loadUrl( *PQURL(1), (QQmlComponent::CompilationMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlComponent_loadUrl1();
  }
  else if( ISNUMPAR(2) && ISQURL(1) && HB_ISNUM(2) )
  {
    QQmlComponent_loadUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setData( const QByteArray & data, const QUrl & url )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_SETDATA )
{
  auto obj = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQURL(2) )
    {
#endif
      obj->setData( *PQBYTEARRAY(1), *PQURL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void progressChanged( qreal progress )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ONPROGRESSCHANGED )
{
  auto sender = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("progressChanged(qreal)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQmlComponent::progressChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (qreal arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QQMLCOMPONENT" );
            PHB_ITEM pArg1 = hb_itemPutND( nullptr, arg1 );
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
void statusChanged( QQmlComponent::Status status )
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ONSTATUSCHANGED )
{
  auto sender = (QQmlComponent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("statusChanged(QQmlComponent::Status)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQmlComponent::statusChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QQmlComponent::Status arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QQMLCOMPONENT" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
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

#pragma ENDDUMP
