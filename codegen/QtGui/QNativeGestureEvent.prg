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

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
$constructor=|new|Qt::NativeGestureType,const QPointF &,const QPointF &,const QPointF &,qreal,ulong,quint64

$deleteMethod

$prototypeV2=Qt::NativeGestureType gestureType() const

$prototypeV2=qreal value() const

$prototype=const QPoint pos() const
$method=|const QPoint|pos|

$prototype=const QPoint globalPos() const
$method=|const QPoint|globalPos|

$prototype=const QPointF &localPos() const
$method=|const QPointF &|localPos|

$prototype=const QPointF &windowPos() const
$method=|const QPointF &|windowPos|

$prototype=const QPointF &screenPos() const
$method=|const QPointF &|screenPos|

#pragma ENDDUMP
