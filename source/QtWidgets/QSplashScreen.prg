/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS QSplashScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSplashScreen>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QSplashScreen>
#endif

/*
QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new1 ()
{
  QSplashScreen * o = new QSplashScreen ( ISNIL(1)? QPixmap() : *(QPixmap *) _qt5xhb_itemGetPtr(1), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new2 ()
{
  QSplashScreen * o = new QSplashScreen ( PQWIDGET(1), ISNIL(2)? QPixmap() : *(QPixmap *) _qt5xhb_itemGetPtr(2), ISNIL(3)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(3) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
//[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSPLASHSCREEN_DELETE )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

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
void finish ( QWidget * mainWin )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_FINISH )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->finish ( PQWIDGET(1) );
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
const QPixmap pixmap () const
*/
HB_FUNC_STATIC( QSPLASHSCREEN_PIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap () );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SETPIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setPixmap ( *PQPIXMAP(1) );
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
void repaint ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_REPAINT )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->repaint ();
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
void clearMessage ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_CLEARMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMessage ();
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
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SHOWMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && (ISQCOLOR(3)||ISNIL(3)) )
    {
#endif
      obj->showMessage ( PQSTRING(1), OPINT(2,Qt::AlignLeft), ISNIL(3)? Qt::black : *(QColor *) _qt5xhb_itemGetPtr(3) );
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
void messageChanged( const QString & message )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_ONMESSAGECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QSplashScreen * sender = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "messageChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSplashScreen::messageChanged, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "messageChanged(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSPLASHSCREEN" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "messageChanged(QString)", connection );

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
    QSplashScreen * sender = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "messageChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "messageChanged(QString)" ) );

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
