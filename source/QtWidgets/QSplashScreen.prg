/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD setPixmap
   METHOD repaint
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSplashScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QSplashScreen>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QSplashScreen>
#endif

/*
QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new1()
{
  auto obj = new QSplashScreen( ISNIL(1)? QPixmap() : *(QPixmap *) Qt5xHb::itemGetPtr(1), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new2()
{
  auto obj = new QSplashScreen( PQWIDGET(1), ISNIL(2)? QPixmap() : *(QPixmap *) Qt5xHb::itemGetPtr(2), ISNIL(3)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QSplashScreen_new1();
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QSplashScreen_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSPLASHSCREEN_DELETE )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

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
void finish ( QWidget * mainWin )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_FINISH )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->finish( PQWIDGET(1) );
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
const QPixmap pixmap () const
*/
HB_FUNC_STATIC( QSPLASHSCREEN_PIXMAP )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPixmap( obj->pixmap() );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SETPIXMAP )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setPixmap( *PQPIXMAP(1) );
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
void repaint ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_REPAINT )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->repaint();
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
void clearMessage ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_CLEARMESSAGE )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMessage();
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
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SHOWMESSAGE )
{
  auto obj = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && (ISQCOLOR(3)||ISNIL(3)) )
    {
#endif
      obj->showMessage( PQSTRING(1), OPINT(2,Qt::AlignLeft), ISNIL(3)? Qt::black : *(QColor *) Qt5xHb::itemGetPtr(3) );
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
void messageChanged( const QString & message )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_ONMESSAGECHANGED )
{
  auto sender = (QSplashScreen *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("messageChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSplashScreen::messageChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QSPLASHSCREEN" );
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

#pragma ENDDUMP
