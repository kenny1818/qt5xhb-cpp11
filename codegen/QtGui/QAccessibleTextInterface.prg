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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void selection(int selectionIndex, int *startOffset, int *endOffset) const = 0
$virtualMethod=|void|selection|int,int *,int *

$prototypeV2=virtual int selectionCount() const = 0

$prototype=virtual void addSelection(int startOffset, int endOffset) = 0
$virtualMethod=|void|addSelection|int,int

$prototype=virtual void removeSelection(int selectionIndex) = 0
$virtualMethod=|void|removeSelection|int

$prototype=virtual void setSelection(int selectionIndex, int startOffset, int endOffset) = 0
$virtualMethod=|void|setSelection|int,int,int

$prototypeV2=virtual int cursorPosition() const = 0

$prototype=virtual void setCursorPosition(int position) = 0
$virtualMethod=|void|setCursorPosition|int

$prototype=virtual QString text(int startOffset, int endOffset) const = 0
$virtualMethod=|QString|text|int,int

$prototypeV2=virtual int characterCount() const = 0

$prototype=virtual QRect characterRect(int offset) const = 0
$virtualMethod=|QRect|characterRect|int

$prototype=virtual int offsetAtPoint(const QPoint &point) const = 0
$virtualMethod=|int|offsetAtPoint|const QPoint &

$prototype=virtual void scrollToSubstring(int startIndex, int endIndex) = 0
$virtualMethod=|void|scrollToSubstring|int,int

$prototype=virtual QString attributes(int offset, int *startOffset, int *endOffset) const = 0
$virtualMethod=|QString|attributes|int,int *,int *

$extraMethods

#pragma ENDDUMP
