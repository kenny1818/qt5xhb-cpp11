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

$prototype=explicit QAudioProbe(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAudioProbe()
$deleteMethod

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool setSource(QMediaObject * source)
$internalMethod=|bool|setSource,setSource1|QMediaObject *

$prototype=bool setSource(QMediaRecorder * source)
$internalMethod=|bool|setSource,setSource2|QMediaRecorder *

//[1]bool setSource(QMediaObject * source)
//[2]bool setSource(QMediaRecorder * mediaRecorder)

HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QAudioProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QAudioProbe_setSource2();
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

$prototype=void audioBufferProbed( const QAudioBuffer & buffer )
$signalMethod=|void|audioBufferProbed|const QAudioBuffer &

$prototype=void flush()
$signalMethod=|void|flush|

#pragma ENDDUMP
