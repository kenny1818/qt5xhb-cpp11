/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKDATAGRAM
#endif

CLASS QSctpSocket INHERIT QTcpSocket

   METHOD new
   METHOD delete
   METHOD close
   METHOD disconnectFromHost
   METHOD setMaximumChannelCount
   METHOD maximumChannelCount
   METHOD isInDatagramMode
   METHOD readDatagram
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSctpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtNetwork/QSctpSocket>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtNetwork/QSctpSocket>
#endif
#endif

    /*
    QSctpSocket(QObject *parent = nullptr)
    */
HB_FUNC_STATIC(QSCTPSOCKET_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QSctpSocket(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
virtual ~QSctpSocket()
*/
HB_FUNC_STATIC(QSCTPSOCKET_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
#endif
#endif
}

/*
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC(QSCTPSOCKET_CLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->close();
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
#endif
}

/*
void disconnectFromHost() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC(QSCTPSOCKET_DISCONNECTFROMHOST)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disconnectFromHost();
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
#endif
}

/*
void setMaximumChannelCount(int count)
*/
HB_FUNC_STATIC(QSCTPSOCKET_SETMAXIMUMCHANNELCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaximumChannelCount(PINT(1));
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
#endif
}

/*
int maximumChannelCount() const
*/
HB_FUNC_STATIC(QSCTPSOCKET_MAXIMUMCHANNELCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->maximumChannelCount());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

/*
bool isInDatagramMode() const
*/
HB_FUNC_STATIC(QSCTPSOCKET_ISINDATAGRAMMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isInDatagramMode());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

/*
QNetworkDatagram readDatagram()
*/
HB_FUNC_STATIC(QSCTPSOCKET_READDATAGRAM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QNetworkDatagram(obj->readDatagram());
      Qt5xHb::createReturnClass(ptr, "QNETWORKDATAGRAM", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

/*
bool writeDatagram(const QNetworkDatagram &datagram)
*/
HB_FUNC_STATIC(QSCTPSOCKET_WRITEDATAGRAM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#if !defined(QT_NO_SCTP)
  auto obj = qobject_cast<QSctpSocket *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKDATAGRAM(1))
    {
#endif
      RBOOL(obj->writeDatagram(*PQNETWORKDATAGRAM(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
#endif
}

#pragma ENDDUMP
