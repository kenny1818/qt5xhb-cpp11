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

CLASS QModbusRtuSerialMaster INHERIT QModbusClient

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusRtuSerialMaster
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialMaster>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals5.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialMaster>
#endif
#endif

/*
explicit QModbusRtuSerialMaster(QObject *parent = nullptr)
*/
/*
QModbusRtuSerialMaster(QModbusRtuSerialMasterPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusRtuSerialMaster()
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALMASTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QModbusRtuSerialMaster *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
int interFrameDelay() const
*/

/*
void setInterFrameDelay(int microseconds)
*/

/*
void close() override [protected]
*/

/*
bool open() override [protected]
*/

#pragma ENDDUMP
