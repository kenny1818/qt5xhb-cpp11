/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTimer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTimer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QTimer>
#endif

/*
QTimer( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QTIMER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    auto obj = new QTimer( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTIMER_DELETE )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int interval() const
*/
HB_FUNC_STATIC( QTIMER_INTERVAL )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->interval() );
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
bool isActive() const
*/
HB_FUNC_STATIC( QTIMER_ISACTIVE )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
bool isSingleShot() const
*/
HB_FUNC_STATIC( QTIMER_ISSINGLESHOT )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSingleShot() );
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
void setInterval( int msec )
*/
HB_FUNC_STATIC( QTIMER_SETINTERVAL )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setInterval( PINT(1) );
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
void setSingleShot( bool singleShot )
*/
HB_FUNC_STATIC( QTIMER_SETSINGLESHOT )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSingleShot( PBOOL(1) );
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
int timerId() const
*/
HB_FUNC_STATIC( QTIMER_TIMERID )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timerId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void start( int msec )
    */
    auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->start( PINT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(0) )
  {
    /*
    void start()
    */
    auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->start();
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void stop()
*/
HB_FUNC_STATIC( QTIMER_STOP )
{
  auto obj = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
static void singleShot( int msec, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTIMER_SINGLESHOT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && HB_ISNUM(1) && ISQOBJECT(2) && HB_ISCHAR(3) )
  {
#endif
    QTimer::singleShot( PINT(1), PQOBJECT(2), PCONSTCHAR(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
void timeout()
*/
HB_FUNC_STATIC( QTIMER_ONTIMEOUT )
{
  auto sender = qobject_cast<QTimer*>(Qt5xHb::getQObjectPointerFromSelfItem());

  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("timeout()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QTimer::timeout,
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QTIMER");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
