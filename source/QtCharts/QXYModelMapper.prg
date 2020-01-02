/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QXYModelMapper INHERIT QObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXYModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYModelMapper>
#endif
#endif

#include <QtCore/QAbstractItemModel>
#include <QtCharts/QXYSeries>

using namespace QtCharts;

/*
explicit QXYModelMapper(QObject *parent = nullptr) [protected]
*/

/*
QAbstractItemModel *model() const [protected]
*/

/*
void setModel(QAbstractItemModel *model) [protected]
*/

/*
QXYSeries *series() const [protected]
*/

/*
void setSeries(QXYSeries *series) [protected]
*/

/*
int first() const [protected]
*/

/*
void setFirst(int first) [protected]
*/

/*
int count() const [protected]
*/

/*
void setCount(int count) [protected]
*/

/*
Qt::Orientation orientation() const [protected]
*/

/*
void setOrientation(Qt::Orientation orientation) [protected]
*/

/*
int xSection() const [protected]
*/

/*
void setXSection(int xSection) [protected]
*/

/*
int ySection() const [protected]
*/

/*
void setYSection(int ySection) [protected]
*/

#pragma ENDDUMP
