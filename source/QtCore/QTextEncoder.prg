/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QTextEncoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fromUnicode
   METHOD hasFailure

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextEncoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTextEncoder>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QTextEncoder>
#endif

HB_FUNC_STATIC( QTEXTENCODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    /*
    QTextEncoder( const QTextCodec * codec )
    */
    auto obj = new QTextEncoder( PQTEXTCODEC(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && HB_ISNUM(2) )
  {
    /*
    QTextEncoder( const QTextCodec * codec, QTextCodec::ConversionFlags flags )
    */
    auto obj = new QTextEncoder( PQTEXTCODEC(1), static_cast<QTextCodec::ConversionFlags>( hb_parni(2) ) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTENCODER_DELETE )
{
  auto obj = static_cast<QTextEncoder*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QTEXTENCODER_FROMUNICODE )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QByteArray fromUnicode( const QString & str )
    */
    auto obj = static_cast<QTextEncoder*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QByteArray( obj->fromUnicode( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }

  }
  else if( ISNUMPAR(2) && ISQCHAR(1) && HB_ISNUM(2) )
  {
    /*
    QByteArray fromUnicode( const QChar * uc, int len )
    */
    auto obj = static_cast<QTextEncoder*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QByteArray( obj->fromUnicode( PQCHAR(1), PINT(2) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool hasFailure() const
*/
HB_FUNC_STATIC( QTEXTENCODER_HASFAILURE )
{
  auto obj = static_cast<QTextEncoder*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFailure() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTENCODER_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
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

HB_FUNC_STATIC( QTEXTENCODER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTENCODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTENCODER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTENCODER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTENCODER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTENCODER_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
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
