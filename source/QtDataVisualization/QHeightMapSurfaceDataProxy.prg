/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
#endif

CLASS QHeightMapSurfaceDataProxy INHERIT QSurfaceDataProxy

   METHOD new
   METHOD delete
   METHOD heightMap
   METHOD setHeightMap
   METHOD heightMapFile
   METHOD setHeightMapFile
   METHOD minXValue
   METHOD setMinXValue
   METHOD maxXValue
   METHOD setMaxXValue
   METHOD minZValue
   METHOD setMinZValue
   METHOD maxZValue
   METHOD setMaxZValue
   METHOD setValueRanges

   METHOD onHeightMapChanged
   METHOD onHeightMapFileChanged
   METHOD onMinXValueChanged
   METHOD onMaxXValueChanged
   METHOD onMinZValueChanged
   METHOD onMaxZValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHeightMapSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHeightMapSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QHeightMapSurfaceDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QHeightMapSurfaceDataProxy(QObject *parent = nullptr)
*/
void QHeightMapSurfaceDataProxy_new1 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = nullptr)
*/
void QHeightMapSurfaceDataProxy_new2 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( *PQIMAGE(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = nullptr)
*/
void QHeightMapSurfaceDataProxy_new3 ()
{
  QHeightMapSurfaceDataProxy * o = new QHeightMapSurfaceDataProxy ( PQSTRING(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QHeightMapSurfaceDataProxy(QHeightMapSurfaceDataProxyPrivate *d, QObject *parent = nullptr) [protected]
*/

//[1]explicit QHeightMapSurfaceDataProxy(QObject *parent = nullptr)
//[2]explicit QHeightMapSurfaceDataProxy(const QImage &image, QObject *parent = nullptr)
//[3]explicit QHeightMapSurfaceDataProxy(const QString &filename, QObject *parent = nullptr)

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHeightMapSurfaceDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHeightMapSurfaceDataProxy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QHeightMapSurfaceDataProxy()
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_DELETE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

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
QImage heightMap() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImage * ptr = new QImage( obj->heightMap () );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
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
void setHeightMap(const QImage &image)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
#endif
      obj->setHeightMap ( *PQIMAGE(1) );
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
QString heightMapFile() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->heightMapFile () );
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
void setHeightMapFile(const QString &filename)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setHeightMapFile ( PQSTRING(1) );
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
float minXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->minXValue () );
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
void setMinXValue(float min)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinXValue ( PFLOAT(1) );
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
float maxXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->maxXValue () );
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
void setMaxXValue(float max)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxXValue ( PFLOAT(1) );
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
float minZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->minZValue () );
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
void setMinZValue(float min)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinZValue ( PFLOAT(1) );
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
float maxZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->maxZValue () );
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
void setMaxZValue(float max)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxZValue ( PFLOAT(1) );
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
void setValueRanges(float minX, float maxX, float minZ, float maxZ)
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETVALUERANGES )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      obj->setValueRanges ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
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

using namespace QtDataVisualization;

/*
void heightMapChanged( const QImage & image )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPCHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "heightMapChanged(QImage)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::heightMapChanged, 
                                                              [sender]
                                                              (const QImage & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "heightMapChanged(QImage)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QIMAGE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "heightMapChanged(QImage)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "heightMapChanged(QImage)" );

      QObject::disconnect( Signals2_get_connection( sender, "heightMapChanged(QImage)" ) );

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

/*
void heightMapFileChanged( const QString & filename )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPFILECHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "heightMapFileChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::heightMapFileChanged, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "heightMapFileChanged(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "heightMapFileChanged(QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "heightMapFileChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "heightMapFileChanged(QString)" ) );

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

/*
void minXValueChanged( float value )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINXVALUECHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "minXValueChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::minXValueChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "minXValueChanged(float)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "minXValueChanged(float)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "minXValueChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "minXValueChanged(float)" ) );

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

/*
void maxXValueChanged( float value )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXXVALUECHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "maxXValueChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::maxXValueChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "maxXValueChanged(float)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "maxXValueChanged(float)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "maxXValueChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "maxXValueChanged(float)" ) );

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

/*
void minZValueChanged( float value )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINZVALUECHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "minZValueChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::minZValueChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "minZValueChanged(float)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "minZValueChanged(float)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "minZValueChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "minZValueChanged(float)" ) );

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

/*
void maxZValueChanged( float value )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXZVALUECHANGED )
{
  QHeightMapSurfaceDataProxy * sender = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "maxZValueChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHeightMapSurfaceDataProxy::maxZValueChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "maxZValueChanged(float)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHEIGHTMAPSURFACEDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "maxZValueChanged(float)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "maxZValueChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "maxZValueChanged(float)" ) );

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
