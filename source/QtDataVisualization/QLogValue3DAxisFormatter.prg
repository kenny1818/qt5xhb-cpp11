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

CLASS QLogValue3DAxisFormatter INHERIT QValue3DAxisFormatter

   METHOD new
   METHOD delete
   METHOD base
   METHOD setBase
   METHOD autoSubGrid
   METHOD setAutoSubGrid
   METHOD showEdgeLabels
   METHOD setShowEdgeLabels

   METHOD onAutoSubGridChanged
   METHOD onBaseChanged
   METHOD onShowEdgeLabelsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLogValue3DAxisFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QLogValue3DAxisFormatter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QLogValue3DAxisFormatter>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit QLogValue3DAxisFormatter(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QLogValue3DAxisFormatter ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
explicit QLogValue3DAxisFormatter(QLogValue3DAxisFormatterPrivate *d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QLogValue3DAxisFormatter()
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
qreal base() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_BASE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->base () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBase(qreal base)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETBASE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBase ( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool autoSubGrid() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_AUTOSUBGRID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoSubGrid () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAutoSubGrid(bool enabled)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETAUTOSUBGRID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoSubGrid ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool showEdgeLabels() const
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SHOWEDGELABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->showEdgeLabels () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setShowEdgeLabels(bool enabled)
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_SETSHOWEDGELABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLogValue3DAxisFormatter * obj = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setShowEdgeLabels ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QValue3DAxisFormatter *createNewInstance() const [protected]
*/

/*
virtual void recalculate() [protected]
*/

/*
virtual float positionAt(float value) const [protected]
*/

/*
virtual float valueAt(float position) const [protected]
*/

/*
virtual void populateCopy(QValue3DAxisFormatter &copy) const [protected]
*/

/*
void autoSubGridChanged( bool enabled )
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONAUTOSUBGRIDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("autoSubGridChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QLogValue3DAxisFormatter::autoSubGridChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QLOGVALUE3DAXISFORMATTER" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
#else
hb_retl( false );
#endif
}

/*
void baseChanged( qreal base )
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONBASECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("baseChanged(qreal)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QLogValue3DAxisFormatter::baseChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QLOGVALUE3DAXISFORMATTER" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
#else
hb_retl( false );
#endif
}

/*
void showEdgeLabelsChanged( bool enabled )
*/
HB_FUNC_STATIC( QLOGVALUE3DAXISFORMATTER_ONSHOWEDGELABELSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QLogValue3DAxisFormatter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("showEdgeLabelsChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QLogValue3DAxisFormatter::showEdgeLabelsChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QLOGVALUE3DAXISFORMATTER" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
