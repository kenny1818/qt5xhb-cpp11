%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsVideoItem(QGraphicsItem *parent = nullptr)
$constructor=|new|QGraphicsItem *=nullptr

$deleteMethod

$prototype=QMediaObject *mediaObject() const
$method=|QMediaObject *|mediaObject|

$prototype=Qt::AspectRatioMode aspectRatioMode() const
$method=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=void setAspectRatioMode(Qt::AspectRatioMode mode)
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=QPointF offset() const
$method=|QPointF|offset|

$prototype=void setOffset(const QPointF &offset)
$method=|void|setOffset|const QPointF &

$prototype=QSizeF size() const
$method=|QSizeF|size|

$prototype=void setSize(const QSizeF &size)
$method=|void|setSize|const QSizeF &

$prototype=QSizeF nativeSize() const
$method=|QSizeF|nativeSize|

$prototype=QRectF boundingRect() const
$method=|QRectF|boundingRect|

$prototype=void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = nullptr)
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

%%
%% SIGNALS
%%

$prototype=void nativeSizeChanged( const QSizeF & size )
$signalMethod=|void|nativeSizeChanged|const QSizeF &

#pragma ENDDUMP
