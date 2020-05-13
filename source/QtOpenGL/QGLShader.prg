/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QGLShader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD compileSourceCode1
   METHOD compileSourceCode2
   METHOD compileSourceCode3
   METHOD compileSourceCode
   METHOD compileSourceFile
   METHOD isCompiled
   METHOD log
   METHOD shaderId
   METHOD shaderType
   METHOD sourceCode

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtOpenGL/QGLShader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtOpenGL/QGLShader>
#endif

/*
QGLShader ( QGLShader::ShaderType type, QObject * parent = nullptr )
*/
void QGLShader_new1()
{
  auto obj = new QGLShader( (QGLShader::ShaderType) hb_parni(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = nullptr )
*/
void QGLShader_new2()
{
  auto obj = new QGLShader( (QGLShader::ShaderType) hb_parni(1), PQGLCONTEXT(2), OPQOBJECT(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QGLShader ( QGLShader::ShaderType type, QObject * parent = nullptr )
[2]QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QGLSHADER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QGLShader_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQGLCONTEXT(2) && ISOPTQOBJECT(3) )
  {
    QGLShader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLSHADER_DELETE )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
bool compileSourceCode ( const char * source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE1 )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->compileSourceCode( PCONSTCHAR(1) ) );
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
bool compileSourceCode ( const QByteArray & source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE2 )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->compileSourceCode( *PQBYTEARRAY(1) ) );
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
bool compileSourceCode ( const QString & source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE3 )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->compileSourceCode( PQSTRING(1) ) );
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
[1]bool compileSourceCode ( const char * source )
[2]bool compileSourceCode ( const QByteArray & source )
[3]bool compileSourceCode ( const QString & source )
*/

HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool compileSourceFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCEFILE )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->compileSourceFile( PQSTRING(1) ) );
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
bool isCompiled () const
*/
HB_FUNC_STATIC( QGLSHADER_ISCOMPILED )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCompiled() );
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
QString log () const
*/
HB_FUNC_STATIC( QGLSHADER_LOG )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->log() );
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
GLuint shaderId () const
*/
HB_FUNC_STATIC( QGLSHADER_SHADERID )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->shaderId() );
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
QGLShader::ShaderType shaderType () const
*/
HB_FUNC_STATIC( QGLSHADER_SHADERTYPE )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->shaderType() );
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
QByteArray sourceCode () const
*/
HB_FUNC_STATIC( QGLSHADER_SOURCECODE )
{
  auto obj = (QGLShader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->sourceCode() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
static bool hasOpenGLShaders ( ShaderType type, const QGLContext * context = nullptr ) [private]
*/

#pragma ENDDUMP
