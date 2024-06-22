/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD protocol
   METHOD setProtocol
   METHOD peerVerifyMode
   METHOD setPeerVerifyMode
   METHOD peerVerifyDepth
   METHOD setPeerVerifyDepth
   METHOD localCertificateChain
   METHOD setLocalCertificateChain
   METHOD localCertificate
   METHOD setLocalCertificate
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD sessionCipher
   METHOD sessionProtocol
   METHOD privateKey
   METHOD setPrivateKey
   METHOD ciphers
   METHOD setCiphers
   METHOD supportedCiphers
   METHOD caCertificates
   METHOD setCaCertificates
   METHOD systemCaCertificates
   METHOD setSslOption
   METHOD testSslOption
   METHOD sessionTicket
   METHOD setSessionTicket
   METHOD sessionTicketLifeTimeHint
   METHOD ephemeralServerKey
   METHOD preSharedKeyIdentityHint
   METHOD setPreSharedKeyIdentityHint
   METHOD defaultConfiguration
   METHOD setDefaultConfiguration
   METHOD setAllowedNextProtocols
   METHOD allowedNextProtocols
   METHOD nextNegotiatedProtocol
   METHOD nextProtocolNegotiationStatus

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QSslConfiguration>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QSslConfiguration>
#endif

#include <QtNetwork/QSslCipher>
#include <QtNetwork/QSslKey>

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QSslConfiguration()
    */
    auto obj = new QSslConfiguration();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSSLCONFIGURATION(1))
  {
    /*
    QSslConfiguration( const QSslConfiguration & other )
    */
    auto obj = new QSslConfiguration( *PQSSLCONFIGURATION(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QSslConfiguration()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DELETE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
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
void swap( QSslConfiguration & other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SWAP )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLCONFIGURATION(1))
    {
#endif
      obj->swap( *PQSSLCONFIGURATION(1));
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
bool isNull() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ISNULL )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
QSsl::SslProtocol protocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PROTOCOL )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->protocol());
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
void setProtocol( QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPROTOCOL )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setProtocol( static_cast<QSsl::SslProtocol>( hb_parni(1)));
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
QSslSocket::PeerVerifyMode peerVerifyMode() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYMODE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->peerVerifyMode());
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
void setPeerVerifyMode( QSslSocket::PeerVerifyMode mode )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYMODE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPeerVerifyMode( static_cast<QSslSocket::PeerVerifyMode>( hb_parni(1)));
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
int peerVerifyDepth() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYDEPTH )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->peerVerifyDepth());
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
void setPeerVerifyDepth( int depth )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYDEPTH )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPeerVerifyDepth(PINT(1));
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
QList<QSslCertificate> localCertificateChain() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATECHAIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->localCertificateChain();
      auto pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
          auto pItem = hb_itemPutPtr(nullptr, new QSslCertificate(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

/*
void setLocalCertificateChain( const QList<QSslCertificate> & localChain )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATECHAIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QSslCertificate> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen( aList1);
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QSslCertificate*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0)));
      }
      obj->setLocalCertificateChain( par1);
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
QSslCertificate localCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslCertificate(obj->localCertificate());
      Qt5xHb::createReturnClass(ptr, "QSSLCERTIFICATE", true);
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
void setLocalCertificate( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLCERTIFICATE(1))
    {
#endif
      obj->setLocalCertificate( *PQSSLCERTIFICATE(1));
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
QSslCertificate peerCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATE )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslCertificate(obj->peerCertificate());
      Qt5xHb::createReturnClass(ptr, "QSSLCERTIFICATE", true);
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
QList<QSslCertificate> peerCertificateChain() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATECHAIN )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->peerCertificateChain();
      auto pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
          auto pItem = hb_itemPutPtr(nullptr, new QSslCertificate(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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
QSslCipher sessionCipher() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONCIPHER )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslCipher(obj->sessionCipher());
      Qt5xHb::createReturnClass(ptr, "QSSLCIPHER", true);
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
QSsl::SslProtocol sessionProtocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONPROTOCOL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sessionProtocol());
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
QSslKey privateKey() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRIVATEKEY )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslKey(obj->privateKey());
      Qt5xHb::createReturnClass(ptr, "QSSLKEY", true);
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
void setPrivateKey( const QSslKey & key )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRIVATEKEY )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLKEY(1))
    {
#endif
      obj->setPrivateKey( *PQSSLKEY(1));
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
QList<QSslCipher> ciphers() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CIPHERS )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->ciphers();
      auto pDynSym = hb_dynsymFindName("QSSLCIPHER");
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
          auto pItem = hb_itemPutPtr(nullptr, new QSslCipher(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCIPHER", HB_ERR_ARGS_BASEPARAMS);
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
void setCiphers( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCIPHERS )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QSslCipher> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen( aList1);
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QSslCipher*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0)));
      }
      obj->setCiphers( par1);
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
static QList<QSslCipher> supportedCiphers()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SUPPORTEDCIPHERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto list = QSslConfiguration::supportedCiphers();
    auto pDynSym = hb_dynsymFindName("QSSLCIPHER");
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
        auto pItem = hb_itemPutPtr(nullptr, new QSslCipher(item));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCIPHER", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
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
QList<QSslCertificate> caCertificates() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CACERTIFICATES )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->caCertificates();
      auto pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
          auto pItem = hb_itemPutPtr(nullptr, new QSslCertificate(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
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
void setCaCertificates( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCACERTIFICATES )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QSslCertificate> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen( aList1);
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QSslCertificate*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0)));
      }
      obj->setCaCertificates( par1);
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
static QList<QSslCertificate> systemCaCertificates()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SYSTEMCACERTIFICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto list = QSslConfiguration::systemCaCertificates();
    auto pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
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
        auto pItem = hb_itemPutPtr(nullptr, new QSslCertificate(item));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
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
void setSslOption( QSsl::SslOption option, bool on )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETSSLOPTION )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      obj->setSslOption( static_cast<QSsl::SslOption>( hb_parni(1)), PBOOL(2));
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
bool testSslOption( QSsl::SslOption option ) const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_TESTSSLOPTION )
{
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->testSslOption( static_cast<QSsl::SslOption>( hb_parni(1))));
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
QByteArray sessionTicket() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONTICKET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QByteArray(obj->sessionTicket());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
void setSessionTicket( const QByteArray & sessionTicket )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETSESSIONTICKET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->setSessionTicket( *PQBYTEARRAY(1));
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
int sessionTicketLifeTimeHint() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONTICKETLIFETIMEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->sessionTicketLifeTimeHint());
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
QSslKey ephemeralServerKey() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_EPHEMERALSERVERKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslKey(obj->ephemeralServerKey());
      Qt5xHb::createReturnClass(ptr, "QSSLKEY", true);
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
QVector<QSslEllipticCurve> ellipticCurves() const
*/
/*
void setEllipticCurves(const QVector<QSslEllipticCurve> &curves)
*/
/*
static QVector<QSslEllipticCurve> supportedEllipticCurves()
*/
/*
QByteArray preSharedKeyIdentityHint() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRESHAREDKEYIDENTITYHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QByteArray(obj->preSharedKeyIdentityHint());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
void setPreSharedKeyIdentityHint( const QByteArray & hint )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRESHAREDKEYIDENTITYHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->setPreSharedKeyIdentityHint( *PQBYTEARRAY(1));
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
QSslDiffieHellmanParameters diffieHellmanParameters() const
*/
/*
void setDiffieHellmanParameters(const QSslDiffieHellmanParameters &dhparams)
*/
/*
static QSslConfiguration defaultConfiguration()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DEFAULTCONFIGURATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto ptr = new QSslConfiguration( QSslConfiguration::defaultConfiguration());
    Qt5xHb::createReturnClass(ptr, "QSSLCONFIGURATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setDefaultConfiguration( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETDEFAULTCONFIGURATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQSSLCONFIGURATION(1))
  {
#endif
    QSslConfiguration::setDefaultConfiguration( *PQSSLCONFIGURATION(1));
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
void setAllowedNextProtocols( QList<QByteArray> protocols )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETALLOWEDNEXTPROTOCOLS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QByteArray> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen( aList1);
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QByteArray*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0)));
      }
      obj->setAllowedNextProtocols( par1);
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
QList<QByteArray> allowedNextProtocols() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ALLOWEDNEXTPROTOCOLS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->allowedNextProtocols();
      auto pDynSym = hb_dynsymFindName("QBYTEARRAY");
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
          auto pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

/*
QByteArray nextNegotiatedProtocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEXTNEGOTIATEDPROTOCOL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QByteArray(obj->nextNegotiatedProtocol());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QSslConfiguration::NextProtocolNegotiationStatus nextProtocolNegotiationStatus() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEXTPROTOCOLNEGOTIATIONSTATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = static_cast<QSslConfiguration*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->nextProtocolNegotiationStatus());
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

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
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

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QSSLCONFIGURATION_NEWFROM);
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QSSLCONFIGURATION_NEWFROM);
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
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
