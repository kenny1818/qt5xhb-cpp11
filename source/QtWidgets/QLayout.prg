/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QMARGINS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

   METHOD delete
   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD menuBar
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD expandingDirections
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD closestAcceptableSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QLayout>
#endif

HB_FUNC_STATIC( QLAYOUT_DELETE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
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
bool activate ()
*/
HB_FUNC_STATIC( QLAYOUT_ACTIVATE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->activate() );
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
virtual void addItem ( QLayoutItem * item ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_ADDITEM )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLAYOUTITEM(1) )
    {
#endif
      obj->addItem( PQLAYOUTITEM(1) );
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
void addWidget ( QWidget * w )
*/
HB_FUNC_STATIC( QLAYOUT_ADDWIDGET )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->addWidget( PQWIDGET(1) );
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
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSMARGINS )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QMargins( obj->contentsMargins() );
      Qt5xHb::createReturnClass( ptr, "QMARGINS", true );
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
QRect contentsRect () const
*/
HB_FUNC_STATIC( QLAYOUT_CONTENTSRECT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->contentsRect() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
virtual int count () const = 0
*/
HB_FUNC_STATIC( QLAYOUT_COUNT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
virtual int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QLAYOUT_INDEXOF )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      RINT( obj->indexOf( PQWIDGET(1) ) );
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
bool isEnabled () const
*/
HB_FUNC_STATIC( QLAYOUT_ISENABLED )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEnabled() );
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
virtual QLayoutItem * itemAt ( int index ) const = 0
*/
HB_FUNC_STATIC( QLAYOUT_ITEMAT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QLayoutItem * ptr = obj->itemAt( PINT(1) );
      Qt5xHb::createReturnClass( ptr, "QLAYOUTITEM", false );
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
QWidget * menuBar () const
*/
HB_FUNC_STATIC( QLAYOUT_MENUBAR )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->menuBar();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QLAYOUT_PARENTWIDGET )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->parentWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void removeItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEITEM )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLAYOUTITEM(1) )
    {
#endif
      obj->removeItem( PQLAYOUTITEM(1) );
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
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_REMOVEWIDGET )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->removeWidget( PQWIDGET(1) );
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
bool setAlignment ( QWidget * w, Qt::Alignment alignment )
*/
void QLayout_setAlignment1()
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->setAlignment( PQWIDGET(1), (Qt::Alignment) hb_parni(2) ) );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
void QLayout_setAlignment2()
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setAlignment( (Qt::Alignment) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/
void QLayout_setAlignment3()
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->setAlignment( PQLAYOUT(1), (Qt::Alignment) hb_parni(2) ) );
  }
}

/*
[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
[2]void setAlignment ( Qt::Alignment alignment )
[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QLayout_setAlignment1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLayout_setAlignment2();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QLayout_setAlignment3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
void QLayout_setContentsMargins1()
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setContentsMargins( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
void QLayout_setContentsMargins2()
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setContentsMargins( *PQMARGINS(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setContentsMargins ( int left, int top, int right, int bottom )
[2]void setContentsMargins ( const QMargins & margins )
*/

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLayout_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLayout_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QLAYOUT_SETENABLED )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setEnabled( PBOOL(1) );
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
void setMenuBar ( QWidget * widget )
*/
HB_FUNC_STATIC( QLAYOUT_SETMENUBAR )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setMenuBar( PQWIDGET(1) );
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
void setSizeConstraint ( SizeConstraint )
*/
HB_FUNC_STATIC( QLAYOUT_SETSIZECONSTRAINT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSizeConstraint( (QLayout::SizeConstraint) hb_parni(1) );
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
void setSpacing ( int )
*/
HB_FUNC_STATIC( QLAYOUT_SETSPACING )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSpacing( PINT(1) );
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
SizeConstraint sizeConstraint () const
*/
HB_FUNC_STATIC( QLAYOUT_SIZECONSTRAINT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sizeConstraint() );
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
int spacing () const
*/
HB_FUNC_STATIC( QLAYOUT_SPACING )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->spacing() );
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
virtual QLayoutItem * takeAt ( int index ) = 0
*/
HB_FUNC_STATIC( QLAYOUT_TAKEAT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QLayoutItem * ptr = obj->takeAt( PINT(1) );
      Qt5xHb::createReturnClass( ptr, "QLAYOUTITEM", false );
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
void update ()
*/
HB_FUNC_STATIC( QLAYOUT_UPDATE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->update();
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
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QLAYOUT_EXPANDINGDIRECTIONS )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->expandingDirections() );
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
virtual QRect geometry () const
*/
HB_FUNC_STATIC( QLAYOUT_GEOMETRY )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->geometry() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
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
virtual void invalidate ()
*/
HB_FUNC_STATIC( QLAYOUT_INVALIDATE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate();
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
virtual bool isEmpty () const
*/
HB_FUNC_STATIC( QLAYOUT_ISEMPTY )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
virtual QLayout * layout ()
*/
HB_FUNC_STATIC( QLAYOUT_LAYOUT )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLayout * ptr = obj->layout();
      Qt5xHb::createReturnQObjectClass( ptr, "QLAYOUT" );
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
virtual QSize maximumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MAXIMUMSIZE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->maximumSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QLAYOUT_MINIMUMSIZE )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->minimumSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual void setGeometry ( const QRect & r )
*/
HB_FUNC_STATIC( QLAYOUT_SETGEOMETRY )
{
  auto obj = (QLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setGeometry( *PQRECT(1) );
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
static QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
*/
HB_FUNC_STATIC( QLAYOUT_CLOSESTACCEPTABLESIZE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQSIZE(2) )
  {
#endif
    auto ptr = new QSize( QLayout::closestAcceptableSize( PQWIDGET(1), *PQSIZE(2) ) );
    Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
