/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QScrollEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD contentPos
   METHOD overshootDistance
   METHOD scrollState

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QScrollEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QScrollEvent>
#endif

/*
QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
*/
HB_FUNC_STATIC( QSCROLLEVENT_NEW )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    auto obj = new QScrollEvent ( *PQPOINTF(1), *PQPOINTF(2), (QScrollEvent::ScrollState) hb_parni(3) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCROLLEVENT_DELETE )
{
  auto obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_CONTENTPOS )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->contentPos () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
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
QPointF overshootDistance() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_OVERSHOOTDISTANCE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->overshootDistance () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
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
ScrollState scrollState() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_SCROLLSTATE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->scrollState () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
