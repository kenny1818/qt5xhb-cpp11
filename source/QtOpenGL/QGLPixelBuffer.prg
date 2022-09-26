/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPAINTENGINE
REQUEST QSIZE
#endif

CLASS QGLPixelBuffer INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD bindToDynamicTexture
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD drawTexture
   METHOD format
   METHOD generateDynamicTexture
   METHOD isValid
   METHOD makeCurrent
   METHOD releaseFromDynamicTexture
   METHOD size
   METHOD toImage
   METHOD updateDynamicTexture
   METHOD paintEngine
   METHOD hasOpenGLPbuffers

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLPixelBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtOpenGL/QGLPixelBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtOpenGL/QGLPixelBuffer>
#endif

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN(1, 3) && ISQSIZE(1) && ( ISQGLFORMAT(2) || HB_ISNIL(2) ) && ( ISQGLWIDGET(3) || HB_ISNIL(3) ) )
  {
    /*
    QGLPixelBuffer( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = nullptr )
    */
    auto obj = new QGLPixelBuffer( *PQSIZE(1), HB_ISNIL(2) ? QGLFormat::defaultFormat() : *static_cast<QGLFormat*>(Qt5xHb::itemGetPtr(2)), OPQGLWIDGET( 3, nullptr ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ( ISQGLFORMAT(3) || HB_ISNIL(3) ) && ( ISQGLWIDGET(4) || HB_ISNIL(4) ) )
  {
    /*
    QGLPixelBuffer( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = nullptr )
    */
    auto obj = new QGLPixelBuffer( PINT(1), PINT(2), HB_ISNIL(3) ? QGLFormat::defaultFormat() : *static_cast<QGLFormat*>(Qt5xHb::itemGetPtr(3)), OPQGLWIDGET( 4, nullptr ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGLPIXELBUFFER_DELETE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
  if( ISBETWEEN(1, 2) && ISQIMAGE(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    GLuint bindTexture( const QImage & image, GLenum target = GL_TEXTURE_2D )
    */
    auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RGLUINT( obj->bindTexture( *PQIMAGE(1), OPGLENUM( 2, GL_TEXTURE_2D ) ) );
    }

  }
  else if( ISBETWEEN(1, 2) && ISQPIXMAP(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    GLuint bindTexture( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
    */
    auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RGLUINT( obj->bindTexture( *PQPIXMAP(1), OPGLENUM( 2, GL_TEXTURE_2D ) ) );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    GLuint bindTexture( const QString & fileName )
    */
    auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RGLUINT( obj->bindTexture( PQSTRING(1) ) );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool bindToDynamicTexture( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTODYNAMICTEXTURE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->bindToDynamicTexture( PGLUINT(1) ) );
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
void deleteTexture( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DELETETEXTURE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->deleteTexture( PGLUINT(1) );
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
bool doneCurrent()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DONECURRENT )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->doneCurrent() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
  if( ISBETWEEN(2, 3) && ISQRECTF(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void drawTexture( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
    */
    auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->drawTexture( *PQRECTF(1), PGLUINT(2), OPGLENUM( 3, GL_TEXTURE_2D ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISBETWEEN(2, 3) && ISQPOINTF(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void drawTexture( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
    */
    auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->drawTexture( *PQPOINTF(1), PGLUINT(2), OPGLENUM( 3, GL_TEXTURE_2D ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QGLFormat format() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_FORMAT )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QGLFormat( obj->format() );
      Qt5xHb::createReturnClass(ptr, "QGLFORMAT", true);
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
GLuint generateDynamicTexture() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_GENERATEDYNAMICTEXTURE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->generateDynamicTexture() );
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
HB_FUNC_STATIC( QGLPIXELBUFFER_ISVALID )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool makeCurrent()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_MAKECURRENT )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->makeCurrent() );
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
void releaseFromDynamicTexture()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_RELEASEFROMDYNAMICTEXTURE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->releaseFromDynamicTexture();
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
HB_FUNC_STATIC( QGLPIXELBUFFER_SIZE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QImage toImage() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_TOIMAGE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QImage( obj->toImage() );
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
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
void updateDynamicTexture( GLuint texture_id ) const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_UPDATEDYNAMICTEXTURE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->updateDynamicTexture( PGLUINT(1) );
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
virtual QPaintEngine * paintEngine() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_PAINTENGINE )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPaintEngine * ptr = obj->paintEngine();
      Qt5xHb::createReturnClass(ptr, "QPAINTENGINE", false);
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
bool hasOpenGLPbuffers()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_HASOPENGLPBUFFERS )
{
  auto obj = static_cast<QGLPixelBuffer*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasOpenGLPbuffers() );
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
