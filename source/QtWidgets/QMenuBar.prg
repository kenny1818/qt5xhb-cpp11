/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QMenuBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD setDefaultUp
   METHOD isNativeMenuBar
   METHOD setNativeMenuBar
   METHOD setActiveAction
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible
   METHOD actionGeometry
   METHOD actionAt
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD setDefaultAction
   METHOD defaultAction
   METHOD wceCommands
   METHOD wceRefresh
   METHOD toNSMenu

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenuBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMenuBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QMenuBar>
#endif

/*
explicit QMenuBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QMenuBar * o = new QMenuBar ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMENUBAR_DELETE )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

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
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->activeAction ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
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
QAction * addAction ( const QString & text )
*/
void QMenuBar_addAction1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QAction * ptr = obj->addAction ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
void QMenuBar_addAction2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QAction * ptr = obj->addAction ( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
void QMenuBar_addAction3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addAction ( PQACTION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addAction1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QMenuBar_addAction2();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenuBar_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
void QMenuBar_addMenu1 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QAction * ptr = obj->addMenu ( PQMENU(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
void QMenuBar_addMenu2 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QMenu * ptr = obj->addMenu ( PQSTRING(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
void QMenuBar_addMenu3 ()
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QMenu * ptr = obj->addMenu ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenuBar_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenuBar_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenuBar_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENUBAR_ADDSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
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
void clear ()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQMENU(2) )
    {
#endif
      QAction * ptr = obj->insertMenu ( PQACTION(1), PQMENU(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
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
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator ( PQACTION(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
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
bool isDefaultUp () const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDefaultUp () );
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
void setDefaultUp ( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setDefaultUp ( PBOOL(1) );
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
bool isNativeMenuBar () const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNativeMenuBar () );
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
void setNativeMenuBar ( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setNativeMenuBar ( PBOOL(1) );
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
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setActiveAction ( PQACTION(1) );
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
int heightForWidth ( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->heightForWidth ( PINT(1) ) );
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
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible ( PBOOL(1) );
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
QRect actionGeometry(QAction *) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONGEOMETRY )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QRect * ptr = new QRect( obj->actionGeometry ( PQACTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
QAction *actionAt(const QPoint &) const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIONAT )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QAction * ptr = obj->actionAt ( *PQPOINT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
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
QWidget *cornerWidget(Qt::Corner corner = Qt::TopRightCorner) const
*/
HB_FUNC_STATIC( QMENUBAR_CORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QWidget * ptr = obj->cornerWidget ( ISNIL(1)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(1) );
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
void setCornerWidget(QWidget *w, Qt::Corner corner = Qt::TopRightCorner)
*/
HB_FUNC_STATIC( QMENUBAR_SETCORNERWIDGET )
{
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTNUM(2) )
    {
#endif
      obj->setCornerWidget ( PQWIDGET(1), ISNIL(2)? (Qt::Corner) Qt::TopRightCorner : (Qt::Corner) hb_parni(2) );
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
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setDefaultAction ( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENUBAR_DEFAULTACTION )
{
#ifdef Q_OS_WINCE
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->defaultAction ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static void wceCommands(uint command)
*/
HB_FUNC_STATIC( QMENUBAR_WCECOMMANDS )
{
#ifdef Q_OS_WINCE
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QMenuBar::wceCommands ( PUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static void wceRefresh()
*/
HB_FUNC_STATIC( QMENUBAR_WCEREFRESH )
{
#ifdef Q_OS_WINCE
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QMenuBar::wceRefresh ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
NSMenu * QMenuBar::toNSMenu()
*/
HB_FUNC_STATIC( QMENUBAR_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenuBar * obj = (QMenuBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (NSMenu *) obj->toNSMenu () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void hovered( QAction * action )
*/
HB_FUNC_STATIC( QMENUBAR_ONHOVERED )
{
  if( hb_pcount() == 1 )
  {
    QMenuBar * sender = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "hovered(QAction*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenuBar::hovered, 
                                                              [sender]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "hovered(QAction*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMENUBAR" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QACTION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "hovered(QAction*)", connection );

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
    QMenuBar * sender = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "hovered(QAction*)" );

      QObject::disconnect( Signals2_get_connection( sender, "hovered(QAction*)" ) );

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
void triggered( QAction * action )
*/
HB_FUNC_STATIC( QMENUBAR_ONTRIGGERED )
{
  if( hb_pcount() == 1 )
  {
    QMenuBar * sender = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "triggered(QAction*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenuBar::triggered, 
                                                              [sender]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "triggered(QAction*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QMENUBAR" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QACTION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "triggered(QAction*)", connection );

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
    QMenuBar * sender = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "triggered(QAction*)" );

      QObject::disconnect( Signals2_get_connection( sender, "triggered(QAction*)" ) );

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
