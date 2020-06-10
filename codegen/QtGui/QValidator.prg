%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
$virtualMethod=|void|fixup|QString &

$prototypeV2=QLocale locale () const

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=virtual State validate ( QString & input, int & pos ) const = 0
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
