%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoProbe(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QVideoProbe()
$deleteMethod

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool setSource(QMediaObject * source)
$internalMethod=|bool|setSource,setSource1|QMediaObject *

$prototype=bool setSource(QMediaRecorder * source)
$internalMethod=|bool|setSource,setSource2|QMediaRecorder *

/*
[1]bool setSource(QMediaObject * source)
[2]bool setSource(QMediaRecorder * mediaRecorder)
*/

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QVideoProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QVideoProbe_setSource2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSource

%%
%% SIGNALS
%%

$prototype=void flush()
$signalMethod=|void|flush|

$prototype=void videoFrameProbed( const QVideoFrame & frame )
$signalMethod=|void|videoFrameProbed|const QVideoFrame &

#pragma ENDDUMP
