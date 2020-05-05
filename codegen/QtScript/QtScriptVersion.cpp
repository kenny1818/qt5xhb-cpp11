%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScript/QtScriptVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtScript/QtScriptVersion>
#endif

HB_FUNC( QTSCRIPT_VERSION_STR )
{
  hb_retc( (const char *) QTSCRIPT_VERSION_STR );
}

HB_FUNC( QTSCRIPT_VERSION )
{
  hb_retni( QTSCRIPT_VERSION );
}
