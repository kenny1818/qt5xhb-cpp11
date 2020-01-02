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

$beginClassFrom=QAbstractSlider

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollBar ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QScrollBar ( Qt::Orientation orientation, QWidget * parent = nullptr )
$internalConstructor=|new2|Qt::Orientation,QWidget *=nullptr

//[1]QScrollBar ( QWidget * parent = nullptr )
//[2]QScrollBar ( Qt::Orientation orientation, QWidget * parent = nullptr )

HB_FUNC_STATIC( QSCROLLBAR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QScrollBar_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QScrollBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
