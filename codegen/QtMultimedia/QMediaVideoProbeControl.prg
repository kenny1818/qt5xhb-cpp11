%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaVideoProbeControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QMediaVideoProbeControl()
$deleteMethod

$beginSignals
$signal=|flush()
$signal=|videoFrameProbed(QVideoFrame)
$endSignals

$beginSlotsClass
$signal=|flush()
$signal=|videoFrameProbed( const QVideoFrame & frame )
$endSlotsClass

#pragma ENDDUMP
