%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinTaskbarProgress(QObject *parent = nullptr)
$constructor=5,2,0|new|QObject *=nullptr

$deleteMethod=5,2,0

$prototype=int value() const
$method=5,2,0|int|value|

$prototype=void setValue(int value)
$method=5,2,0|void|setValue|int

$prototype=int minimum() const
$method=5,2,0|int|minimum|

$prototype=void setMinimum(int minimum)
$method=5,2,0|void|setMinimum|int

$prototype=int maximum() const
$method=5,2,0|int|maximum|

$prototype=void setMaximum(int maximum)
$method=5,2,0|void|setMaximum|int

$prototype=bool isVisible() const
$method=5,2,0|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=5,2,0|void|setVisible|bool

$prototype=bool isPaused() const
$method=5,2,0|bool|isPaused|

$prototype=void setPaused(bool paused)
$method=5,2,0|void|setPaused|bool

$prototype=bool isStopped() const
$method=5,2,0|bool|isStopped|

$prototype=void setRange(int minimum, int maximum)
$method=5,2,0|void|setRange|int,int

$prototype=void reset()
$method=5,2,0|void|reset|

$prototype=void show()
$method=5,2,0|void|show|

$prototype=void hide()
$method=5,2,0|void|hide|

$prototype=void pause()
$method=5,2,0|void|pause|

$prototype=void resume()
$method=5,2,0|void|resume|

$prototype=void stop()
$method=5,2,0|void|stop|

%%
%% SIGNALS
%%

$prototype=void valueChanged( int value )
$signalMethod=5,2,0|void|valueChanged|int

$prototype=void minimumChanged( int minimum )
$signalMethod=5,2,0|void|minimumChanged|int

$prototype=void maximumChanged( int maximum )
$signalMethod=5,2,0|void|maximumChanged|int

$prototype=void visibilityChanged( bool visible )
$signalMethod=5,2,0|void|visibilityChanged|bool

$prototype=void pausedChanged( bool paused )
$signalMethod=5,2,0|void|pausedChanged|bool

$prototype=void stoppedChanged( bool stopped )
$signalMethod=5,2,0|void|stoppedChanged|bool

#pragma ENDDUMP
