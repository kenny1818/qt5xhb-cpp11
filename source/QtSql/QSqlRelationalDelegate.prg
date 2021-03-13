/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setModelData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlRelationalDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlRelationalDelegate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtSql/QSqlRelationalDelegate>
#endif

/*
QSqlRelationalDelegate( QObject * aParent = nullptr )
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    auto obj = new QSqlRelationalDelegate( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_DELETE )
{
  auto obj = (QSqlRelationalDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

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
QWidget * createEditor( QWidget * aParent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_CREATEEDITOR )
{
  auto obj = (QSqlRelationalDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      QWidget * ptr = obj->createEditor( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_SETMODELDATA )
{
  auto obj = (QSqlRelationalDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQWIDGET(1) && ISQABSTRACTITEMMODEL(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->setModelData( PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3) );
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

#pragma ENDDUMP
