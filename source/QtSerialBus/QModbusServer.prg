/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusServer INHERIT QModbusDevice

   METHOD delete
   METHOD serverAddress
   METHOD processesBroadcast

   METHOD onDataWritten

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

/*
~QModbusServer()
*/
HB_FUNC_STATIC( QMODBUSSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

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
#endif
}

/*
int serverAddress() const
*/
HB_FUNC_STATIC( QMODBUSSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->serverAddress() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setServerAddress(int serverAddress)
*/
/*
virtual bool setMap(const QModbusDataUnitMap &map)
*/
/*
virtual bool processesBroadcast() const
*/
HB_FUNC_STATIC( QMODBUSSERVER_PROCESSESBROADCAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = qobject_cast<QModbusServer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->processesBroadcast() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual QVariant value(int option) const
*/
/*
virtual bool setValue(int option, const QVariant &value)
*/
/*
bool data(QModbusDataUnit *newData) const
*/
/*
bool setData(const QModbusDataUnit &unit)
*/
/*
bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)
*/
/*
bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const
*/

/*
void dataWritten( QModbusDataUnit::RegisterType table, int address, int size )
*/
HB_FUNC_STATIC( QMODBUSSERVER_ONDATAWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("dataWritten(QModbusDataUnit::RegisterType,int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QModbusServer::dataWritten,
                                                              [sender, indexOfCodeBlock]
                                                              (QModbusDataUnit::RegisterType arg1, int arg2, int arg3) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMODBUSSERVER");
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            PHB_ITEM pArg3 = hb_itemPutNI( nullptr, arg3 );
            hb_vmEvalBlockV(cb, 4, pSender, pArg1, pArg2, pArg3);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
            hb_itemRelease(pArg3);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
