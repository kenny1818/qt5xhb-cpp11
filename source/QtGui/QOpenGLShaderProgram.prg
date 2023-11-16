/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLSHADER
#endif

CLASS QOpenGLShaderProgram INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addShader
   METHOD removeShader
   METHOD shaders
   METHOD addShaderFromSourceCode1
   METHOD addShaderFromSourceCode2
   METHOD addShaderFromSourceCode3
   METHOD addShaderFromSourceCode
   METHOD addShaderFromSourceFile
   METHOD removeAllShaders
   METHOD link
   METHOD isLinked
   METHOD log
   METHOD bind
   METHOD release
   METHOD programId
   METHOD maxGeometryOutputVertices
   METHOD setPatchVertexCount
   METHOD patchVertexCount
   METHOD hasOpenGLShaderPrograms

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLShaderProgram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLShaderProgram>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLShaderProgram>
#endif

/*
QOpenGLShaderProgram( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QOpenGLShaderProgram( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_DELETE )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
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
}

/*
bool addShader( QOpenGLShader * shader )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADER )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLSHADER(1) )
    {
#endif
      RBOOL( obj->addShader( PQOPENGLSHADER(1) ) );
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
void removeShader( QOpenGLShader * shader )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVESHADER )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLSHADER(1) )
    {
#endif
      obj->removeShader( PQOPENGLSHADER(1) );
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
QList<QOpenGLShader *> shaders() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SHADERS )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QOpenGLShader *> list = obj->shaders();
      auto pDynSym = hb_dynsymFindName("QOPENGLSHADER");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym != nullptr )
      {
        for( auto item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QOPENGLSHADER", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const char * source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( static_cast<QOpenGLShader::ShaderType>( hb_parni(1) ), PCONSTCHAR(2) ) );
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
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const QByteArray & source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBYTEARRAY(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( static_cast<QOpenGLShader::ShaderType>( hb_parni(1) ), *PQBYTEARRAY(2) ) );
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
bool addShaderFromSourceCode( QOpenGLShader::ShaderType type, const QString & source )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceCode( static_cast<QOpenGLShader::ShaderType>( hb_parni(1) ), PQSTRING(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
  {
    HB_FUNC_EXEC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 );
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 );
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
  {
    HB_FUNC_EXEC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool addShaderFromSourceFile( QOpenGLShader::ShaderType type, const QString & fileName )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCEFILE )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->addShaderFromSourceFile( static_cast<QOpenGLShader::ShaderType>( hb_parni(1) ), PQSTRING(2) ) );
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
void removeAllShaders()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVEALLSHADERS )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeAllShaders();
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
virtual bool link()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LINK )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->link() );
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
bool isLinked() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ISLINKED )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLinked() );
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
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LOG )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_BIND )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void release()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_RELEASE )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->release();
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
GLuint programId() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PROGRAMID )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->programId() );
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
int maxGeometryOutputVertices() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_MAXGEOMETRYOUTPUTVERTICES )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxGeometryOutputVertices() );
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
void setPatchVertexCount( int count )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SETPATCHVERTEXCOUNT )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPatchVertexCount( PINT(1) );
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
int patchVertexCount() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PATCHVERTEXCOUNT )
{
  auto obj = qobject_cast<QOpenGLShaderProgram*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->patchVertexCount() );
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
static bool hasOpenGLShaderPrograms( QOpenGLContext * context = nullptr )
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_HASOPENGLSHADERPROGRAMS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 1) && ( ISQOPENGLCONTEXT(1) || HB_ISNIL(1) ) )
  {
#endif
    RBOOL( QOpenGLShaderProgram::hasOpenGLShaderPrograms( OPQOPENGLCONTEXT( 1, nullptr ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
