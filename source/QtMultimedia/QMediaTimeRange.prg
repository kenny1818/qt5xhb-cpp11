/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMEINTERVAL
#endif

CLASS QMediaTimeRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addInterval
   METHOD addTimeRange
   METHOD clear
   METHOD contains
   METHOD earliestTime
   METHOD intervals
   METHOD isContinuous
   METHOD isEmpty
   METHOD latestTime
   METHOD removeInterval
   METHOD removeTimeRange

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaTimeRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaTimeRange>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaTimeRange>
#endif

#include <QtCore/QList>

/*
QMediaTimeRange()
*/
void QMediaTimeRange_new1 ()
{
  QMediaTimeRange * o = new QMediaTimeRange ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaTimeRange(qint64 start, qint64 end)
*/
void QMediaTimeRange_new2 ()
{
  QMediaTimeRange * o = new QMediaTimeRange ( PQINT64(1), PQINT64(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaTimeRange(const QMediaTimeInterval & interval)
*/
void QMediaTimeRange_new3 ()
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMEINTERVAL(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaTimeRange(const QMediaTimeRange & range)
*/
void QMediaTimeRange_new4 ()
{
  QMediaTimeRange * o = new QMediaTimeRange ( *PQMEDIATIMERANGE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QMediaTimeRange()
//[2]QMediaTimeRange(qint64 start, qint64 end)
//[3]QMediaTimeRange(const QMediaTimeInterval & interval)
//[4]QMediaTimeRange(const QMediaTimeRange & range)

HB_FUNC_STATIC( QMEDIATIMERANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaTimeRange_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_new2();
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
  {
    QMediaTimeRange_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaTimeRange()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_DELETE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

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
void addInterval(const QMediaTimeInterval & interval)
*/
void QMediaTimeRange_addInterval1 ()
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addInterval ( *PQMEDIATIMEINTERVAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addInterval(qint64 start, qint64 end)
*/
void QMediaTimeRange_addInterval2 ()
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->addInterval ( PQINT64(1), PQINT64(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addInterval(const QMediaTimeInterval & interval)
//[2]void addInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_addInterval1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_addInterval2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ADDTIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
    {
#endif
      obj->addTimeRange ( *PQMEDIATIMERANGE(1) );
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
void clear()
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CLEAR )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_CONTAINS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->contains ( PQINT64(1) ) );
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
qint64 earliestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_EARLIESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->earliestTime () );
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
QList<QMediaTimeInterval> intervals() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_INTERVALS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QMediaTimeInterval> list = obj->intervals ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMEDIATIMEINTERVAL" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QMediaTimeInterval *) new QMediaTimeInterval ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMEDIATIMEINTERVAL", HB_ERR_ARGS_BASEPARAMS );
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
bool isContinuous() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISCONTINUOUS )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isContinuous () );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_ISEMPTY )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty () );
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
qint64 latestTime() const
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_LATESTTIME )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->latestTime () );
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
void removeInterval(const QMediaTimeInterval & interval)
*/
void QMediaTimeRange_removeInterval1 ()
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->removeInterval ( *PQMEDIATIMEINTERVAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeInterval(qint64 start, qint64 end)
*/
void QMediaTimeRange_removeInterval2 ()
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->removeInterval ( PQINT64(1), PQINT64(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void removeInterval(const QMediaTimeInterval & interval)
//[2]void removeInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_removeInterval1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_removeInterval2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeTimeRange(const QMediaTimeRange & range)
*/
HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVETIMERANGE )
{
  QMediaTimeRange * obj = (QMediaTimeRange *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
    {
#endif
      obj->removeTimeRange ( *PQMEDIATIMERANGE(1) );
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

HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIATIMERANGE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIATIMERANGE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIATIMERANGE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
