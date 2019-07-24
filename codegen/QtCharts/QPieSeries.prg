%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QPieSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QPieSeries()
$deleteMethod

%%
%% Q_PROPERTY(qreal horizontalPosition READ horizontalPosition WRITE setHorizontalPosition)
%%

$prototype=qreal horizontalPosition() const
$method=|qreal|horizontalPosition|

$prototype=void setHorizontalPosition(qreal relativePosition)
$method=|void|setHorizontalPosition|qreal

%%
%% Q_PROPERTY(qreal verticalPosition READ verticalPosition WRITE setVerticalPosition)
%%

$prototype=qreal verticalPosition() const
$method=|qreal|verticalPosition|

$prototype=void setVerticalPosition(qreal relativePosition)
$method=|void|setVerticalPosition|qreal

%%
%% Q_PROPERTY(qreal size READ pieSize WRITE setPieSize)
%%

$prototype=qreal pieSize() const
$method=|qreal|pieSize|

$prototype=void setPieSize(qreal relativeSize)
$method=|void|setPieSize|qreal

%%
%% Q_PROPERTY(qreal startAngle READ pieStartAngle WRITE setPieStartAngle)
%%

$prototype=qreal pieStartAngle() const
$method=|qreal|pieStartAngle|

$prototype=void setPieStartAngle(qreal startAngle)
$method=|void|setPieStartAngle|qreal

%%
%% Q_PROPERTY(qreal endAngle READ pieEndAngle WRITE setPieEndAngle)
%%

$prototype=qreal pieEndAngle() const
$method=|qreal|pieEndAngle|

$prototype=void setPieEndAngle(qreal endAngle)
$method=|void|setPieEndAngle|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(qreal sum READ sum NOTIFY sumChanged)
%%

$prototype=qreal sum() const
$method=|qreal|sum|

%%
%% Q_PROPERTY(qreal holeSize READ holeSize WRITE setHoleSize)
%%

$prototype=qreal holeSize() const
$method=|qreal|holeSize|

$prototype=void setHoleSize(qreal holeSize)
$method=|void|setHoleSize|qreal

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=bool append(QPieSlice *slice)
$internalMethod=|bool|append,append1|QPieSlice *

$prototype=bool append(QList<QPieSlice *> slices)
$internalMethod=|bool|append,append2|QList<QPieSlice *>

$prototype=QPieSlice *append(QString label, qreal value)
$internalMethod=|QPieSlice *|append,append3|QString,qreal

//[1]bool append(QPieSlice *slice)
//[2]bool append(QList<QPieSlice *> slices)
//[3]QPieSlice *append(QString label, qreal value)

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool insert(int index, QPieSlice *slice)
$method=|bool|insert|int,QPieSlice *

$prototype=bool remove(QPieSlice *slice)
$method=|bool|remove|QPieSlice *

$prototype=bool take(QPieSlice *slice)
$method=|bool|take|QPieSlice *

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QPieSlice *> slices() const
$method=|QList<QPieSlice *>|slices|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void setLabelsVisible(bool visible = true)
$method=|void|setLabelsVisible|bool=true

$prototype=void setLabelsPosition(QPieSlice::LabelPosition position)
$method=|void|setLabelsPosition|QPieSlice::LabelPosition

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void added( QList<QPieSlice*> slices )
$signalMethod=|void|added|QList<QPieSlice*>

$prototype=void clicked( QPieSlice * slice )
$signalMethod=|void|clicked|QPieSlice *

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void doubleClicked( QPieSlice * slice )
$signalMethod=|void|doubleClicked|QPieSlice *

$prototype=void hovered( QPieSlice * slice, bool state )
$signalMethod=|void|hovered|QPieSlice *,bool

$prototype=void pressed( QPieSlice * slice )
$signalMethod=|void|pressed|QPieSlice *

$prototype=void released( QPieSlice * slice )
$signalMethod=|void|released|QPieSlice *

$prototype=void removed( QList<QPieSlice*> slices )
$signalMethod=|void|removed|QList<QPieSlice*>

$prototype=void sumChanged()
$signalMethod=|void|sumChanged|

#pragma ENDDUMP
