/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD audioSettings
   METHOD codecDescription
   METHOD setAudioSettings
   METHOD supportedAudioCodecs
   METHOD supportedSampleRates

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioEncoderSettingsControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioEncoderSettingsControl>
#endif

/*
virtual ~QAudioEncoderSettingsControl()
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_DELETE )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_AUDIOSETTINGS )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QAudioEncoderSettings( obj->audioSettings() );
      Qt5xHb::createReturnClass(ptr, "QAUDIOENCODERSETTINGS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QString codecDescription( const QString & codecName ) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_CODECDESCRIPTION )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->codecDescription( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setAudioSettings( const QAudioEncoderSettings & settings ) = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SETAUDIOSETTINGS )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
    {
#endif
      obj->setAudioSettings( *PQAUDIOENCODERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QStringList supportedAudioCodecs() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDAUDIOCODECS )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedAudioCodecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QList<int> supportedSampleRates( const QAudioEncoderSettings & settings, bool * continuous = nullptr ) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDSAMPLERATES )
{
  auto obj = qobject_cast<QAudioEncoderSettingsControl*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQAUDIOENCODERSETTINGS(1) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
    {
#endif
      bool par2;
      QList<int> list = obj->supportedSampleRates( *PQAUDIOENCODERSETTINGS(1), &par2 );
      Qt5xHb::convert_qlist_int_to_array( list );
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
