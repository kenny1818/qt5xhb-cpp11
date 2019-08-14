%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,8,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusServer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QModbusTcpServer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QModbusTcpServer(QModbusTcpServerPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusTcpServer()
$deleteMethod

$prototype=bool open() override [protected]

$prototype=void close() override [protected]

$prototype=QModbusResponse processRequest(const QModbusPdu &request) override [protected]

#pragma ENDDUMP
