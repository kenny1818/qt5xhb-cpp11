/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOAREAMONITORSOURCE
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOSATELLITEINFOSOURCE
#endif

CLASS QGeoPositionInfoSourceFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD positionInfoSource
   METHOD satelliteInfoSource
   METHOD areaMonitor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoPositionInfoSourceFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoPositionInfoSourceFactory>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoPositionInfoSourceFactory>
#endif
#endif

/*
virtual QGeoPositionInfoSource * positionInfoSource( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_POSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QGeoPositionInfoSourceFactory*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      QGeoPositionInfoSource * ptr = obj->positionInfoSource( PQOBJECT(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOPOSITIONINFOSOURCE");
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
virtual QGeoSatelliteInfoSource * satelliteInfoSource( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SATELLITEINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QGeoPositionInfoSourceFactory*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      QGeoSatelliteInfoSource * ptr = obj->satelliteInfoSource( PQOBJECT(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOSATELLITEINFOSOURCE");
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
virtual QGeoAreaMonitorSource * areaMonitor( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_AREAMONITOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QGeoPositionInfoSourceFactory*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      QGeoAreaMonitorSource * ptr = obj->areaMonitor( PQOBJECT(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QGEOAREAMONITORSOURCE");
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

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
