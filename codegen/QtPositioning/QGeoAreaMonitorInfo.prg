%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$prototype=QGeoAreaMonitorInfo(const QString &name = QString())
$internalConstructor=|new1|const QString &=QString()

$prototype=QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
$internalConstructor=|new2|const QGeoAreaMonitorInfo &

/*
[1]QGeoAreaMonitorInfo(const QString &name = QString())
[2]QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
*/

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    QGeoAreaMonitorInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
  {
    QGeoAreaMonitorInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QString identifier() const
$method=|QString|identifier|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QGeoShape area() const
$method=|QGeoShape|area|

$prototype=void setArea(const QGeoShape &newShape)
$method=|void|setArea|const QGeoShape &

$prototype=QDateTime expiration() const
$method=|QDateTime|expiration|

$prototype=void setExpiration(const QDateTime &expiry)
$method=|void|setExpiration|const QDateTime &

$prototype=bool isPersistent() const
$method=|bool|isPersistent|

$prototype=void setPersistent(bool isPersistent)
$method=|void|setPersistent|bool

$extraMethods

#pragma ENDDUMP
