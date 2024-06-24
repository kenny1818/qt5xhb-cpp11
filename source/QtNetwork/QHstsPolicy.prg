/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QHstsPolicy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setHost
   METHOD host
   METHOD setExpiry
   METHOD expiry
   METHOD setIncludesSubDomains
   METHOD includesSubDomains
   METHOD isExpired

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHstsPolicy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtNetwork/QHstsPolicy>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtNetwork/QHstsPolicy>
#endif
#endif

#include <QtCore/QDateTime>

HB_FUNC_STATIC(QHSTSPOLICY_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QHstsPolicy()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
    auto obj = new QHstsPolicy();
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISBETWEEN(3, 4) && ISQDATETIME(1) && HB_ISNUM(2) && HB_ISCHAR(3) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QHstsPolicy(const QDateTime & expiry, QHstsPolicy::PolicyFlags flags, const QString & host, QUrl::ParsingMode mode = QUrl::DecodedMode)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
    auto obj = new QHstsPolicy(*PQDATETIME(1), static_cast<QHstsPolicy::PolicyFlags>(hb_parni(2)), PQSTRING(3), HB_ISNIL(4) ? static_cast<QUrl::ParsingMode >(QUrl::DecodedMode) : static_cast<QUrl::ParsingMode >(hb_parni(4)));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISNUMPAR(1) && ISQHSTSPOLICY(1))
  {
    /*
    QHstsPolicy(const QHstsPolicy & rhs)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
    auto obj = new QHstsPolicy(*PQHSTSPOLICY(1));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QHstsPolicy()
*/
HB_FUNC_STATIC(QHSTSPOLICY_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
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
void swap(QHstsPolicy & other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC(QHSTSPOLICY_SWAP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQHSTSPOLICY(1))
    {
#endif
      obj->swap(*PQHSTSPOLICY(1));
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
void setHost(const QString & host, QUrl::ParsingMode mode = QUrl::DecodedMode)
*/
HB_FUNC_STATIC(QHSTSPOLICY_SETHOST)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->setHost(PQSTRING(1), HB_ISNIL(2) ? static_cast<QUrl::ParsingMode >(QUrl::DecodedMode) : static_cast<QUrl::ParsingMode >(hb_parni(2)));
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
QString host(QUrl::ComponentFormattingOptions options = QUrl::FullyDecoded) const
*/
HB_FUNC_STATIC(QHSTSPOLICY_HOST)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RQSTRING(obj->host(HB_ISNIL(1) ? static_cast<QUrl::ComponentFormattingOptions >(QUrl::FullyDecoded) : static_cast<QUrl::ComponentFormattingOptions >(hb_parni(1))));
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
void setExpiry(const QDateTime & expiry)
*/
HB_FUNC_STATIC(QHSTSPOLICY_SETEXPIRY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATETIME(1))
    {
#endif
      obj->setExpiry(*PQDATETIME(1));
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
QDateTime expiry() const
*/
HB_FUNC_STATIC(QHSTSPOLICY_EXPIRY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QDateTime(obj->expiry());
      Qt5xHb::createReturnClass(ptr, "QDATETIME", true);
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
void setIncludesSubDomains(bool include)
*/
HB_FUNC_STATIC(QHSTSPOLICY_SETINCLUDESSUBDOMAINS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setIncludesSubDomains(PBOOL(1));
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
bool includesSubDomains() const
*/
HB_FUNC_STATIC(QHSTSPOLICY_INCLUDESSUBDOMAINS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->includesSubDomains());
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
bool isExpired() const
*/
HB_FUNC_STATIC(QHSTSPOLICY_ISEXPIRED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = static_cast<QHstsPolicy*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isExpired());
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

HB_FUNC_STATIC(QHSTSPOLICY_NEWFROM)
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

HB_FUNC_STATIC(QHSTSPOLICY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QHSTSPOLICY_NEWFROM);
}

HB_FUNC_STATIC(QHSTSPOLICY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QHSTSPOLICY_NEWFROM);
}

HB_FUNC_STATIC(QHSTSPOLICY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QHSTSPOLICY_SETSELFDESTRUCTION)
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
