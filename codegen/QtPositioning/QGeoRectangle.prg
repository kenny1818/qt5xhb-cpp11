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

$beginClassFrom=QGeoShape

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGeoRectangle()
$internalConstructor=|new1|

$prototype=QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
$internalConstructor=|new2|const QGeoCoordinate &,double,double

$prototype=QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
$internalConstructor=|new3|const QGeoCoordinate &,const QGeoCoordinate &

$prototype=QGeoRectangle(const QGeoRectangle &other)
$internalConstructor=|new4|const QGeoRectangle &

$prototype=QGeoRectangle(const QGeoShape &other)
$internalConstructor=|new5|const QGeoShape &

/*
[1]QGeoRectangle()
[2]QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
[3]QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
[4]QGeoRectangle(const QGeoRectangle &other)
[5]QGeoRectangle(const QGeoShape &other)
*/

HB_FUNC_STATIC( QGEORECTANGLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRectangle_new1();
  }
  else if( ISNUMPAR(3) && ISQGEOCOORDINATE(1) && ISNUM(2) && ISNUM(3) )
  {
    QGeoRectangle_new2();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    QGeoRectangle_new3();
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    QGeoRectangle_new4();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoRectangle_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setTopLeft(const QGeoCoordinate &topLeft)
$method=|void|setTopLeft|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate topLeft() const

$prototype=void setTopRight(const QGeoCoordinate &topRight)
$method=|void|setTopRight|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate topRight() const

$prototype=void setBottomLeft(const QGeoCoordinate &bottomLeft)
$method=|void|setBottomLeft|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate bottomLeft() const

$prototype=void setBottomRight(const QGeoCoordinate &bottomRight)
$method=|void|setBottomRight|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate bottomRight() const

$prototype=void setCenter(const QGeoCoordinate &center)
$method=|void|setCenter|const QGeoCoordinate &

$prototypeV2=QGeoCoordinate center() const

$prototype=void setWidth(double degreesWidth)
$method=|void|setWidth|double

$prototypeV2=double width() const

$prototype=void setHeight(double degreesHeight)
$method=|void|setHeight|double

$prototypeV2=double height() const

$prototype=bool contains(const QGeoCoordinate &coordinate) const
$internalMethod=|bool|contains,contains1|const QGeoCoordinate &

$prototype=bool contains(const QGeoRectangle &rectangle) const
$internalMethod=|bool|contains,contains2|const QGeoRectangle &

/*
[1]bool contains(const QGeoCoordinate &coordinate) const
[2]bool contains(const QGeoRectangle &rectangle) const
*/

HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    QGeoRectangle_contains1();
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    QGeoRectangle_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=contains

$prototype=bool intersects(const QGeoRectangle &rectangle) const
$method=|bool|intersects|const QGeoRectangle &

$prototype=void translate(double degreesLatitude, double degreesLongitude)
$method=|void|translate|double,double

$prototype=QGeoRectangle translated(double degreesLatitude, double degreesLongitude) const
$method=|QGeoRectangle|translated|double,double

$prototype=QGeoRectangle united(const QGeoRectangle &rectangle) const
$method=|QGeoRectangle|united|const QGeoRectangle &

#pragma ENDDUMP
