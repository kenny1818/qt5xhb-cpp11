/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QLINESERIES
REQUEST QPEN
#endif

CLASS QAreaSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD upperSeries
   METHOD lowerSeries
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD pointLabelsFormat
   METHOD setPointLabelsFormat
   METHOD pointLabelsVisible
   METHOD setPointLabelsVisible
   METHOD pointLabelsFont
   METHOD setPointLabelsFont
   METHOD pointLabelsColor
   METHOD setPointLabelsColor
   METHOD pointLabelsClipping
   METHOD setPointLabelsClipping
   METHOD type
   METHOD setUpperSeries
   METHOD setLowerSeries
   METHOD setPen
   METHOD pen
   METHOD setBrush
   METHOD brush
   METHOD setPointsVisible
   METHOD pointsVisible

   METHOD onBorderColorChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAreaSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAreaSeries>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAreaSeries>
#endif
#endif

using namespace QtCharts;

#include <QtCharts/QLineSeries>

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QAreaSeries( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QAreaSeries( OPQOBJECT( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else if (ISBETWEEN(1, 2) && ISQLINESERIES(1) && (ISQLINESERIES(2) || HB_ISNIL(2)))
  {
    /*
    QAreaSeries( QLineSeries * upperSeries, QLineSeries * lowerSeries = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QAreaSeries(PQLINESERIES(1), OPQLINESERIES( 2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QAreaSeries()
*/
HB_FUNC_STATIC( QAREASERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
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
#endif
}

/*
QLineSeries * upperSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_UPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->upperSeries();
      Qt5xHb::createReturnQObjectClass(ptr, "QLINESERIES");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QLineSeries * lowerSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_LOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->lowerSeries();
      Qt5xHb::createReturnQObjectClass(ptr, "QLINESERIES");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QColor color() const
*/
HB_FUNC_STATIC( QAREASERIES_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QColor(obj->color());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setColor( HB_ISOBJECT(1) ? *static_cast<QColor*>(Qt5xHb::itemGetPtr(1)) : QColor( hb_parc(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QAREASERIES_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QColor(obj->borderColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBorderColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setBorderColor( HB_ISOBJECT(1) ? *static_cast<QColor*>(Qt5xHb::itemGetPtr(1)) : QColor( hb_parc(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString pointLabelsFormat() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->pointLabelsFormat());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointLabelsFormat( const QString & format )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPointLabelsFormat(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool pointLabelsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->pointLabelsVisible());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointLabelsVisible( bool visible = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setPointLabelsVisible( OPBOOL( 1, true));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QFont pointLabelsFont() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QFont(obj->pointLabelsFont());
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointLabelsFont( const QFont & font )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQFONT(1))
    {
#endif
      obj->setPointLabelsFont( *PQFONT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColor pointLabelsColor() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QColor(obj->pointLabelsColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointLabelsColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setPointLabelsColor( HB_ISOBJECT(1) ? *static_cast<QColor*>(Qt5xHb::itemGetPtr(1)) : QColor( hb_parc(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool pointLabelsClipping() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->pointLabelsClipping());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointLabelsClipping( bool enabled = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setPointLabelsClipping( OPBOOL( 1, true));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QAREASERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setUpperSeries( QLineSeries * series )
*/
HB_FUNC_STATIC( QAREASERIES_SETUPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLINESERIES(1))
    {
#endif
      obj->setUpperSeries(PQLINESERIES(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setLowerSeries( QLineSeries * series )
*/
HB_FUNC_STATIC( QAREASERIES_SETLOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQLINESERIES(1))
    {
#endif
      obj->setLowerSeries(PQLINESERIES(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QAREASERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPEN(1))
    {
#endif
      obj->setPen( *PQPEN(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QAREASERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPen(obj->pen());
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QAREASERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
#endif
      obj->setBrush( *PQBRUSH(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QAREASERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QBrush(obj->brush());
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPointsVisible( bool visible = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setPointsVisible( OPBOOL( 1, true));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool pointsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->pointsVisible());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void borderColorChanged( QColor color )
*/
HB_FUNC_STATIC( QAREASERIES_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("borderColorChanged(QColor)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::borderColorChanged,
                                           [sender, indexOfCodeBlock]
                                           (QColor arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QCOLOR");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void clicked( const QPointF & point )
*/
HB_FUNC_STATIC( QAREASERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("clicked(QPointF)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::clicked,
                                           [sender, indexOfCodeBlock]
                                           (const QPointF & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QPOINTF");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void colorChanged( QColor color )
*/
HB_FUNC_STATIC( QAREASERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("colorChanged(QColor)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::colorChanged,
                                           [sender, indexOfCodeBlock]
                                           (QColor arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QCOLOR");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void doubleClicked( const QPointF & point )
*/
HB_FUNC_STATIC( QAREASERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("doubleClicked(QPointF)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::doubleClicked,
                                           [sender, indexOfCodeBlock]
                                           (const QPointF & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QPOINTF");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void hovered( const QPointF & point, bool state )
*/
HB_FUNC_STATIC( QAREASERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("hovered(QPointF,bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::hovered,
                                           [sender, indexOfCodeBlock]
                                           (const QPointF & arg1, bool arg2) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QPOINTF");
            auto pArg2 = hb_itemPutL(nullptr, arg2);
            hb_vmEvalBlockV(cb, 3, pSender, pArg1, pArg2);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pointLabelsClippingChanged( bool clipping )
*/
HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pointLabelsClippingChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pointLabelsClippingChanged,
                                           [sender, indexOfCodeBlock]
                                           (bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pointLabelsColorChanged( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pointLabelsColorChanged(QColor)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pointLabelsColorChanged,
                                           [sender, indexOfCodeBlock]
                                           (const QColor & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QCOLOR");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pointLabelsFontChanged( const QFont & font )
*/
HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pointLabelsFontChanged(QFont)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pointLabelsFontChanged,
                                           [sender, indexOfCodeBlock]
                                           (const QFont & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QFONT");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pointLabelsFormatChanged( const QString & format )
*/
HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pointLabelsFormatChanged(QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pointLabelsFormatChanged,
                                           [sender, indexOfCodeBlock]
                                           (const QString & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg1));
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pointLabelsVisibilityChanged( bool visible )
*/
HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pointLabelsVisibilityChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pointLabelsVisibilityChanged,
                                           [sender, indexOfCodeBlock]
                                           (bool arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = hb_itemPutL(nullptr, arg1);
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void pressed( const QPointF & point )
*/
HB_FUNC_STATIC( QAREASERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("pressed(QPointF)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::pressed,
                                           [sender, indexOfCodeBlock]
                                           (const QPointF & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QPOINTF");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void released( const QPointF & point )
*/
HB_FUNC_STATIC( QAREASERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("released(QPointF)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::released,
                                           [sender, indexOfCodeBlock]
                                           (const QPointF & arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            auto pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QPOINTF");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

/*
void selected()
*/
HB_FUNC_STATIC( QAREASERIES_ONSELECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = qobject_cast<QAreaSeries*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("selected()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender,
                                           &QAreaSeries::selected,
                                           [sender, indexOfCodeBlock]
                                           () {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAREASERIES");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
