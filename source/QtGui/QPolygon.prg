/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QRECT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD boundingRect
   METHOD point
   METHOD setPoint
   METHOD putPoints
   METHOD containsPoint
   METHOD united
   METHOD intersected
   METHOD subtracted

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPolygon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPolygon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QPolygon>
#endif

/*
QPolygon()
*/
void QPolygon_new1 ()
{
  auto obj = new QPolygon ();
  _qt5xhb_returnNewObject( obj, true );
}

/*
QPolygon(int size)
*/
void QPolygon_new2 ()
{
  auto obj = new QPolygon ( PINT(1) );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QPolygon(const QPolygon &a)
*/
void QPolygon_new3 ()
{
  auto obj = new QPolygon ( *PQPOLYGON(1) );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QPolygon(const QVector<QPoint> &v)
*/
void QPolygon_new4 ()
{
      QVector<QPoint> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  auto obj = new QPolygon ( par1 );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QPolygon(const QRect &r, bool closed=false)
*/
void QPolygon_new5 ()
{
  auto obj = new QPolygon ( *PQRECT(1), OPBOOL(2,false) );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QPolygon(int nPoints, const int *points)
*/

//[1]QPolygon()
//[2]QPolygon(int size)
//[3]QPolygon(const QPolygon &a)
//[4]QPolygon(const QVector<QPoint> &v)
//[5]QPolygon(const QRect &r, bool closed=false)
//[6]QPolygon(int nPoints, const int *points)

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygon_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygon_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygon_new4();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QPolygon_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPOLYGON_DELETE )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QPolygon &other)
*/
HB_FUNC_STATIC( QPOLYGON_SWAP )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGON(1) )
    {
#endif
      obj->swap ( *PQPOLYGON(1) );
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
void translate(int dx, int dy)
*/
void QPolygon_translate1 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->translate ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(const QPoint &offset)
*/
void QPolygon_translate2 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->translate ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate(int dx, int dy)
//[2]void translate(const QPoint &offset)

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon translated(int dx, int dy) const
*/
void QPolygon_translated1 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      auto ptr = new QPolygon( obj->translated ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
QPolygon translated(const QPoint &offset) const
*/
void QPolygon_translated2 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      auto ptr = new QPolygon( obj->translated ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

//[1]QPolygon translated(int dx, int dy) const
//[2]QPolygon translated(const QPoint &offset) const

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGON_BOUNDINGRECT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRect( obj->boundingRect () );
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
void point(int i, int *x, int *y) const
*/
void QPolygon_point1 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       int par2;
int par3;
      obj->point ( PINT(1), &par2, &par3 );
       hb_storni( par2, 2 );
hb_storni( par3, 3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint point(int i) const
*/
void QPolygon_point2 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      auto ptr = new QPoint( obj->point ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

//[1]void point(int i, int *x, int *y) const
//[2]QPoint point(int i) const

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_point1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_point2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPoint(int index, int x, int y)
*/
void QPolygon_setPoint1 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setPoint ( PINT(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPoint(int index, const QPoint &p)
*/
void QPolygon_setPoint2 ()
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setPoint ( PINT(1), *PQPOINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPoint(int index, int x, int y)
//[2]void setPoint(int index, const QPoint &p)

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_setPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QPolygon_setPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void putPoints(int index, int nPoints, const QPolygon & from, int fromIndex=0)
*/
HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQPOLYGON(3) && ISOPTNUM(4) )
    {
#endif
      obj->putPoints ( PINT(1), PINT(2), *PQPOLYGON(3), OPINT(4,0) );
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
bool containsPoint(const QPoint &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGON_CONTAINSPOINT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPOINT(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->containsPoint ( *PQPOINT(1), (Qt::FillRule) hb_parni(2) ) );
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
QPolygon united(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_UNITED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGON(1) )
    {
#endif
      auto ptr = new QPolygon( obj->united ( *PQPOLYGON(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
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
QPolygon intersected(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_INTERSECTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGON(1) )
    {
#endif
      auto ptr = new QPolygon( obj->intersected ( *PQPOLYGON(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
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
QPolygon subtracted(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_SUBTRACTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGON(1) )
    {
#endif
      auto ptr = new QPolygon( obj->subtracted ( *PQPOLYGON(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QPOLYGON_NEWFROM )
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

HB_FUNC_STATIC( QPOLYGON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPOLYGON_SETSELFDESTRUCTION )
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
