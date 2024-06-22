/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QWebChannelAbstractTransport INHERIT QObject

   METHOD delete
   METHOD sendMessage

   METHOD onMessageReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebChannelAbstractTransport
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebChannel/QWebChannelAbstractTransport>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebChannel/QWebChannelAbstractTransport>
#endif
#endif

#include <QtCore/QJsonObject>

HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QWebChannelAbstractTransport*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
virtual void sendMessage( const QJsonObject & message ) = 0
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_SENDMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = qobject_cast<QWebChannelAbstractTransport*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQJSONOBJECT(1))
    {
#endif
      obj->sendMessage( *PQJSONOBJECT(1));
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
void messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_ONMESSAGERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = qobject_cast<QWebChannelAbstractTransport*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("messageReceived(QJsonObject,QWebChannelAbstractTransport*)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QWebChannelAbstractTransport::messageReceived,
                                           [sender, indexOfCodeBlock]
                                           (const QJsonObject & arg1, QWebChannelAbstractTransport * arg2) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QWEBCHANNELABSTRACTTRANSPORT");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QJSONOBJECT");
            auto pArg2 = Qt5xHb::Signals_return_qobject(arg2, "QWEBCHANNELABSTRACTTRANSPORT");
            hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
