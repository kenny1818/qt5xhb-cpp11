%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemDelegate ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=bool hasClipping () const
$method=|bool|hasClipping|

$prototype=QItemEditorFactory * itemEditorFactory () const
$method=|QItemEditorFactory *|itemEditorFactory|

$prototype=void setClipping ( bool clip )
$method=|void|setClipping|bool

$prototype=void setItemEditorFactory ( QItemEditorFactory * factory )
$method=|void|setItemEditorFactory|QItemEditorFactory *

#pragma ENDDUMP
