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

CLASS QPolarChart INHERIT QChart

   METHOD new
   METHOD delete
   METHOD addAxis
   METHOD axisPolarOrientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPolarChart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPolarChart>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPolarChart>
#endif
#endif

using namespace QtCharts;

/*
QPolarChart( QGraphicsItem * parent = nullptr, Qt::WindowFlags wFlags = Qt::WindowFlags() )
*/
HB_FUNC_STATIC( QPOLARCHART_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN( 0, 2 ) && ( ISQGRAPHICSITEM( 1 ) || HB_ISNIL( 1 ) ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    auto obj = new QPolarChart( HB_ISNIL( 1 ) ? nullptr : static_cast< QGraphicsItem * >( Qt5xHb::itemGetPtr( 1 ) ), HB_ISNIL( 2 ) ? static_cast< Qt::WindowFlags >( Qt::WindowFlags() ) : static_cast< Qt::WindowFlags >( hb_parni( 2 ) ) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QPolarChart()
*/
HB_FUNC_STATIC( QPOLARCHART_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast< QPolarChart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

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
#endif
}

/*
void addAxis( QAbstractAxis * axis, QPolarChart::PolarOrientation polarOrientation)
*/
HB_FUNC_STATIC( QPOLARCHART_ADDAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast< QPolarChart * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQABSTRACTAXIS( 1 ) && HB_ISNUM( 2 ) )
    {
#endif
      obj->addAxis( PQABSTRACTAXIS( 1 ), static_cast<QPolarChart::PolarOrientation>( hb_parni( 2 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAbstractAxis*> axes(PolarOrientations polarOrientation = PolarOrientations(PolarOrientationRadial | PolarOrientationAngular), QAbstractSeries *series = nullptr) const
*/
/*
static QPolarChart::PolarOrientation axisPolarOrientation( QAbstractAxis * axis )
*/
HB_FUNC_STATIC( QPOLARCHART_AXISPOLARORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && ISQABSTRACTAXIS( 1 ) )
  {
#endif
    RENUM( QPolarChart::axisPolarOrientation( PQABSTRACTAXIS( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

#pragma ENDDUMP
