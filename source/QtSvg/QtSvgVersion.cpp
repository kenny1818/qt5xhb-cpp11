/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSvg/QtSvgVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSvg/QtSvgVersion>
#endif

HB_FUNC( QTSVG_VERSION_STR )
{
  hb_retc( (const char *) QTSVG_VERSION_STR );
}

HB_FUNC( QTSVG_VERSION )
{
  hb_retni( QTSVG_VERSION );
}
