%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
$internalConstructor=|new1|const QBluetoothAddress &=QBluetoothAddress()

$prototype=QBluetoothTransferRequest(const QBluetoothTransferRequest &other)
$internalConstructor=|new2|const QBluetoothTransferRequest &

/*
[1]QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
[2]QBluetoothTransferRequest(const QBluetoothTransferRequest &other)
*/

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) )
  {
    QBluetoothTransferRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1) )
  {
    QBluetoothTransferRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QVariant attribute( QBluetoothTransferRequest::Attribute code, const QVariant & defaultValue = QVariant() ) const

$prototypeV2=void setAttribute( QBluetoothTransferRequest::Attribute code, const QVariant & value )

$prototypeV2=QBluetoothAddress address() const

$extraMethods

#pragma ENDDUMP
