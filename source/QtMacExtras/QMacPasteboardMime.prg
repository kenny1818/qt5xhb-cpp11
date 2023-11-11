/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QMacPasteboardMime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD convertorName
   METHOD canConvert
   METHOD mimeFor
   METHOD flavorFor
   METHOD convertToMime
   METHOD convertFromMime
   METHOD count

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMacPasteboardMime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtMacExtras/QMacPasteboardMime>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtMacExtras/QMacPasteboardMime>
#endif
#endif

/*
QMacPasteboardMime( char )
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(1) && ( HB_ISNUM(1) || HB_ISCHAR(1) ) )
  {
    auto obj = new QMacPasteboardMime( PCHAR(1) );
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
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

/*
virtual QString convertorName() = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTORNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->convertorName() );
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
virtual bool canConvert( const QString & mime, QString flav ) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CANCONVERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->canConvert( PQSTRING(1), PQSTRING(2) ) );
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
virtual QString mimeFor( QString flav ) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_MIMEFOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->mimeFor( PQSTRING(1) ) );
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
virtual QString flavorFor( const QString & mime ) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_FLAVORFOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->flavorFor( PQSTRING(1) ) );
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
virtual QVariant convertToMime( const QString & mime, QList<QByteArray> data, QString flav ) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTTOMIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISARRAY(2) && HB_ISCHAR(3) )
    {
#endif
      QList<QByteArray> par2;
      auto aList2 = hb_param( 2, HB_IT_ARRAY );
      int nLen2 = hb_arrayLen( aList2 );
      for( auto i2 = 0; i2 < nLen2; i2++ )
      {
        par2 << *static_cast<QByteArray*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0) ) );
      }
      auto ptr = new QVariant( obj->convertToMime( PQSTRING(1), par2, PQSTRING(3) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual QList<QByteArray> convertFromMime( const QString & mime, QVariant data, QString flav ) = 0
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_CONVERTFROMMIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && ISQVARIANT(2) && HB_ISCHAR(3) )
    {
#endif
      const QList<QByteArray> list = obj->convertFromMime( PQSTRING(1), *PQVARIANT(2), PQSTRING(3) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QBYTEARRAY");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QByteArray(item));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
virtual int count( QMimeData * mimeData )
*/
HB_FUNC_STATIC( QMACPASTEBOARDMIME_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QMacPasteboardMime*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMIMEDATA(1) )
    {
#endif
      RINT( obj->count( PQMIMEDATA(1) ) );
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

HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROM )
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

HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMACPASTEBOARDMIME_NEWFROM );
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMACPASTEBOARDMIME_NEWFROM );
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMACPASTEBOARDMIME_SETSELFDESTRUCTION )
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
