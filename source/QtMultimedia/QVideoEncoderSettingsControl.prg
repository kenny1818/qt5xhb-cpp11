/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD setVideoSettings
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVideoEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoEncoderSettingsControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoEncoderSettingsControl>
#endif

/*
virtual ~QVideoEncoderSettingsControl()
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_DELETE)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_SETVIDEOSETTINGS)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIDEOENCODERSETTINGS(1))
    {
#endif
      obj->setVideoSettings(*PQVIDEOENCODERSETTINGS(1));
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
virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = nullptr) const = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDFRAMERATES)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQVIDEOENCODERSETTINGS(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      bool par2;
      auto list = obj->supportedFrameRates(*PQVIDEOENCODERSETTINGS(1), &par2);
      Qt5xHb::convert_qlist_qreal_to_array(list);
      hb_storl(par2, 2);
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
virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = nullptr) const = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDRESOLUTIONS)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQVIDEOENCODERSETTINGS(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      bool par2;
      auto list = obj->supportedResolutions(*PQVIDEOENCODERSETTINGS(1), &par2);
      auto pDynSym = hb_dynsymFindName("QSIZE");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (const auto & item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QSize(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSIZE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
      hb_storl(par2, 2);
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
virtual QStringList supportedVideoCodecs() const = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDVIDEOCODECS)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->supportedVideoCodecs());
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
virtual QString videoCodecDescription(const QString & codecName) const = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_VIDEOCODECDESCRIPTION)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->videoCodecDescription(PQSTRING(1)));
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
virtual QVideoEncoderSettings videoSettings() const = 0
*/
HB_FUNC_STATIC(QVIDEOENCODERSETTINGSCONTROL_VIDEOSETTINGS)
{
  auto obj = qobject_cast<QVideoEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVideoEncoderSettings(obj->videoSettings());
      Qt5xHb::createReturnClass(ptr, "QVIDEOENCODERSETTINGS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
