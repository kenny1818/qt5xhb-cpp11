//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraCaptureDestinationControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureDestinationControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureDestinationControl>
#endif

    /*
    ~QCameraCaptureDestinationControl()
    */
HB_FUNC_STATIC(QCAMERACAPTUREDESTINATIONCONTROL_DELETE)
{
  auto obj = qobject_cast<QCameraCaptureDestinationControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREDESTINATIONCONTROL_CAPTUREDESTINATION)
{
  auto obj = qobject_cast<QCameraCaptureDestinationControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->captureDestination());
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
virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREDESTINATIONCONTROL_ISCAPTUREDESTINATIONSUPPORTED)
{
  auto obj = qobject_cast<QCameraCaptureDestinationControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isCaptureDestinationSupported(static_cast<QCameraImageCapture::CaptureDestinations>(hb_parni(1))));
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
virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREDESTINATIONCONTROL_SETCAPTUREDESTINATION)
{
  auto obj = qobject_cast<QCameraCaptureDestinationControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCaptureDestination(static_cast<QCameraImageCapture::CaptureDestinations>(hb_parni(1)));
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
void captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination)
*/
HB_FUNC_STATIC(QCAMERACAPTUREDESTINATIONCONTROL_ONCAPTUREDESTINATIONCHANGED)
{
  auto sender = qobject_cast<QCameraCaptureDestinationControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal =
        sender->metaObject()->indexOfSignal("captureDestinationChanged(QCameraImageCapture::CaptureDestinations)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QCameraCaptureDestinationControl::captureDestinationChanged,
                                           [sender, indexOfCodeBlock](QCameraImageCapture::CaptureDestinations arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(
                                                   sender, "QCAMERACAPTUREDESTINATIONCONTROL");
                                               auto pArg1 = hb_itemPutNI(nullptr, static_cast<int>(arg1));
                                               hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                               hb_itemRelease(pSender);
                                               hb_itemRelease(pArg1);
                                             }
                                           });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
