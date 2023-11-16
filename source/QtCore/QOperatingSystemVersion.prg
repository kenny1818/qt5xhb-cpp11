/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QOperatingSystemVersion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD currentType
   METHOD majorVersion
   METHOD minorVersion
   METHOD microVersion
   METHOD segmentCount
   METHOD type
   METHOD name

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOperatingSystemVersion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtCore/QOperatingSystemVersion>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtCore/QOperatingSystemVersion>
#endif
#endif

/*
Q_DECL_CONSTEXPR QOperatingSystemVersion( QOperatingSystemVersion::OSType osType, int vmajor, int vminor = -1, int vmicro = -1 )
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    auto obj = new QOperatingSystemVersion( static_cast<QOperatingSystemVersion::OSType>( hb_parni(1) ), PINT(2), OPINT( 3, -1 ), OPINT( 4, -1 ) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

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
static QOperatingSystemVersion current()
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_CURRENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QOperatingSystemVersion( QOperatingSystemVersion::current() );
    Qt5xHb::createReturnClass(ptr, "QOPERATINGSYSTEMVERSION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static Q_DECL_CONSTEXPR QOperatingSystemVersion::OSType currentType()
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_CURRENTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RENUM( QOperatingSystemVersion::currentType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
Q_DECL_CONSTEXPR int majorVersion() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_MAJORVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->majorVersion() );
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
Q_DECL_CONSTEXPR int minorVersion() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_MINORVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minorVersion() );
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
Q_DECL_CONSTEXPR int microVersion() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_MICROVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->microVersion() );
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
Q_DECL_CONSTEXPR int segmentCount() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_SEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->segmentCount() );
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
bool isAnyOfType(std::initializer_list<OSType> types) const
*/
/*
Q_DECL_CONSTEXPR QOperatingSystemVersion::OSType type() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
QString name() const
*/
HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QOperatingSystemVersion*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_NEWFROM )
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

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPERATINGSYSTEMVERSION_NEWFROM );
}

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPERATINGSYSTEMVERSION_NEWFROM );
}

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QOPERATINGSYSTEMVERSION_SETSELFDESTRUCTION )
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
