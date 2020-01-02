%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebInspector ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$prototype=~QWebInspector()
$deleteMethod

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

%% TODO: is virtual ?
$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

%% TODO: is virtual ?
$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
