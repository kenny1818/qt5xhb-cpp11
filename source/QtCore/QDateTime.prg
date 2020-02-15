/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATE
REQUEST QTIME
#endif

CLASS QDateTime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMSecs
   METHOD addMonths
   METHOD addSecs
   METHOD addYears
   METHOD date
   METHOD daysTo
   METHOD isNull
   METHOD isValid
   METHOD msecsTo
   METHOD secsTo
   METHOD setDate
   METHOD setMSecsSinceEpoch
   METHOD setTime
   METHOD setTimeSpec
   METHOD setTime_t
   METHOD time
   METHOD timeSpec
   METHOD toLocalTime
   METHOD toMSecsSinceEpoch
   METHOD toString
   METHOD toTimeSpec
   METHOD toTime_t
   METHOD toUTC
   METHOD currentDateTime
   METHOD currentDateTimeUtc
   METHOD currentMSecsSinceEpoch
   METHOD fromMSecsSinceEpoch
   METHOD fromString
   METHOD fromTime_t

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QDateTime>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtCore/QDateTime>
#endif

/*
QDateTime ()
*/
void QDateTime_new1 ()
{
  QDateTime * o = new QDateTime ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QDateTime ( const QDate & date )
*/
void QDateTime_new2 ()
{
  QDateTime * o = new QDateTime ( *PQDATE(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
*/
void QDateTime_new3 ()
{
  QDateTime * o = new QDateTime ( *PQDATE(1), *PQTIME(2), ISNIL(3)? (Qt::TimeSpec) Qt::LocalTime : (Qt::TimeSpec) hb_parni(3) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QDateTime ( const QDateTime & other )
*/
void QDateTime_new4 ()
{
  QDateTime * o = new QDateTime ( *PQDATETIME(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDateTime ()
//[2]QDateTime ( const QDate & date )
//[3]QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
//[4]QDateTime ( const QDateTime & other )

HB_FUNC_STATIC( QDATETIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDateTime_new1();
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    QDateTime_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDATE(1) && ISQTIME(2) && ISOPTNUM(3) )
  {
    QDateTime_new3();
  }
  else if( ISNUMPAR(1) && ISQDATETIME(1) )
  {
    QDateTime_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATETIME_DELETE )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDateTime addDays ( int ndays ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDDAYS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->addDays ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime addMSecs ( qint64 msecs ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMSECS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->addMSecs ( PQINT64(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime addMonths ( int nmonths ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMONTHS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->addMonths ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime addSecs ( int s ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDSECS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->addSecs ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime addYears ( int nyears ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDYEARS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->addYears ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDate date () const
*/
HB_FUNC_STATIC( QDATETIME_DATE )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDate * ptr = new QDate( obj->date () );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int daysTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_DAYSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RINT( obj->daysTo ( *PQDATETIME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QDATETIME_ISNULL )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDATETIME_ISVALID )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qint64 msecsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_MSECSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RQINT64( obj->msecsTo ( *PQDATETIME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int secsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_SECSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RINT( obj->secsTo ( *PQDATETIME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDate ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIME_SETDATE )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
#endif
      obj->setDate ( *PQDATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_SETMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMSecsSinceEpoch ( PQINT64(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTime ( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      obj->setTime ( *PQTIME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC_STATIC( QDATETIME_SETTIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTimeSpec ( (Qt::TimeSpec) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME_T )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTime_t ( PUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTime time () const
*/
HB_FUNC_STATIC( QDATETIME_TIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTime * ptr = new QTime( obj->time () );
      _qt5xhb_createReturnClass ( ptr, "QTIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::TimeSpec timeSpec () const
*/
HB_FUNC_STATIC( QDATETIME_TIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->timeSpec () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime toLocalTime () const
*/
HB_FUNC_STATIC( QDATETIME_TOLOCALTIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toLocalTime () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qint64 toMSecsSinceEpoch () const
*/
HB_FUNC_STATIC( QDATETIME_TOMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->toMSecsSinceEpoch () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString toString ( const QString & format ) const
*/
void QDateTime_toString1 ()
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RQSTRING( obj->toString ( PQSTRING(1) ) );
  }
}

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
void QDateTime_toString2 ()
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RQSTRING( obj->toString ( ISNIL(1)? (Qt::DateFormat) Qt::TextDate : (Qt::DateFormat) hb_parni(1) ) );
  }
}

//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATETIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDateTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDateTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDateTime toTimeSpec ( Qt::TimeSpec specification ) const
*/
HB_FUNC_STATIC( QDATETIME_TOTIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toTimeSpec ( (Qt::TimeSpec) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
uint toTime_t () const
*/
HB_FUNC_STATIC( QDATETIME_TOTIME_T )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->toTime_t () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDateTime toUTC () const
*/
HB_FUNC_STATIC( QDATETIME_TOUTC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toUTC () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QDateTime currentDateTime ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QDateTime * ptr = new QDateTime( QDateTime::currentDateTime () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDateTime currentDateTimeUtc ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIMEUTC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QDateTime * ptr = new QDateTime( QDateTime::currentDateTimeUtc () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static qint64 currentMSecsSinceEpoch ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTMSECSSINCEEPOCH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RQINT64( QDateTime::currentMSecsSinceEpoch () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDateTime fromMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_FROMMSECSSINCEEPOCH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QDateTime * ptr = new QDateTime( QDateTime::fromMSecsSinceEpoch ( PQINT64(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
void QDateTime_fromString1 ()
{

      QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1), ISNIL(2)? (Qt::DateFormat) Qt::TextDate : (Qt::DateFormat) hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

/*
static QDateTime fromString ( const QString & string, const QString & format )
*/
void QDateTime_fromString2 ()
{

      QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

//[1]QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDateTime fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATETIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDateTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDateTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDateTime fromTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_FROMTIME_T )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QDateTime * ptr = new QDateTime( QDateTime::fromTime_t ( PUINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QDATETIME_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATETIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATETIME_NEWFROM );
}

HB_FUNC_STATIC( QDATETIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATETIME_NEWFROM );
}

HB_FUNC_STATIC( QDATETIME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATETIME_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
