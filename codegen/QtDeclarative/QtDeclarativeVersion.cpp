%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QtDeclarativeVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDeclarative/QtDeclarativeVersion>
#endif

HB_FUNC( QTDECLARATIVE_VERSION_STR )
{
  hb_retc( (const char *) QTDECLARATIVE_VERSION_STR );
}

HB_FUNC( QTDECLARATIVE_VERSION )
{
  hb_retni( QTDECLARATIVE_VERSION );
}
