/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessible INHERIT QObject

   METHOD queryAccessibleInterface
   METHOD updateAccessibility
   METHOD isActive
   METHOD setRootObject
   METHOD cleanup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessible
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QAccessible>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QAccessible>
#endif

/*
static QAccessibleInterface * queryAccessibleInterface( QObject * )
*/
HB_FUNC_STATIC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface( PQOBJECT(1) );
    Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void updateAccessibility( QAccessibleEvent * event )
*/
HB_FUNC_STATIC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQACCESSIBLEEVENT(1) )
  {
#endif
    QAccessible::updateAccessibility( PQACCESSIBLEEVENT(1) );
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
static bool isActive()
*/
HB_FUNC_STATIC( QACCESSIBLE_ISACTIVE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAccessible::isActive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setRootObject( QObject * object )
*/
HB_FUNC_STATIC( QACCESSIBLE_SETROOTOBJECT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    QAccessible::setRootObject( PQOBJECT(1) );
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
static void cleanup()
*/
HB_FUNC_STATIC( QACCESSIBLE_CLEANUP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QAccessible::cleanup();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
