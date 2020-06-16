%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXmlReader

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSimpleReader ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool parse ( const QXmlInputSource * input, bool incremental )
$virtualMethod=|bool|parse|const QXmlInputSource *,bool

$prototypeV2=virtual bool parseContinue()

#pragma ENDDUMP
