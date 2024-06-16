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

CLASS QStorageInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setPath
   METHOD rootPath
   METHOD device
   METHOD fileSystemType
   METHOD name
   METHOD displayName
   METHOD bytesTotal
   METHOD bytesFree
   METHOD bytesAvailable
   METHOD isRoot
   METHOD isReadOnly
   METHOD isReady
   METHOD isValid
   METHOD refresh
   METHOD mountedVolumes
   METHOD root

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStorageInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtCore/QStorageInfo>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtCore/QStorageInfo>
#endif
#endif

HB_FUNC_STATIC( QSTORAGEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStorageInfo()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QStorageInfo();
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QStorageInfo( const QString & path )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QStorageInfo( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    /*
    QStorageInfo( const QDir & dir )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QStorageInfo( *PQDIR(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
  {
    /*
    QStorageInfo( const QStorageInfo & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QStorageInfo( *PQSTORAGEINFO(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTORAGEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

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
void swap( QStorageInfo & other )
*/
HB_FUNC_STATIC( QSTORAGEINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
    {
#endif
      obj->swap( *PQSTORAGEINFO(1) );
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
void setPath( const QString & path )
*/
HB_FUNC_STATIC( QSTORAGEINFO_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPath( PQSTRING(1) );
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
QString rootPath() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ROOTPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rootPath() );
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
QByteArray device() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->device() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray fileSystemType() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_FILESYSTEMTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->fileSystemType() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QString name() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
QString displayName() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_DISPLAYNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->displayName() );
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
qint64 bytesTotal() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESTOTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesTotal() );
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
qint64 bytesFree() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESFREE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesFree() );
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
qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable() );
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
bool isRoot() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISROOT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRoot() );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISREADONLY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
bool isReady() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReady() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSTORAGEINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
void refresh()
*/
HB_FUNC_STATIC( QSTORAGEINFO_REFRESH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QStorageInfo*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->refresh();
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
static QList<QStorageInfo> mountedVolumes()
*/
HB_FUNC_STATIC( QSTORAGEINFO_MOUNTEDVOLUMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto list = QStorageInfo::mountedVolumes();
    auto pDynSym = hb_dynsymFindName("QSTORAGEINFO");
    auto pArray = hb_itemArrayNew(0);
    if( pDynSym != nullptr )
    {
      for( const auto & item : list )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        auto pObject = hb_itemNew(nullptr);
        hb_itemCopy(pObject, hb_stackReturnItem());
        auto pItem = hb_itemPutPtr(nullptr, new QStorageInfo(item));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSTORAGEINFO", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QStorageInfo root()
*/
HB_FUNC_STATIC( QSTORAGEINFO_ROOT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QStorageInfo( QStorageInfo::root() );
    Qt5xHb::createReturnClass(ptr, "QSTORAGEINFO", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QSTORAGEINFO_NEWFROM )
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

HB_FUNC_STATIC( QSTORAGEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTORAGEINFO_NEWFROM );
}

HB_FUNC_STATIC( QSTORAGEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTORAGEINFO_NEWFROM );
}

HB_FUNC_STATIC( QSTORAGEINFO_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSTORAGEINFO_SETSELFDESTRUCTION )
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
