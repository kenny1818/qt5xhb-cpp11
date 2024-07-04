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

CLASS QAbstractPlanarVideoBuffer INHERIT QAbstractVideoBuffer

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractPlanarVideoBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtMultimedia/QAbstractPlanarVideoBuffer>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtMultimedia/QAbstractPlanarVideoBuffer>
#endif
#endif

    /*
    QAbstractPlanarVideoBuffer(QAbstractVideoBuffer::HandleType type) [ABSTRACT]
    */

    /*
    virtual ~QAbstractPlanarVideoBuffer()
    */
HB_FUNC_STATIC(QABSTRACTPLANARVIDEOBUFFER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  auto obj = static_cast<QAbstractPlanarVideoBuffer *>(Qt5xHb::itemGetPtrStackSelfItem());

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

#pragma ENDDUMP
