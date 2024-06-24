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

CLASS QOpenGLDebugMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD source
   METHOD type
   METHOD severity
   METHOD id
   METHOD message
   METHOD createApplicationMessage
   METHOD createThirdPartyMessage

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLDebugMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLDebugMessage>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLDebugMessage>
#endif

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QOpenGLDebugMessage()
    */
    auto obj = new QOpenGLDebugMessage();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1))
  {
    /*
    QOpenGLDebugMessage( const QOpenGLDebugMessage & debugMessage )
    */
    auto obj = new QOpenGLDebugMessage(*PQOPENGLDEBUGMESSAGE(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_DELETE )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

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
void swap( QOpenGLDebugMessage & debugMessage )
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SWAP )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1))
    {
#endif
      obj->swap(*PQOPENGLDEBUGMESSAGE(1));
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
QOpenGLDebugMessage::Source source() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SOURCE )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->source());
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
QOpenGLDebugMessage::Type type() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_TYPE )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
QOpenGLDebugMessage::Severity severity() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SEVERITY )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->severity());
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
GLuint id() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_ID )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLUINT(obj->id());
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
QString message() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_MESSAGE )
{
  auto obj = static_cast<QOpenGLDebugMessage*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->message());
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
static QOpenGLDebugMessage createApplicationMessage( const QString & text, GLuint id = 0, QOpenGLDebugMessage::Severity severity = QOpenGLDebugMessage::NotificationSeverity, QOpenGLDebugMessage::Type type = QOpenGLDebugMessage::OtherType )
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATEAPPLICATIONMESSAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 4) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
#endif
    auto ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createApplicationMessage(PQSTRING(1), OPGLUINT( 2, 0 ), HB_ISNIL(3) ? static_cast<QOpenGLDebugMessage::Severity >( QOpenGLDebugMessage::NotificationSeverity ) : static_cast<QOpenGLDebugMessage::Severity >(hb_parni(3)), HB_ISNIL(4) ? static_cast<QOpenGLDebugMessage::Type >( QOpenGLDebugMessage::OtherType ) : static_cast<QOpenGLDebugMessage::Type >(hb_parni(4))));
    Qt5xHb::createReturnClass(ptr, "QOPENGLDEBUGMESSAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QOpenGLDebugMessage createThirdPartyMessage( const QString & text, GLuint id = 0, QOpenGLDebugMessage::Severity severity = QOpenGLDebugMessage::NotificationSeverity, QOpenGLDebugMessage::Type type = QOpenGLDebugMessage::OtherType )
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATETHIRDPARTYMESSAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 4) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
#endif
    auto ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createThirdPartyMessage(PQSTRING(1), OPGLUINT( 2, 0 ), HB_ISNIL(3) ? static_cast<QOpenGLDebugMessage::Severity >( QOpenGLDebugMessage::NotificationSeverity ) : static_cast<QOpenGLDebugMessage::Severity >(hb_parni(3)), HB_ISNIL(4) ? static_cast<QOpenGLDebugMessage::Type >( QOpenGLDebugMessage::OtherType ) : static_cast<QOpenGLDebugMessage::Type >(hb_parni(4))));
    Qt5xHb::createReturnClass(ptr, "QOPENGLDEBUGMESSAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROM )
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

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QOPENGLDEBUGMESSAGE_NEWFROM);
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QOPENGLDEBUGMESSAGE_NEWFROM);
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SETSELFDESTRUCTION )
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
