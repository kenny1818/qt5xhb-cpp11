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

$prototype=QGlyphRun ()
$internalConstructor=|new1|

$prototype=QGlyphRun ( const QGlyphRun & other )
$internalConstructor=|new2|const QGlyphRun &

/*
[1]QGlyphRun ()
[2]QGlyphRun ( const QGlyphRun & other )
*/

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGlyphRun_new1();
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    QGlyphRun_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=bool overline() const

$prototypeV2=QRawFont rawFont() const

$prototype=void setOverline ( bool overline )
$method=|void|setOverline|bool

$prototype=void setRawData ( const quint32 * glyphIndexArray, const QPointF * glyphPositionArray, int size )
%% TODO: corrigir implementacao
%% $method=|void|setRawData|const quint32 *,const QPointF *,int

$prototype=void setRawFont ( const QRawFont & rawFont )
$method=|void|setRawFont|const QRawFont &

$prototype=void setStrikeOut ( bool strikeOut )
$method=|void|setStrikeOut|bool

$prototype=void setUnderline ( bool underline )
$method=|void|setUnderline|bool

$prototypeV2=bool strikeOut() const

$prototypeV2=bool underline() const

$extraMethods

#pragma ENDDUMP
