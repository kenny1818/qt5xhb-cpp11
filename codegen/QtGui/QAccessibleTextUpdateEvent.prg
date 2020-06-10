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

$beginClassFrom=QAccessibleTextCursorEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
$constructor=|new|QObject *,int,const QString &,const QString &

$deleteMethod

$prototypeV2=QString textRemoved() const

$prototypeV2=QString textInserted() const

$prototypeV2=int changePosition() const

#pragma ENDDUMP
