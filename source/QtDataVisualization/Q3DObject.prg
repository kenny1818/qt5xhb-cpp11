/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DSCENE
REQUEST QVECTOR3D
#endif

CLASS Q3DObject INHERIT QObject

   METHOD new
   METHOD delete
   METHOD parentScene
   METHOD position
   METHOD setPosition
   METHOD copyValuesFrom

   METHOD onPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DObject>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DObject>
#endif
#endif

#include <QtDataVisualization/Q3DScene>

using namespace QtDataVisualization;

/*
explicit Q3DObject(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( Q3DOBJECT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new Q3DObject ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~Q3DObject()
*/
HB_FUNC_STATIC( Q3DOBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
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
Q3DScene *parentScene()
*/
HB_FUNC_STATIC( Q3DOBJECT_PARENTSCENE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DScene * ptr = obj->parentScene ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DSCENE" );
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
QVector3D position() const
*/
HB_FUNC_STATIC( Q3DOBJECT_POSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector3D( obj->position () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
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
void setPosition(const QVector3D &position)
*/
HB_FUNC_STATIC( Q3DOBJECT_SETPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setPosition ( *PQVECTOR3D(1) );
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
virtual void copyValuesFrom(const Q3DObject &source)
*/
HB_FUNC_STATIC( Q3DOBJECT_COPYVALUESFROM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * obj = (Q3DObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DOBJECT(1) )
    {
#endif
      obj->copyValuesFrom ( *PQ3DOBJECT(1) );
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
void setDirty(bool dirty) [protected]
*/

/*
bool isDirty() const [protected]
*/

/*
void positionChanged( const QVector3D & position )
*/
HB_FUNC_STATIC( Q3DOBJECT_ONPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  Q3DObject * sender = (Q3DObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("positionChanged(QVector3D)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DObject::positionChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QVector3D & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "Q3DOBJECT" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QVECTOR3D" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
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
