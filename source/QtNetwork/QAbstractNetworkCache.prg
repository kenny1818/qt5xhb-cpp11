/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractNetworkCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QAbstractNetworkCache>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QAbstractNetworkCache>
#endif

#include <QtCore/QIODevice>

/*
virtual ~QAbstractNetworkCache()
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DELETE )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual qint64 cacheSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CACHESIZE )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->cacheSize());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QIODevice * data( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DATA )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      auto ptr = obj->data( *PQURL(1));
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void insert( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_INSERT )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIODEVICE(1))
    {
#endif
      obj->insert(PQIODEVICE(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QNetworkCacheMetaData metaData( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_METADATA )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      auto ptr = new QNetworkCacheMetaData(obj->metaData( *PQURL(1)));
      Qt5xHb::createReturnClass(ptr, "QNETWORKCACHEMETADATA", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QIODevice * prepare( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_PREPARE )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1))
    {
#endif
      auto ptr = obj->prepare( *PQNETWORKCACHEMETADATA(1));
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool remove( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_REMOVE )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      RBOOL(obj->remove( *PQURL(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void updateMetaData( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_UPDATEMETADATA )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1))
    {
#endif
      obj->updateMetaData( *PQNETWORKCACHEMETADATA(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void clear() = 0 
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CLEAR )
{
  auto obj = qobject_cast<QAbstractNetworkCache*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
