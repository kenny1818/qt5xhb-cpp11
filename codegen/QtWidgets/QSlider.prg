%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSlider

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSlider ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QSlider ( Qt::Orientation orientation, QWidget * parent = nullptr )
$internalConstructor=|new2|Qt::Orientation,QWidget *=nullptr

/*
[1]QSlider ( QWidget * parent = nullptr )
[2]QSlider ( Qt::Orientation orientation, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QSLIDER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSlider_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int tickInterval () const
$method=|int|tickInterval|

$prototype=void setTickInterval ( int ti )
$method=|void|setTickInterval|int

$prototype=TickPosition tickPosition () const
$method=|QSlider::TickPosition|tickPosition|

$prototype=void setTickPosition ( TickPosition position )
$method=|void|setTickPosition|QSlider::TickPosition

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
