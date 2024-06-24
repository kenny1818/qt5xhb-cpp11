/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QSslError>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QSslError>
#endif

HB_FUNC_STATIC(QSSLERROR_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QSslError()
    */
    auto obj = new QSslError();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QSslError(QSslError::SslError error)
    */
    auto obj = new QSslError(static_cast<QSslError::SslError>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSSLCERTIFICATE(2))
  {
    /*
    QSslError(QSslError::SslError error, const QSslCertificate & certificate)
    */
    auto obj = new QSslError(static_cast<QSslError::SslError>(hb_parni(1)), *PQSSLCERTIFICATE(2));
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQSSLERROR(1))
  {
    /*
    QSslError(const QSslError & other)
    */
    auto obj = new QSslError(*PQSSLERROR(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QSslError()
*/
HB_FUNC_STATIC(QSSLERROR_DELETE)
{
  auto obj = static_cast<QSslError*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QSslCertificate certificate() const
*/
HB_FUNC_STATIC(QSSLERROR_CERTIFICATE)
{
  auto obj = static_cast<QSslError*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSslCertificate(obj->certificate());
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
QSslError::SslError error() const
*/
HB_FUNC_STATIC(QSSLERROR_ERROR)
{
  auto obj = static_cast<QSslError*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
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
QString errorString() const
*/
HB_FUNC_STATIC(QSSLERROR_ERRORSTRING)
{
  auto obj = static_cast<QSslError*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->errorString());
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
void swap(QSslError & other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC(QSSLERROR_SWAP)
{
  auto obj = static_cast<QSslError*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLERROR(1))
    {
#endif
      obj->swap(*PQSSLERROR(1));
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

HB_FUNC_STATIC(QSSLERROR_NEWFROM)
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

HB_FUNC_STATIC(QSSLERROR_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSSLERROR_NEWFROM);
}

HB_FUNC_STATIC(QSSLERROR_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSSLERROR_NEWFROM);
}

HB_FUNC_STATIC(QSSLERROR_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSSLERROR_SETSELFDESTRUCTION)
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
