/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD delete
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesktopWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QDesktopWidget>
#endif

HB_FUNC_STATIC( QDESKTOPWIDGET_DELETE )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
const QRect availableGeometry ( int screen = -1 ) const
*/
void QDesktopWidget_availableGeometry1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->availableGeometry ( OPINT(1,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QWidget * widget ) const
*/
void QDesktopWidget_availableGeometry2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->availableGeometry ( PQWIDGET(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QPoint & p ) const
*/
void QDesktopWidget_availableGeometry3 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->availableGeometry ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]const QRect availableGeometry ( int screen = -1 ) const
//[2]const QRect availableGeometry ( const QWidget * widget ) const
//[3]const QRect availableGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_availableGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_availableGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_availableGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isVirtualDesktop () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ISVIRTUALDESKTOP )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVirtualDesktop () );
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
int primaryScreen () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_PRIMARYSCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->primaryScreen () );
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
QWidget * screen ( int screen = -1 )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QWidget * ptr = obj->screen ( OPINT(1,-1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
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
int screenCount () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENCOUNT )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->screenCount () );
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
const QRect screenGeometry ( int screen = -1 ) const
*/
void QDesktopWidget_screenGeometry1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->screenGeometry ( OPINT(1,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QWidget * widget ) const
*/
void QDesktopWidget_screenGeometry2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->screenGeometry ( PQWIDGET(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QPoint & p ) const
*/
void QDesktopWidget_screenGeometry3 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QRect * ptr = new QRect( obj->screenGeometry ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]const QRect screenGeometry ( int screen = -1 ) const
//[2]const QRect screenGeometry ( const QWidget * widget ) const
//[3]const QRect screenGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_screenGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_screenGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int screenNumber ( const QWidget * widget = 0 ) const
*/
void QDesktopWidget_screenNumber1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->screenNumber ( OPQWIDGET(1,0) ) );
  }
}

/*
int screenNumber ( const QPoint & point ) const
*/
void QDesktopWidget_screenNumber2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->screenNumber ( *PQPOINT(1) ) );
  }
}

//[1]int screenNumber ( const QWidget * widget = 0 ) const
//[2]int screenNumber ( const QPoint & point ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDesktopWidget_screenNumber1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenNumber2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resized( int screen )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONRESIZED )
{
  if( hb_pcount() == 1 )
  {
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "resized(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QDesktopWidget::resized, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "resized(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "resized(int)", connection );

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
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "resized(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "resized(int)" ) );

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
void screenCountChanged( int newCount )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONSCREENCOUNTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "screenCountChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QDesktopWidget::screenCountChanged, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "screenCountChanged(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "screenCountChanged(int)", connection );

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
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "screenCountChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "screenCountChanged(int)" ) );

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
void workAreaResized( int screen )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ONWORKAREARESIZED )
{
  if( hb_pcount() == 1 )
  {
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "workAreaResized(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QDesktopWidget::workAreaResized, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "workAreaResized(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QDESKTOPWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "workAreaResized(int)", connection );

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
    QDesktopWidget * sender = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "workAreaResized(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "workAreaResized(int)" ) );

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
