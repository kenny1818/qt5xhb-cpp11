/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QVideoFrame

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bytesPerLine
   METHOD endTime
   METHOD fieldType
   METHOD handle
   METHOD handleType
   METHOD height
   METHOD isMapped
   METHOD isReadable
   METHOD isValid
   METHOD isWritable
   METHOD map
   METHOD mapMode
   METHOD mappedBytes
   METHOD pixelFormat
   METHOD setEndTime
   METHOD setFieldType
   METHOD setStartTime
   METHOD size
   METHOD startTime
   METHOD unmap
   METHOD width
   METHOD planeCount
   METHOD metaData
   METHOD setMetaData
   METHOD imageFormatFromPixelFormat
   METHOD pixelFormatFromImageFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVideoFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoFrame>
#endif

#include <QtCore/QVariant>

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QVideoFrame()
    */
    auto obj = new QVideoFrame();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && HB_ISNUM(3)  )
  {
    /*
    QVideoFrame( QAbstractVideoBuffer * buffer, const QSize & size, QVideoFrame::PixelFormat format )
    */
    auto obj = new QVideoFrame( PQABSTRACTVIDEOBUFFER(1), *PQSIZE(2), static_cast<QVideoFrame::PixelFormat>( hb_parni(3) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(4) && HB_ISNUM(1) && ISQSIZE(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    /*
    QVideoFrame( int bytes, const QSize & size, int bytesPerLine, QVideoFrame::PixelFormat format )
    */
    auto obj = new QVideoFrame( PINT(1), *PQSIZE(2), PINT(3), static_cast<QVideoFrame::PixelFormat>( hb_parni(4) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    /*
    QVideoFrame( const QImage & image )
    */
    auto obj = new QVideoFrame( *PQIMAGE(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    /*
    QVideoFrame( const QVideoFrame & other )
    */
    auto obj = new QVideoFrame( *PQVIDEOFRAME(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QVideoFrame()
*/
HB_FUNC_STATIC( QVIDEOFRAME_DELETE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
uchar * bits ()
*/
/*
uchar *bits(int plane)
*/
/*
const uchar * bits () const
*/
/*
const uchar *bits(int plane) const
*/

HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  if( ISNUMPAR(0) )
  {
    /*
    int bytesPerLine() const
    */
    auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RINT( obj->bytesPerLine() );
    }

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    int bytesPerLine( int plane ) const
    */
    auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RINT( obj->bytesPerLine( PINT(1) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qint64 endTime() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ENDTIME )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->endTime() );
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
QVideoFrame::FieldType fieldType() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_FIELDTYPE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->fieldType() );
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
QVariant handle() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVariant( obj->handle() );
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
QAbstractVideoBuffer::HandleType handleType() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLETYPE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->handleType() );
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
int height() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HEIGHT )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->height() );
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
bool isMapped() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISMAPPED )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMapped() );
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
bool isReadable() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISREADABLE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadable() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISVALID )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

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
}

/*
bool isWritable() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISWRITABLE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
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
bool map( QAbstractVideoBuffer::MapMode mode )
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAP )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->map( static_cast<QAbstractVideoBuffer::MapMode>( hb_parni(1) ) ) );
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
QAbstractVideoBuffer::MapMode mapMode() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPMODE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mapMode() );
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
int mappedBytes() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPPEDBYTES )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->mappedBytes() );
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
QVideoFrame::PixelFormat pixelFormat() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMAT )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pixelFormat() );
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
void setEndTime( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETENDTIME )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setEndTime( PQINT64(1) );
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
void setFieldType( QVideoFrame::FieldType field )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETFIELDTYPE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFieldType( static_cast<QVideoFrame::FieldType>( hb_parni(1) ) );
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
void setStartTime( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETSTARTTIME )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStartTime( PQINT64(1) );
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
QSize size() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_SIZE )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->size() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
qint64 startTime() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_STARTTIME )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->startTime() );
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
void unmap()
*/
HB_FUNC_STATIC( QVIDEOFRAME_UNMAP )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unmap();
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
int width() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_WIDTH )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->width() );
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
int planeCount() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PLANECOUNT )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->planeCount() );
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
QVariant metaData( const QString & key ) const
*/
HB_FUNC_STATIC( QVIDEOFRAME_METADATA )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QVariant( obj->metaData( PQSTRING(1) ) );
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
void setMetaData( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETMETADATA )
{
  auto obj = static_cast<QVideoFrame*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      obj->setMetaData( PQSTRING(1), *PQVARIANT(2) );
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
static QImage::Format imageFormatFromPixelFormat( QVideoFrame::PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_IMAGEFORMATFROMPIXELFORMAT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RENUM( QVideoFrame::imageFormatFromPixelFormat( static_cast<QVideoFrame::PixelFormat>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QVideoFrame::PixelFormat pixelFormatFromImageFormat( QImage::Format format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMATFROMIMAGEFORMAT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RENUM( QVideoFrame::pixelFormatFromImageFormat( static_cast<QImage::Format>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QVIDEOFRAME_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
