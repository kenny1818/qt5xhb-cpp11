/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIDEOFRAME
#endif

CLASS QVideoFilterRunnable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD run

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVideoFilterRunnable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QVideoFilterRunnable>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#include <QtMultimedia/QVideoFilterRunnable>
#endif
#endif

/*
virtual ~QVideoFilterRunnable()
*/
HB_FUNC_STATIC( QVIDEOFILTERRUNNABLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast<QVideoFilterRunnable*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual QVideoFrame run( QVideoFrame * input, const QVideoSurfaceFormat & surfaceFormat, QVideoFilterRunnable::RunFlags flags ) = 0
*/
HB_FUNC_STATIC( QVIDEOFILTERRUNNABLE_RUN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = static_cast<QVideoFilterRunnable*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQVIDEOFRAME(1) && ISQVIDEOSURFACEFORMAT(2) && HB_ISNUM(3) )
    {
#endif
      auto ptr = new QVideoFrame( obj->run( PQVIDEOFRAME(1), *PQVIDEOSURFACEFORMAT(2), static_cast<QVideoFilterRunnable::RunFlags>( hb_parni(3) ) ) );
      Qt5xHb::createReturnClass(ptr, "QVIDEOFRAME", true);
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

#pragma ENDDUMP
