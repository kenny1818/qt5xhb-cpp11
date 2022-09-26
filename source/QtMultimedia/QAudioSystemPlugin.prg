/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTAUDIODEVICEINFO
REQUEST QABSTRACTAUDIOINPUT
REQUEST QABSTRACTAUDIOOUTPUT
REQUEST QBYTEARRAY
#endif

CLASS QAudioSystemPlugin INHERIT QObject,QAudioSystemFactoryInterface

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioSystemPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioSystemPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioSystemPlugin>
#endif

/*
QAudioSystemPlugin( QObject * parent = nullptr ) [ABSTRACT]
*/

/*
~QAudioSystemPlugin()
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_DELETE )
{
  auto obj = qobject_cast<QAudioSystemPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QList<QByteArray> availableDevices( QAudio::Mode ) const override = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_AVAILABLEDEVICES )
{
  auto obj = qobject_cast<QAudioSystemPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QList<QByteArray> list = obj->availableDevices( static_cast<QAudio::Mode>( hb_parni(1) ) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemNew(nullptr);
          hb_itemPutPtr( pItem, static_cast<QByteArray*>( new QByteArray( list[ i ] ) ) );
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemNew(nullptr);
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS);
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
virtual QAbstractAudioInput * createInput( const QByteArray & device ) override = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEINPUT )
{
  auto obj = qobject_cast<QAudioSystemPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      QAbstractAudioInput * ptr = obj->createInput( *PQBYTEARRAY(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTAUDIOINPUT");
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
virtual QAbstractAudioOutput * createOutput( const QByteArray & device ) override = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEOUTPUT )
{
  auto obj = qobject_cast<QAudioSystemPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      QAbstractAudioOutput * ptr = obj->createOutput( *PQBYTEARRAY(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTAUDIOOUTPUT");
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
virtual QAbstractAudioDeviceInfo * createDeviceInfo( const QByteArray & device, QAudio::Mode mode ) override = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEDEVICEINFO )
{
  auto obj = qobject_cast<QAudioSystemPlugin*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && HB_ISNUM(2) )
    {
#endif
      QAbstractAudioDeviceInfo * ptr = obj->createDeviceInfo( *PQBYTEARRAY(1), static_cast<QAudio::Mode>( hb_parni(2) ) );
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTAUDIODEVICEINFO");
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
