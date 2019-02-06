%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = nullptr )
$constructor=|new|int,QAction *,QAction *=nullptr

$deleteMethod

$prototype=QAction * action () const
$method=|QAction *|action|

$prototype=QAction * before () const
$method=|QAction *|before|

#pragma ENDDUMP
