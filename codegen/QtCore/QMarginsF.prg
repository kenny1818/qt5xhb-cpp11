%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMarginsF()
$internalConstructor=|new1|

$prototype=QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
$internalConstructor=|new2|qreal,qreal,qreal,qreal

$prototype=QMarginsF(const QMargins &margins)
$internalConstructor=|new3|const QMargins &

/*
[1]QMarginsF()
[2]QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
[3]QMarginsF(const QMargins &margins)
*/

HB_FUNC_STATIC( QMARGINSF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMarginsF_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMarginsF_new2();
  }
  else if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QMarginsF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=qreal left() const
$method=|qreal|left|

$prototype=qreal top() const
$method=|qreal|top|

$prototype=qreal right() const
$method=|qreal|right|

$prototype=qreal bottom() const
$method=|qreal|bottom|

$prototype=void setLeft(qreal left)
$method=|void|setLeft|qreal

$prototype=void setTop(qreal top)
$method=|void|setTop|qreal

$prototype=void setRight(qreal right)
$method=|void|setRight|qreal

$prototype=void setBottom(qreal bottom)
$method=|void|setBottom|qreal

$prototype=QMargins toMargins() const
$method=|QMargins|toMargins|

$extraMethods

#pragma ENDDUMP
