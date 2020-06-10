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

$beginClassFrom=QAccessibleInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=bool isValid() const

$prototypeV2=QObject * object() const

$prototypeV2=QRect rect() const

$prototype=void setText(QAccessible::Text t, const QString &text)
$method=|void|setText|QAccessible::Text,const QString &

$prototype=QAccessibleInterface *childAt(int x, int y) const
$method=|QAccessibleInterface *|childAt|int,int

#pragma ENDDUMP
