%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScriptTools

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScriptTools/QtScriptToolsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtScriptTools/QtScriptToolsVersion>
#endif

HB_FUNC( QTSCRIPTTOOLS_VERSION_STR )
{
  hb_retc( (const char *) QTSCRIPTTOOLS_VERSION_STR );
}

HB_FUNC( QTSCRIPTTOOLS_VERSION )
{
  hb_retni( QTSCRIPTTOOLS_VERSION );
}
