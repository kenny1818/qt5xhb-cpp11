/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMATRIX
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QSvgRenderer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSvgRenderer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QSvgRenderer>
#endif

/*
QSvgRenderer ( QObject * parent = nullptr )
*/
void QSvgRenderer_new1 ()
{
  QSvgRenderer * o = new QSvgRenderer ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QSvgRenderer ( const QString & filename, QObject * parent = nullptr )
*/
void QSvgRenderer_new2 ()
{
  QSvgRenderer * o = new QSvgRenderer ( PQSTRING(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QSvgRenderer ( const QByteArray & contents, QObject * parent = nullptr )
*/
void QSvgRenderer_new3 ()
{
  QSvgRenderer * o = new QSvgRenderer ( *PQBYTEARRAY(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = nullptr )
*/
void QSvgRenderer_new4 ()
{
  QSvgRenderer * o = new QSvgRenderer ( PQXMLSTREAMREADER(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QSvgRenderer ( QObject * parent = nullptr )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = nullptr )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = nullptr )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = nullptr )

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSvgRenderer_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new3();
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGRENDERER_DELETE )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool animated () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ANIMATED )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->animated () );
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
QRectF boundsOnElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_BOUNDSONELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundsOnElement ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
QSize defaultSize () const
*/
HB_FUNC_STATIC( QSVGRENDERER_DEFAULTSIZE )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->defaultSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
bool elementExists ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_ELEMENTEXISTS )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->elementExists ( PQSTRING(1) ) );
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
int framesPerSecond () const
*/
HB_FUNC_STATIC( QSVGRENDERER_FRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->framesPerSecond () );
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
bool isValid () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ISVALID )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
QMatrix matrixForElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_MATRIXFORELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QMatrix * ptr = new QMatrix( obj->matrixForElement ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMATRIX", true );
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
void setFramesPerSecond ( int num )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETFRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFramesPerSecond ( PINT(1) );
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
void setViewBox ( const QRect & viewbox )
*/
void QSvgRenderer_setViewBox1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setViewBox ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewBox ( const QRectF & viewbox )
*/
void QSvgRenderer_setViewBox2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setViewBox ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgRenderer_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgRenderer_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect viewBox () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOX )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->viewBox () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
QRectF viewBoxF () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOXF )
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->viewBoxF () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
bool load ( const QString & filename )
*/
void QSvgRenderer_load1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->load ( PQSTRING(1) ) );
  }
}

/*
bool load ( const QByteArray & contents )
*/
void QSvgRenderer_load2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->load ( *PQBYTEARRAY(1) ) );
  }
}

/*
bool load ( QXmlStreamReader * contents )
*/
void QSvgRenderer_load3 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->load ( PQXMLSTREAMREADER(1) ) );
  }
}

//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgRenderer_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgRenderer_load2();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    QSvgRenderer_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void render ( QPainter * painter )
*/
void QSvgRenderer_render1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->render ( PQPAINTER(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QRectF & bounds )
*/
void QSvgRenderer_render2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->render ( PQPAINTER(1), *PQRECTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
*/
void QSvgRenderer_render3 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->render ( PQPAINTER(1), PQSTRING(2), ISNIL(3)? QRectF() : *(QRectF *) _qt5xhb_itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QSvgRenderer_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    QSvgRenderer_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    QSvgRenderer_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void repaintNeeded()
*/
HB_FUNC_STATIC( QSVGRENDERER_ONREPAINTNEEDED )
{
  QSvgRenderer * sender = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "repaintNeeded()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QSvgRenderer::repaintNeeded, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "repaintNeeded()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QSVGRENDERER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "repaintNeeded()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "repaintNeeded()" );

      QObject::disconnect( Signals2_get_connection( sender, "repaintNeeded()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
