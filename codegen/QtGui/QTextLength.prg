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

$prototype=QTextLength()
$internalConstructor=|new1|

$prototype=QTextLength(Type type, qreal value)
$internalConstructor=|new2|QTextLength::Type,qreal

/*
[1]QTextLength()
[2]QTextLength(Type type, qreal value)
*/

HB_FUNC_STATIC( QTEXTLENGTH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLength_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextLength_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QTextLength::Type type() const

$prototype=qreal value(qreal maximumLength) const
$method=|qreal|value|qreal

$prototypeV2=qreal rawValue() const

$extraMethods

#pragma ENDDUMP
