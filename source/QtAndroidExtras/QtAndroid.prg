/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QtAndroid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD androidActivity
   METHOD androidSdkVersion
   METHOD startIntentSender
   METHOD startActivity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QtAndroid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtAndroid>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtAndroid>
#endif
#endif

/*
static QAndroidJniObject androidActivity()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * ptr = new QAndroidJniObject( QtAndroid::androidActivity () );
  _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
#endif
}

/*
static int androidSdkVersion()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDSDKVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(0) )
  {
    RINT( QtAndroid::androidSdkVersion () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void startIntentSender(const QAndroidJniObject &intentSender, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
*/
HB_FUNC_STATIC( QTANDROID_STARTINTENTSENDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
    QAndroidActivityResultReceiver * par3 = ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3);
    QtAndroid::startIntentSender ( *PQANDROIDJNIOBJECT(1), PINT(2), par3 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void startActivity(const QAndroidJniObject &intent, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
*/
HB_FUNC_STATIC( QTANDROID_STARTACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
    QAndroidActivityResultReceiver * par3 = ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3);
    QtAndroid::startActivity ( *PQANDROIDJNIOBJECT(1), PINT(2), par3 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QTANDROID_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTANDROID_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTANDROID_NEWFROM );
}

HB_FUNC_STATIC( QTANDROID_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTANDROID_NEWFROM );
}

HB_FUNC_STATIC( QTANDROID_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTANDROID_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
