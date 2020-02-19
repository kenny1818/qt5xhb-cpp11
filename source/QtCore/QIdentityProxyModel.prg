/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMSELECTION
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD index
   METHOD mapFromSource
   METHOD mapToSource
   METHOD parent
   METHOD rowCount
   METHOD headerData
   METHOD dropMimeData
   METHOD sibling
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD match
   METHOD setSourceModel
   METHOD insertColumns
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIdentityProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QIdentityProxyModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtCore/QIdentityProxyModel>
#endif

#include <QtCore/QItemSelection>

/*
QIdentityProxyModel(QObject* parent = nullptr)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QIdentityProxyModel ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DELETE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
int columnCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_COLUMNCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
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
QModelIndex index(int row, int column, const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INDEX )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      auto ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
QModelIndex mapFromSource(const QModelIndex& sourceIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->mapFromSource ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
QModelIndex mapToSource(const QModelIndex& proxyIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->mapToSource ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
QModelIndex parent(const QModelIndex& child) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_PARENT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      auto ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
int rowCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_ROWCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
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
QVariant headerData(int section, Qt::Orientation orientation, int role) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_HEADERDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      auto ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), PINT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DROPMIMEDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData ( PQMIMEDATA(1), (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
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
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SIBLING )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
    {
#endif
      auto ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
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
QItemSelection mapSelectionFromSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTION(1) )
    {
#endif
      auto ptr = new QItemSelection( obj->mapSelectionFromSource ( *PQITEMSELECTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION", true );
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
QItemSelection mapSelectionToSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTION(1) )
    {
#endif
      auto ptr = new QItemSelection( obj->mapSelectionToSource ( *PQITEMSELECTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION", true );
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
QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,5) && ISQMODELINDEX(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) && ISOPTNUM(5) )
    {
#endif
      QModelIndexList list = obj->match ( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT(4,1), ISNIL(5)? (Qt::MatchFlags) Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap) : (Qt::MatchFlags) hb_parni(5) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
void setSourceModel(QAbstractItemModel* sourceModel)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SETSOURCEMODEL )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setSourceModel ( PQABSTRACTITEMMODEL(1) );
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
bool insertColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTCOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertColumns ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
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
bool insertRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertRows ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
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
bool removeColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVECOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeColumns ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
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
bool removeRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVEROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeRows ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
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
