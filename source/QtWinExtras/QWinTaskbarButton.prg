//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QWINDOW
REQUEST QWINTASKBARPROGRESS
#endif

CLASS QWinTaskbarButton INHERIT QObject

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD overlayIcon
   METHOD setOverlayIcon
   METHOD clearOverlayIcon
   METHOD overlayAccessibleDescription
   METHOD setOverlayAccessibleDescription
   METHOD progress
   METHOD eventFilter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinTaskbarButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinTaskbarButton>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinTaskbarButton>
#endif
#endif

#include <QtGui/QWindow>
#include <QtWinExtras/QWinTaskbarProgress>

    /*
    QWinTaskbarButton(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(QWINTASKBARBUTTON_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QWinTaskbarButton(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWINTASKBARBUTTON_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QWindow * window() const
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_WINDOW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->window();
      Qt5xHb::createReturnQObjectClass(ptr, "QWINDOW");
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
void setWindow(QWindow * window)
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_SETWINDOW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWINDOW(1))
    {
#endif
      obj->setWindow(PQWINDOW(1));
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
QIcon overlayIcon() const
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_OVERLAYICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QIcon(obj->overlayIcon());
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
void setOverlayIcon(const QIcon & icon)
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_SETOVERLAYICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQICON(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setOverlayIcon(HB_ISOBJECT(1) ? *static_cast<QIcon *>(Qt5xHb::itemGetPtr(1)) : QIcon(hb_parc(1)));
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
void clearOverlayIcon()
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_CLEAROVERLAYICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearOverlayIcon();
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
QString overlayAccessibleDescription() const
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_OVERLAYACCESSIBLEDESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->overlayAccessibleDescription());
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
void setOverlayAccessibleDescription(const QString & description)
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_SETOVERLAYACCESSIBLEDESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setOverlayAccessibleDescription(PQSTRING(1));
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
QWinTaskbarProgress * progress() const
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_PROGRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->progress();
      Qt5xHb::createReturnQObjectClass(ptr, "QWINTASKBARPROGRESS");
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
bool eventFilter(QObject *, QEvent *)
*/
HB_FUNC_STATIC(QWINTASKBARBUTTON_EVENTFILTER)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = qobject_cast<QWinTaskbarButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2))
    {
#endif
      RBOOL(obj->eventFilter(PQOBJECT(1), PQEVENT(2)));
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

#pragma ENDDUMP
