//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraExposureControl INHERIT QMediaControl

   METHOD delete
   METHOD actualValue
   METHOD isParameterSupported
   METHOD requestedValue
   METHOD setValue
   METHOD supportedParameterRange

   METHOD onActualValueChanged
   METHOD onParameterRangeChanged
   METHOD onRequestedValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraExposureControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraExposureControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraExposureControl>
#endif

    /*
    ~QCameraExposureControl()
    */
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_DELETE)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
virtual QVariant actualValue(QCameraExposureControl::ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_ACTUALVALUE)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->actualValue(static_cast<QCameraExposureControl::ExposureParameter>(hb_parni(1))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual bool isParameterSupported(QCameraExposureControl::ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_ISPARAMETERSUPPORTED)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isParameterSupported(static_cast<QCameraExposureControl::ExposureParameter>(hb_parni(1))));
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
virtual QVariant requestedValue(QCameraExposureControl::ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_REQUESTEDVALUE)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->requestedValue(static_cast<QCameraExposureControl::ExposureParameter>(hb_parni(1))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual bool setValue(QCameraExposureControl::ExposureParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_SETVALUE)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      RBOOL(obj->setValue(static_cast<QCameraExposureControl::ExposureParameter>(hb_parni(1)), *PQVARIANT(2)));
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
virtual QVariantList supportedParameterRange(QCameraExposureControl::ExposureParameter parameter, bool * continuous)
const = 0
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_SUPPORTEDPARAMETERRANGE)
{
  auto obj = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      bool par2;
      auto list =
          obj->supportedParameterRange(static_cast<QCameraExposureControl::ExposureParameter>(hb_parni(1)), &par2);
      auto pDynSym = hb_dynsymFindName("QVARIANT");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (const auto &item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QVariant(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QVARIANT", HB_ERR_ARGS_BASEPARAMS);
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
void actualValueChanged(int parameter)
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_ONACTUALVALUECHANGED)
{
  auto sender = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("actualValueChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QCameraExposureControl::actualValueChanged, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QCAMERAEXPOSURECONTROL");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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

/*
void parameterRangeChanged(int parameter)
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_ONPARAMETERRANGECHANGED)
{
  auto sender = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("parameterRangeChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QCameraExposureControl::parameterRangeChanged, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QCAMERAEXPOSURECONTROL");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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

/*
void requestedValueChanged(int parameter)
*/
HB_FUNC_STATIC(QCAMERAEXPOSURECONTROL_ONREQUESTEDVALUECHANGED)
{
  auto sender = qobject_cast<QCameraExposureControl *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("requestedValueChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QCameraExposureControl::requestedValueChanged, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QCAMERAEXPOSURECONTROL");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
