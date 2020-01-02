%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWebEngineUrlRequestInterceptor(QObject *p = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

$prototype=virtual void interceptRequest(QWebEngineUrlRequestInfo &info) = 0
$virtualMethod=|void|interceptRequest|QWebEngineUrlRequestInfo &

#pragma ENDDUMP
