/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
REQUEST QVARIANT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD setForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD setNumericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD size
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSql/QSqlQuery>
#endif

#include <QtCore/QVariant>
#include <QtSql/QSqlDriver>
#include <QtSql/QSqlError>
#include <QtSql/QSqlRecord>

HB_FUNC_STATIC( QSQLQUERY_NEW )
{
  if( ISNUMPAR(1) && ISQSQLRESULT(1) )
  {
    /*
    QSqlQuery( QSqlResult * result )
    */
    auto obj = new QSqlQuery( PQSQLRESULT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(1, 2) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) && ( ISQSQLDATABASE(2) || HB_ISNIL(2) ) )
  {
    /*
    QSqlQuery( const QString & query = QString(), QSqlDatabase db = QSqlDatabase() )
    */
    auto obj = new QSqlQuery( OPQSTRING( 1, QString() ), HB_ISNIL(2) ? QSqlDatabase() : *static_cast<QSqlDatabase*>(Qt5xHb::itemGetPtr(2)) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    /*
    QSqlQuery( QSqlDatabase db )
    */
    auto obj = new QSqlQuery( *PQSQLDATABASE(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    /*
    QSqlQuery( const QSqlQuery & other )
    */
    auto obj = new QSqlQuery( *PQSQLQUERY(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLQUERY_DELETE )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addBindValue( const QVariant & val, QSql::ParamType paramType = QSql::In )
*/
HB_FUNC_STATIC( QSQLQUERY_ADDBINDVALUE )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQVARIANT(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->addBindValue( *PQVARIANT(1), HB_ISNIL(2) ? static_cast<QSql::ParamType >( QSql::In ) : static_cast<QSql::ParamType >( hb_parni(2) ) );
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
int at() const
*/
HB_FUNC_STATIC( QSQLQUERY_AT )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->at() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSQLQUERY_BINDVALUE )
{
  if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && ISQVARIANT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void bindValue( const QString & placeholder, const QVariant & val, QSql::ParamType paramType = QSql::In )
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->bindValue( PQSTRING(1), *PQVARIANT(2), HB_ISNIL(3) ? static_cast<QSql::ParamType >( QSql::In ) : static_cast<QSql::ParamType >( hb_parni(3) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQVARIANT(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    void bindValue( int pos, const QVariant & val, QSql::ParamType paramType = QSql::In )
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      obj->bindValue( PINT(1), *PQVARIANT(2), HB_ISNIL(3) ? static_cast<QSql::ParamType >( QSql::In ) : static_cast<QSql::ParamType >( hb_parni(3) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLQUERY_BOUNDVALUE )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QVariant boundValue( const QString & placeholder ) const
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->boundValue( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QVariant boundValue( int pos ) const
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->boundValue( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QSQLQUERY_CLEAR )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
const QSqlDriver * driver() const
*/
HB_FUNC_STATIC( QSQLQUERY_DRIVER )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QSqlDriver * ptr = obj->driver();
      Qt5xHb::createReturnQObjectClass(ptr, "QSQLDRIVER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSQLQUERY_EXEC )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool exec( const QString & query )
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->exec( PQSTRING(1) ) );
    }

  }
  else if( ISNUMPAR(0) )
  {
    /*
    bool exec()
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->exec() );
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool execBatch( QSqlQuery::BatchExecutionMode mode = QSqlQuery::ValuesAsRows )
*/
HB_FUNC_STATIC( QSQLQUERY_EXECBATCH )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RBOOL( obj->execBatch( HB_ISNIL(1) ? static_cast<QSqlQuery::BatchExecutionMode >( QSqlQuery::ValuesAsRows ) : static_cast<QSqlQuery::BatchExecutionMode >( hb_parni(1) ) ) );
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
QString executedQuery() const
*/
HB_FUNC_STATIC( QSQLQUERY_EXECUTEDQUERY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->executedQuery() );
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
void finish()
*/
HB_FUNC_STATIC( QSQLQUERY_FINISH )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->finish();
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
bool first()
*/
HB_FUNC_STATIC( QSQLQUERY_FIRST )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->first() );
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
HB_FUNC_STATIC( QSQLQUERY_ISACTIVE )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool isForwardOnly() const
*/
HB_FUNC_STATIC( QSQLQUERY_ISFORWARDONLY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isForwardOnly() );
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
void setForwardOnly( bool forward )
*/
HB_FUNC_STATIC( QSQLQUERY_SETFORWARDONLY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setForwardOnly( PBOOL(1) );
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

HB_FUNC_STATIC( QSQLQUERY_ISNULL )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    bool isNull( int field ) const
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->isNull( PINT(1) ) );
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool isNull( const QString & name ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      RBOOL( obj->isNull( PQSTRING(1) ) );
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isSelect() const
*/
HB_FUNC_STATIC( QSQLQUERY_ISSELECT )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSelect() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSQLQUERY_ISVALID )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
bool last()
*/
HB_FUNC_STATIC( QSQLQUERY_LAST )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->last() );
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
QSqlError lastError() const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTERROR )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSqlError( obj->lastError() );
      Qt5xHb::createReturnClass(ptr, "QSQLERROR", true);
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
QVariant lastInsertId() const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTINSERTID )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVariant( obj->lastInsertId() );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
QString lastQuery() const
*/
HB_FUNC_STATIC( QSQLQUERY_LASTQUERY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->lastQuery() );
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
bool next()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXT )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->next() );
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
bool nextResult()
*/
HB_FUNC_STATIC( QSQLQUERY_NEXTRESULT )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->nextResult() );
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
int numRowsAffected() const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMROWSAFFECTED )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->numRowsAffected() );
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
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const
*/
HB_FUNC_STATIC( QSQLQUERY_NUMERICALPRECISIONPOLICY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->numericalPrecisionPolicy() );
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
void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLQUERY_SETNUMERICALPRECISIONPOLICY )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNumericalPrecisionPolicy( static_cast<QSql::NumericalPrecisionPolicy>( hb_parni(1) ) );
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
bool prepare( const QString & query )
*/
HB_FUNC_STATIC( QSQLQUERY_PREPARE )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->prepare( PQSTRING(1) ) );
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
bool previous()
*/
HB_FUNC_STATIC( QSQLQUERY_PREVIOUS )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->previous() );
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
QSqlRecord record() const
*/
HB_FUNC_STATIC( QSQLQUERY_RECORD )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSqlRecord( obj->record() );
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
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
const QSqlResult * result() const
*/
HB_FUNC_STATIC( QSQLQUERY_RESULT )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QSqlResult * ptr = obj->result();
      Qt5xHb::createReturnClass(ptr, "QSQLRESULT", false);
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
bool seek( int index, bool relative = false )
*/
HB_FUNC_STATIC( QSQLQUERY_SEEK )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
    {
#endif
      RBOOL( obj->seek( PINT(1), OPBOOL( 2, false ) ) );
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
int size() const
*/
HB_FUNC_STATIC( QSQLQUERY_SIZE )
{
  auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->size() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSQLQUERY_VALUE )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QVariant value( int index ) const
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->value( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QVariant value( const QString & name ) const
    */
    auto obj = static_cast<QSqlQuery*>(Qt5xHb::itemGetPtrStackSelfItem());

    if( obj != nullptr )
    {
      auto ptr = new QVariant( obj->value( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QSQLQUERY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSQLQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
