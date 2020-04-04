/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGLBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtOpenGL/QGLBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtOpenGL/QGLBuffer>
#endif

/*
QGLBuffer ()
*/
void QGLBuffer_new1()
{
  auto obj = new QGLBuffer();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGLBuffer ( QGLBuffer::Type type )
*/
void QGLBuffer_new2()
{
  auto obj = new QGLBuffer( (QGLBuffer::Type) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGLBuffer ( const QGLBuffer & other )
*/
void QGLBuffer_new3()
{
  auto obj = new QGLBuffer( *PQGLBUFFER(1) );
  Qt5xHb::returnNewObject( obj, true );
}

//[1]QGLBuffer ()
//[2]QGLBuffer ( QGLBuffer::Type type )
//[3]QGLBuffer ( const QGLBuffer & other )

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_new2();
  }
  else if( ISNUMPAR(1) && ISQGLBUFFER(1) )
  {
    QGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLBUFFER_DELETE )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate ( const void * data, int count )
*/
void QGLBuffer_allocate1()
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->allocate( (const void *) hb_parptr(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate ( int count )
*/
void QGLBuffer_allocate2()
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->allocate( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void allocate ( const void * data, int count )
//[2]void allocate ( int count )

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QGLBuffer_allocate1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind ()
*/
HB_FUNC_STATIC( QGLBUFFER_BIND )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->bind() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLuint bufferId () const
*/
HB_FUNC_STATIC( QGLBUFFER_BUFFERID )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->bufferId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool create ()
*/
HB_FUNC_STATIC( QGLBUFFER_CREATE )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->create() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void destroy ()
*/
HB_FUNC_STATIC( QGLBUFFER_DESTROY )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->destroy();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCreated () const
*/
HB_FUNC_STATIC( QGLBUFFER_ISCREATED )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCreated() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void * map ( QGLBuffer::Access access )
*/
HB_FUNC_STATIC( QGLBUFFER_MAP )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      hb_retptr( (void *) obj->map( (QGLBuffer::Access) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool read ( int offset, void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_READ )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->read( PINT(1), (void *) hb_parptr(2), PINT(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void release ()
*/
void QGLBuffer_release1()
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->release();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void release ( QGLBuffer::Type type )
*/
void QGLBuffer_release2()
{

  QGLBuffer::release( (QGLBuffer::Type) hb_parni(1) );

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void release ()
//[2]void release ( QGLBuffer::Type type )

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_release1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUsagePattern ( QGLBuffer::UsagePattern value )
*/
HB_FUNC_STATIC( QGLBUFFER_SETUSAGEPATTERN )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setUsagePattern( (QGLBuffer::UsagePattern) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int size () const
*/
HB_FUNC_STATIC( QGLBUFFER_SIZE )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->size() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QGLBuffer::Type type () const
*/
HB_FUNC_STATIC( QGLBUFFER_TYPE )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool unmap ()
*/
HB_FUNC_STATIC( QGLBUFFER_UNMAP )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->unmap() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QGLBuffer::UsagePattern usagePattern () const
*/
HB_FUNC_STATIC( QGLBUFFER_USAGEPATTERN )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->usagePattern() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void write ( int offset, const void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_WRITE )
{
  auto obj = (QGLBuffer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
    {
#endif
      obj->write( PINT(1), (const void *) hb_parptr(2), PINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLBUFFER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
