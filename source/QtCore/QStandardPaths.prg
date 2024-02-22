/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStandardPaths

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD writableLocation
   METHOD standardLocations
   METHOD locate
   METHOD locateAll
   METHOD displayName
   METHOD findExecutable
   METHOD setTestModeEnabled
   METHOD isTestModeEnabled

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStandardPaths
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QStandardPaths>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QStandardPaths>
#endif

/*
static QString writableLocation( QStandardPaths::StandardLocation type )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_WRITABLELOCATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RQSTRING( QStandardPaths::writableLocation( static_cast<QStandardPaths::StandardLocation>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList standardLocations( QStandardPaths::StandardLocation type )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_STANDARDLOCATIONS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RQSTRINGLIST( QStandardPaths::standardLocations( static_cast<QStandardPaths::StandardLocation>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString locate( QStandardPaths::StandardLocation type, const QString & fileName, QStandardPaths::LocateOptions options = QStandardPaths::LocateFile )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
#endif
    RQSTRING( QStandardPaths::locate( static_cast<QStandardPaths::StandardLocation>( hb_parni(1) ), PQSTRING(2), HB_ISNIL(3) ? static_cast<QStandardPaths::LocateOptions >( QStandardPaths::LocateFile ) : static_cast<QStandardPaths::LocateOptions >( hb_parni(3) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList locateAll( QStandardPaths::StandardLocation type, const QString & fileName, QStandardPaths::LocateOptions options = QStandardPaths::LocateFile )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATEALL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
#endif
    RQSTRINGLIST( QStandardPaths::locateAll( static_cast<QStandardPaths::StandardLocation>( hb_parni(1) ), PQSTRING(2), HB_ISNIL(3) ? static_cast<QStandardPaths::LocateOptions >( QStandardPaths::LocateFile ) : static_cast<QStandardPaths::LocateOptions >( hb_parni(3) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString displayName( QStandardPaths::StandardLocation type )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_DISPLAYNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RQSTRING( QStandardPaths::displayName( static_cast<QStandardPaths::StandardLocation>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString findExecutable( const QString & executableName, const QStringList & paths = QStringList() )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_FINDEXECUTABLE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISARRAY(2) || HB_ISNIL(2) ) )
  {
#endif
    RQSTRING( QStandardPaths::findExecutable( PQSTRING(1), OPQSTRINGLIST( 2, QStringList() ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setTestModeEnabled( bool testMode )
*/
HB_FUNC_STATIC( QSTANDARDPATHS_SETTESTMODEENABLED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
#endif
    QStandardPaths::setTestModeEnabled( PBOOL(1) );
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
static bool isTestModeEnabled()
*/
HB_FUNC_STATIC( QSTANDARDPATHS_ISTESTMODEENABLED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QStandardPaths::isTestModeEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTANDARDPATHS_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDPATHS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTANDARDPATHS_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDPATHS_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSTANDARDPATHS_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
