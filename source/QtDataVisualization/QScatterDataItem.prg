/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQUATERNION
REQUEST QVECTOR3D
#endif

CLASS QScatterDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPosition
   METHOD position
   METHOD setRotation
   METHOD rotation
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD x
   METHOD y
   METHOD z

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScatterDataItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QScatterDataItem>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QScatterDataItem>
#endif
#endif

using namespace QtDataVisualization;

HB_FUNC_STATIC( QSCATTERDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QScatterDataItem()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QScatterDataItem();
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    /*
    QScatterDataItem( const QVector3D & position )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QScatterDataItem( *PQVECTOR3D(1) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQQUATERNION(2) )
  {
    /*
    QScatterDataItem( const QVector3D & position, const QQuaternion & rotation )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QScatterDataItem( *PQVECTOR3D(1), *PQQUATERNION(2) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR(1) && ISQSCATTERDATAITEM(1) )
  {
    /*
    QScatterDataItem( const QScatterDataItem & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QScatterDataItem( *PQSCATTERDATAITEM(1) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QScatterDataItem()
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setPosition( const QVector3D & pos )
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_SETPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setPosition( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVector3D position() const
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_POSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector3D( obj->position() );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRotation( const QQuaternion & rot )
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_SETROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQQUATERNION(1) )
    {
#endif
      obj->setRotation( *PQQUATERNION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QQuaternion rotation() const
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_ROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QQuaternion( obj->rotation() );
      Qt5xHb::createReturnClass(ptr, "QQUATERNION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setX( float value )
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_SETX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setX( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setY( float value )
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_SETY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setY( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setZ( float value )
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_SETZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setZ( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
float x() const
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->x() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
float y() const
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->y() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
float z() const
*/
HB_FUNC_STATIC( QSCATTERDATAITEM_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QScatterDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->z() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QSCATTERDATAITEM_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSCATTERDATAITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCATTERDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QSCATTERDATAITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCATTERDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QSCATTERDATAITEM_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSCATTERDATAITEM_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
