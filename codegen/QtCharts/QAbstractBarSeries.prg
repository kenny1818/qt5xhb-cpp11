%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

#include <QtCharts/QBarSet>

$prototype=explicit QAbstractBarSeries(QAbstractBarSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractBarSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal barWidth READ barWidth WRITE setBarWidth)
%%

$prototype=qreal barWidth() const
$method=|qreal|barWidth|

$prototype=void setBarWidth(qreal width)
$method=|void|setBarWidth|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(bool labelsVisible READ isLabelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototype=bool isLabelsVisible() const
$method=|bool|isLabelsVisible|

$prototype=void setLabelsVisible(bool visible = true)
$method=|void|setLabelsVisible|bool=true

%%
%% Q_PROPERTY(QString labelsFormat READ labelsFormat WRITE setLabelsFormat NOTIFY labelsFormatChanged)
%%

$prototype=QString labelsFormat() const
$method=|QString|labelsFormat|

$prototype=void setLabelsFormat(const QString &format)
$method=|void|setLabelsFormat|const QString &

%%
%% Q_PROPERTY(qreal labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototype=qreal labelsAngle() const
$method=|qreal|labelsAngle|

$prototype=void setLabelsAngle(qreal angle)
$method=|void|setLabelsAngle|qreal

%%
%% Q_PROPERTY(LabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototype=QAbstractBarSeries::LabelsPosition labelsPosition() const
$method=|QAbstractBarSeries::LabelsPosition|labelsPosition|

$prototype=void setLabelsPosition(QAbstractBarSeries::LabelsPosition position)
$method=|void|setLabelsPosition|QAbstractBarSeries::LabelsPosition

%%
%%
%%

$prototype=bool append(QBarSet *set)
$internalMethod=|bool|append,append1|QBarSet *

$prototype=bool append(QList<QBarSet *> sets)
$internalMethod=|bool|append,append2|QList<QBarSet *>

/*
[1]bool append(QBarSet *set)
[2]bool append(QList<QBarSet *> sets)
*/

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBARSET(1) )
  {
    QAbstractBarSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAbstractBarSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool remove(QBarSet *set)
$method=|bool|remove|QBarSet *

$prototype=bool take(QBarSet *set)
$method=|bool|take|QBarSet *

$prototype=bool insert(int index, QBarSet *set)
$method=|bool|insert|int,QBarSet *

$prototype=QList<QBarSet *> barSets() const
$method=|QList<QBarSet *>|barSets|

$prototype=void clear()
$method=|void|clear|

%%
%% SIGNALS
%%

$prototype=void barsetsAdded( QList<QBarSet*> sets )
$signalMethod=|void|barsetsAdded|QList<QBarSet*>

$prototype=void barsetsRemoved( QList<QBarSet*> sets )
$signalMethod=|void|barsetsRemoved|QList<QBarSet*>

$prototype=void clicked( int index, QBarSet * barset )
$signalMethod=|void|clicked|int,QBarSet *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void doubleClicked( int index, QBarSet * barset )
$signalMethod=|void|doubleClicked|int,QBarSet *

$prototype=void hovered( bool status, int index, QBarSet * barset )
$signalMethod=|void|hovered|bool,int,QBarSet *

$prototype=void labelsAngleChanged( qreal angle )
$signalMethod=|void|labelsAngleChanged|qreal

$prototype=void labelsFormatChanged( const QString & format )
$signalMethod=|void|labelsFormatChanged|const QString &

$prototype=void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$signalMethod=|void|labelsPositionChanged|QAbstractBarSeries::LabelsPosition

$prototype=void labelsVisibleChanged()
$signalMethod=|void|labelsVisibleChanged|

$prototype=void pressed( int index, QBarSet * barset )
$signalMethod=|void|pressed|int,QBarSet *

$prototype=void released( int index, QBarSet * barset )
$signalMethod=|void|released|int,QBarSet *

#pragma ENDDUMP
