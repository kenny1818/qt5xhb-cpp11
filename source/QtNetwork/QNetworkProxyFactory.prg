/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxyFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD queryProxy
   METHOD proxyForQuery
   METHOD setApplicationProxyFactory
   METHOD setUseSystemConfiguration
   METHOD systemProxyForQuery
   METHOD usesSystemConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkProxyFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkProxyFactory>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkProxyFactory>
#endif

/*
QNetworkProxyFactory() [ABSTRACT]
*/

/*
virtual ~QNetworkProxyFactory()
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_DELETE )
{
  auto obj = static_cast<QNetworkProxyFactory*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QList<QNetworkProxy> queryProxy( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_QUERYPROXY )
{
  auto obj = static_cast<QNetworkProxyFactory*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( ISQNETWORKPROXYQUERY(1) || HB_ISNIL(1) ) )
    {
#endif
      const QList<QNetworkProxy> list = obj->queryProxy( HB_ISNIL(1) ? QNetworkProxyQuery() : *static_cast<QNetworkProxyQuery*>(Qt5xHb::itemGetPtr(1)) );
      auto pDynSym = hb_dynsymFindName("QNETWORKPROXY");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym != nullptr )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QNetworkProxy(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QNETWORKPROXY", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
static QList<QNetworkProxy> proxyForQuery( const QNetworkProxyQuery & query )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_PROXYFORQUERY )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
#endif
    const QList<QNetworkProxy> list = QNetworkProxyFactory::proxyForQuery( *PQNETWORKPROXYQUERY(1) );
    auto pDynSym = hb_dynsymFindName("QNETWORKPROXY");
    auto pArray = hb_itemArrayNew(0);
    if( pDynSym != nullptr )
    {
      for( const auto & item : list )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, new QNetworkProxy(item));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        auto pDestroy = hb_itemPutL(nullptr, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QNETWORKPROXY", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setApplicationProxyFactory( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETAPPLICATIONPROXYFACTORY )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQNETWORKPROXYFACTORY(1) )
  {
#endif
    QNetworkProxyFactory::setApplicationProxyFactory( PQNETWORKPROXYFACTORY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setUseSystemConfiguration( bool enable )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETUSESYSTEMCONFIGURATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
#endif
    QNetworkProxyFactory::setUseSystemConfiguration( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QList<QNetworkProxy> systemProxyForQuery( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SYSTEMPROXYFORQUERY )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 1) && ( ISQNETWORKPROXYQUERY(1) || HB_ISNIL(1) ) )
  {
#endif
    const QList<QNetworkProxy> list = QNetworkProxyFactory::systemProxyForQuery( HB_ISNIL(1) ? QNetworkProxyQuery() : *static_cast<QNetworkProxyQuery*>(Qt5xHb::itemGetPtr(1)) );
    auto pDynSym = hb_dynsymFindName("QNETWORKPROXY");
    auto pArray = hb_itemArrayNew(0);
    if( pDynSym != nullptr )
    {
      for( const auto & item : list )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, new QNetworkProxy(item));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        auto pDestroy = hb_itemPutL(nullptr, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QNETWORKPROXY", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool usesSystemConfiguration()
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_USESSYSTEMCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QNetworkProxyFactory::usesSystemConfiguration() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXYFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXYFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETSELFDESTRUCTION )
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
