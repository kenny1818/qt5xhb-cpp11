%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DGraph

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DScatter(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
$constructor=|new|const QSurfaceFormat *=nullptr,QWindow *=nullptr

$prototype=virtual ~Q3DScatter()
$deleteMethod

%%
%% Q_PROPERTY(QValue3DAxis *axisX READ axisX WRITE setAxisX NOTIFY axisXChanged)
%%

$prototype=QValue3DAxis *axisX() const
$method=|QValue3DAxis *|axisX|

$prototype=void setAxisX(QValue3DAxis *axis)
$method=|void|setAxisX|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisY READ axisY WRITE setAxisY NOTIFY axisYChanged)
%%

$prototype=QValue3DAxis *axisY() const
$method=|QValue3DAxis *|axisY|

$prototype=void setAxisY(QValue3DAxis *axis)
$method=|void|setAxisY|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisZ READ axisZ WRITE setAxisZ NOTIFY axisZChanged)
%%

$prototype=QValue3DAxis *axisZ() const
$method=|QValue3DAxis *|axisZ|

$prototype=void setAxisZ(QValue3DAxis *axis)
$method=|void|setAxisZ|QValue3DAxis *

%%
%% Q_PROPERTY(QScatter3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototype=QScatter3DSeries *selectedSeries() const
$method=|QScatter3DSeries *|selectedSeries|

%%
%%
%%

$prototype=void addSeries(QScatter3DSeries *series)
$method=|void|addSeries|QScatter3DSeries *

$prototype=void removeSeries(QScatter3DSeries *series)
$method=|void|removeSeries|QScatter3DSeries *

$prototype=QList<QScatter3DSeries *> seriesList() const
$method=|QList<QScatter3DSeries *>|seriesList|

$prototype=void addAxis(QValue3DAxis *axis)
$method=|void|addAxis|QValue3DAxis *

$prototype=void releaseAxis(QValue3DAxis *axis)
$method=|void|releaseAxis|QValue3DAxis *

$prototype=QList<QValue3DAxis *> axes() const
$method=|QList<QValue3DAxis *>|axes|

%%
%% SIGNALS
%%

$prototype=void axisXChanged( QValue3DAxis * axis )
$signalMethod=|void|axisXChanged|QValue3DAxis *

$prototype=void axisYChanged( QValue3DAxis * axis )
$signalMethod=|void|axisYChanged|QValue3DAxis *

$prototype=void axisZChanged( QValue3DAxis * axis )
$signalMethod=|void|axisZChanged|QValue3DAxis *

$prototype=void selectedSeriesChanged( QScatter3DSeries * series )
$signalMethod=|void|selectedSeriesChanged|QScatter3DSeries *

#pragma ENDDUMP
