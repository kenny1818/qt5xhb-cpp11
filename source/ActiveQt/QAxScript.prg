/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QAxScript INHERIT QObject

   METHOD new
   METHOD delete
   METHOD call
   METHOD functions
   METHOD load
   METHOD scriptCode
   METHOD scriptEngine
   METHOD scriptName

   METHOD onEntered
   METHOD onError
   METHOD onFinished1
   METHOD onFinished2
   METHOD onFinished3
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxScript>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxScript>
#endif

#include <QtCore/QStringList>

/*
QAxScript( const QString & name, QAxScriptManager * manager )
*/
HB_FUNC_STATIC( QAXSCRIPT_NEW )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQAXSCRIPTMANAGER(2) )
  {
    auto obj = new QAxScript( PQSTRING(1), PQAXSCRIPTMANAGER(2) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAXSCRIPT_DELETE )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant call( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxScript_call1()
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QVariant( obj->call( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
    Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
QVariant call( const QString & function, QList<QVariant> & arguments )
*/
void QAxScript_call2()
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QVariant( obj->call( PQSTRING(1), PQVARIANTLIST(2) ) );
    Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
[2]QVariant call ( const QString & function, QList<QVariant> & arguments )
*/

HB_FUNC_STATIC( QAXSCRIPT_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScript_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScript_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList functions( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPT_FUNCTIONS )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RQSTRINGLIST( obj->functions( ISNIL(1)? (QAxScript::FunctionFlags) QAxScript::FunctionNames : (QAxScript::FunctionFlags) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool load( const QString & code, const QString & language = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPT_LOAD )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
    {
#endif
      RBOOL( obj->load( PQSTRING(1), OPQSTRING(2,QString()) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString scriptCode() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTCODE )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scriptCode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAxScriptEngine * scriptEngine() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTENGINE )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAxScriptEngine * ptr = obj->scriptEngine();
      Qt5xHb::createReturnQObjectClass( ptr, "QAXSCRIPTENGINE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString scriptName() const
*/
HB_FUNC_STATIC( QAXSCRIPT_SCRIPTNAME )
{
  auto obj = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scriptName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void entered()
*/
HB_FUNC_STATIC( QAXSCRIPT_ONENTERED )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("entered()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAxScript::entered, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void error( int code, const QString & description, int sourcePosition, const QString & sourceText )
*/
HB_FUNC_STATIC( QAXSCRIPT_ONERROR )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(int,QString,int,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAxScript::error, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QString & arg2, int arg3, const QString & arg4) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutNI( nullptr, arg3 );
            PHB_ITEM pArg4 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg4) );
            hb_vmEvalBlockV( cb, 5, pSender, pArg1, pArg2, pArg3, pArg4 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
            hb_itemRelease( pArg4 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void finished()
*/
HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED1 )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<>::of(&QAxScript::finished), 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void finished( const QVariant & result )
*/
HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED2 )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(QVariant)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<const QVariant &>::of(&QAxScript::finished), 
                                                              [sender, indexOfCodeBlock]
                                                              (const QVariant & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QVARIANT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void finished( int code, const QString & source, const QString & description, const QString & help )
*/
HB_FUNC_STATIC( QAXSCRIPT_ONFINISHED3 )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished(int,QString,QString,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<int,const QString &,const QString &,const QString &>::of(&QAxScript::finished), 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QString & arg2, const QString & arg3, const QString & arg4) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg3) );
            PHB_ITEM pArg4 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg4) );
            hb_vmEvalBlockV( cb, 5, pSender, pArg1, pArg2, pArg3, pArg4 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
            hb_itemRelease( pArg4 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void stateChanged( int state )
*/
HB_FUNC_STATIC( QAXSCRIPT_ONSTATECHANGED )
{
  auto sender = (QAxScript *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAxScript::stateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QAXSCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
