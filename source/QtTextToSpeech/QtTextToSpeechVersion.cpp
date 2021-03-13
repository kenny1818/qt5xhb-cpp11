/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QtTextToSpeechVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QtTextToSpeechVersion>
#endif
#endif

HB_FUNC( QTTEXTTOSPEECH_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retc( (const char *) QTTEXTTOSPEECH_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTTEXTTOSPEECH_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retni( QTTEXTTOSPEECH_VERSION );
#else
  hb_retni( 0 );
#endif
}
