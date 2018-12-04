/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractSlider INHERIT QWidget

   METHOD delete
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD orientation
   METHOD setOrientation
   METHOD pageStep
   METHOD setPageStep
   METHOD invertedAppearance
   METHOD setInvertedAppearance
   METHOD invertedControls
   METHOD setInvertedControls
   METHOD setRange
   METHOD isSliderDown
   METHOD setSliderDown
   METHOD singleStep
   METHOD setSingleStep
   METHOD sliderPosition
   METHOD setSliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setValue
   METHOD hasTracking
   METHOD setTracking

   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractSlider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QAbstractSlider>
#endif

HB_FUNC_STATIC( QABSTRACTSLIDER_DELETE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maximum () );
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
void setMaximum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMAXIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaximum ( PINT(1) );
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
int minimum () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_MINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minimum () );
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
void setMinimum ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETMINIMUM )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinimum ( PINT(1) );
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
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation () );
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
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETORIENTATION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
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
int pageStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_PAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->pageStep () );
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
void setPageStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETPAGESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPageStep ( PINT(1) );
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
bool invertedAppearance () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->invertedAppearance () );
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
void setInvertedAppearance ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDAPPEARANCE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setInvertedAppearance ( PBOOL(1) );
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
bool invertedControls () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_INVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->invertedControls () );
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
void setInvertedControls ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETINVERTEDCONTROLS )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setInvertedControls ( PBOOL(1) );
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
void setRange ( int min, int max )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETRANGE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setRange ( PINT(1), PINT(2) );
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
bool isSliderDown () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_ISSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSliderDown () );
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
void setSliderDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERDOWN )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSliderDown ( PBOOL(1) );
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
int singleStep () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->singleStep () );
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
void setSingleStep ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSINGLESTEP )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSingleStep ( PINT(1) );
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
int sliderPosition () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sliderPosition () );
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
void setSliderPosition ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETSLIDERPOSITION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSliderPosition ( PINT(1) );
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
void triggerAction ( SliderAction action )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_TRIGGERACTION )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->triggerAction ( (QAbstractSlider::SliderAction) hb_parni(1) );
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
int value () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_VALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->value () );
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
void setValue ( int )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETVALUE )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setValue ( PINT(1) );
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
bool hasTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_HASTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasTracking () );
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
void setTracking ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTSLIDER_SETTRACKING )
{
  QAbstractSlider * obj = (QAbstractSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setTracking ( PBOOL(1) );
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

HB_FUNC_STATIC( QABSTRACTSLIDER_ONACTIONTRIGGERED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "actionTriggered(int)" );

      QObject::connect(sender, &QAbstractSlider::actionTriggered, [sender](int action) {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "actionTriggered(int)" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          PHB_ITEM paction = hb_itemPutNI( NULL, action );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
          hb_itemRelease( psender );
          hb_itemRelease( paction );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "actionTriggered(int)" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

HB_FUNC_STATIC( QABSTRACTSLIDER_ONRANGECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "rangeChanged(int,int)" );

      QObject::connect(sender, &QAbstractSlider::rangeChanged, [sender](int min, int max) {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "rangeChanged(int,int)" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          PHB_ITEM pmin = hb_itemPutNI( NULL, min );
          PHB_ITEM pmax = hb_itemPutNI( NULL, max );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmin, pmax );
          hb_itemRelease( psender );
          hb_itemRelease( pmin );
          hb_itemRelease( pmax );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rangeChanged(int,int)" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

HB_FUNC_STATIC( QABSTRACTSLIDER_ONSLIDERMOVED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "sliderMoved(int)" );

      QObject::connect(sender, &QAbstractSlider::sliderMoved, [sender](int value) {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "sliderMoved(int)" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
          hb_itemRelease( psender );
          hb_itemRelease( pvalue );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "sliderMoved(int)" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

HB_FUNC_STATIC( QABSTRACTSLIDER_ONSLIDERPRESSED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "sliderPressed()" );

      QObject::connect(sender, &QAbstractSlider::sliderPressed, [sender]() {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "sliderPressed()" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
          hb_itemRelease( psender );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "sliderPressed()" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

HB_FUNC_STATIC( QABSTRACTSLIDER_ONSLIDERRELEASED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "sliderReleased()" );

      QObject::connect(sender, &QAbstractSlider::sliderReleased, [sender]() {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "sliderReleased()" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
          hb_itemRelease( psender );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "sliderReleased()" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

HB_FUNC_STATIC( QABSTRACTSLIDER_ONVALUECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_connection( sender, "valueChanged(int)" );

      QObject::connect(sender, &QAbstractSlider::valueChanged, [sender](int value) {
        QObject * object = qobject_cast<QObject *>( sender );

        PHB_ITEM cb = Signals2_return_codeblock( object, "valueChanged(int)" );

        if( cb )
        {
          PHB_ITEM psender = Signals2_return_qobject ( (QObject *) object, "QABSTRACTSLIDER" );
          PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
          hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
          hb_itemRelease( psender );
          hb_itemRelease( pvalue );
        }

      });

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QAbstractSlider * sender = (QAbstractSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "valueChanged(int)" );

      // TODO: disconnection

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
}

#pragma ENDDUMP
