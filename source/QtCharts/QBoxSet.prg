//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
#endif

CLASS QBoxSet INHERIT QObject

   METHOD new
   METHOD delete
   METHOD pen
   METHOD setPen
   METHOD brush
   METHOD setBrush
   METHOD append
   METHOD clear
   METHOD setLabel
   METHOD label
   METHOD setValue
   METHOD at
   METHOD count

   METHOD onBrushChanged
   METHOD onCleared
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBoxSet
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBoxSet>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBoxSet>
#endif
#endif

    using namespace QtCharts;

HB_FUNC_STATIC(QBOXSET_NEW)
{
  if (ISBETWEEN(0, 2) && (HB_ISCHAR(1) || HB_ISNIL(1)) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QBoxSet(const QString label = QString(), QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = new QBoxSet(OPQSTRING(1, QString()), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(5, 7) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) &&
           (HB_ISCHAR(6) || HB_ISNIL(6)) && (ISQOBJECT(7) || HB_ISNIL(7)))
  {
    /*
    QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label =
    QString(), QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = new QBoxSet(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), OPQSTRING(6, QString()),
                           OPQOBJECT(7, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QBoxSet()
*/
HB_FUNC_STATIC(QBOXSET_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QPen pen() const
*/
HB_FUNC_STATIC(QBOXSET_PEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPen(obj->pen());
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
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
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC(QBOXSET_SETPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPEN(1))
    {
#endif
      obj->setPen(*PQPEN(1));
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
QBrush brush() const
*/
HB_FUNC_STATIC(QBOXSET_BRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBrush(obj->brush());
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC(QBOXSET_SETBRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
#endif
      obj->setBrush(*PQBRUSH(1));
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

HB_FUNC_STATIC(QBOXSET_APPEND)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void append(const qreal value)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->append(PQREAL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    void append(const QList<qreal> &values)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      QList<qreal> par1;
      auto aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      qreal temp1;
      for (auto i1 = 0; i1 < nLen1; i1++)
      {
        temp1 = hb_arrayGetND(aList1, i1 + 1);
        par1 << temp1;
      }
      obj->append(par1);
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void clear()
*/
HB_FUNC_STATIC(QBOXSET_CLEAR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
#endif
}

/*
void setLabel(const QString label)
*/
HB_FUNC_STATIC(QBOXSET_SETLABEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setLabel(PQSTRING(1));
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
QString label() const
*/
HB_FUNC_STATIC(QBOXSET_LABEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->label());
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
void setValue(const int index, const qreal value)
*/
HB_FUNC_STATIC(QBOXSET_SETVALUE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setValue(PINT(1), PQREAL(2));
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
qreal at(const int index) const
*/
HB_FUNC_STATIC(QBOXSET_AT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->at(PINT(1)));
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
int count() const
*/
HB_FUNC_STATIC(QBOXSET_COUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
void brushChanged()
*/
HB_FUNC_STATIC(QBOXSET_ONBRUSHCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("brushChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::brushChanged, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void cleared()
*/
HB_FUNC_STATIC(QBOXSET_ONCLEARED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("cleared()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::cleared, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void clicked()
*/
HB_FUNC_STATIC(QBOXSET_ONCLICKED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("clicked()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::clicked, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void doubleClicked()
*/
HB_FUNC_STATIC(QBOXSET_ONDOUBLECLICKED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("doubleClicked()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::doubleClicked, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void hovered(bool status)
*/
HB_FUNC_STATIC(QBOXSET_ONHOVERED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("hovered(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::hovered, [sender, indexOfCodeBlock](bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void penChanged()
*/
HB_FUNC_STATIC(QBOXSET_ONPENCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("penChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::penChanged, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pressed()
*/
HB_FUNC_STATIC(QBOXSET_ONPRESSED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pressed()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::pressed, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void released()
*/
HB_FUNC_STATIC(QBOXSET_ONRELEASED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("released()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::released, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void valueChanged(int index)
*/
HB_FUNC_STATIC(QBOXSET_ONVALUECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("valueChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::valueChanged, [sender, indexOfCodeBlock](int arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void valuesChanged()
*/
HB_FUNC_STATIC(QBOXSET_ONVALUESCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QBoxSet *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("valuesChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QBoxSet::valuesChanged, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QBOXSET");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
