/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QSslKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD algorithm
   METHOD clear
   METHOD isNull
   METHOD length
   METHOD toDer
   METHOD toPem
   METHOD type
   METHOD swap
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslKey
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QSslKey>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QSslKey>
#endif

/*
QSslKey ()
*/
void QSslKey_new1()
{
  auto obj = new QSslKey();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
void QSslKey_new2()
{
  auto obj = new QSslKey( *PQBYTEARRAY(1), (QSsl::KeyAlgorithm) hb_parni(2), ISNIL(3)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(3), ISNIL(4)? (QSsl::KeyType) QSsl::PrivateKey : (QSsl::KeyType) hb_parni(4), ISNIL(5)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(5) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
void QSslKey_new3()
{
  auto obj = new QSslKey( PQIODEVICE(1), (QSsl::KeyAlgorithm) hb_parni(2), ISNIL(3)? (QSsl::EncodingFormat) QSsl::Pem : (QSsl::EncodingFormat) hb_parni(3), ISNIL(4)? (QSsl::KeyType) QSsl::PrivateKey : (QSsl::KeyType) hb_parni(4), ISNIL(5)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(5) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QSslKey(Qt::HANDLE handle, QSsl::KeyType type = QSsl::PrivateKey)
*/
void QSslKey_new4()
{
  auto obj = new QSslKey( (Qt::HANDLE) hb_parptr(1), ISNIL(2)? (QSsl::KeyType) QSsl::PrivateKey : (QSsl::KeyType) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSslKey ( const QSslKey & other )
*/
void QSslKey_new5()
{
  auto obj = new QSslKey( *PQSSLKEY(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QSslKey()
[2]QSslKey( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat format = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
[3]QSslKey( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat format = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
[4]explicit QSslKey(Qt::HANDLE handle, QSsl::KeyType type = QSsl::PrivateKey)
[5]QSslKey( const QSslKey & other )
*/

HB_FUNC_STATIC( QSSLKEY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslKey_new1();
  }
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    QSslKey_new2();
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    QSslKey_new3();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QSslKey_new4();
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    QSslKey_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QSslKey()
*/
HB_FUNC_STATIC( QSSLKEY_DELETE )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
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
QSsl::KeyAlgorithm algorithm () const
*/
HB_FUNC_STATIC( QSSLKEY_ALGORITHM )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->algorithm() );
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
void clear ()
*/
HB_FUNC_STATIC( QSSLKEY_CLEAR )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLKEY_ISNULL )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
int length () const
*/
HB_FUNC_STATIC( QSSLKEY_LENGTH )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->length() );
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
QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TODER )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQBYTEARRAY(1)||ISNIL(1)) )
    {
#endif
      auto ptr = new QByteArray( obj->toDer( ISNIL(1)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TOPEM )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQBYTEARRAY(1)||ISNIL(1)) )
    {
#endif
      auto ptr = new QByteArray( obj->toPem( ISNIL(1)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QSsl::KeyType type () const
*/
HB_FUNC_STATIC( QSSLKEY_TYPE )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
void swap(QSslKey &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QSSLKEY_SWAP )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLKEY(1) )
    {
#endif
      obj->swap( *PQSSLKEY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::HANDLE handle() const
*/
HB_FUNC_STATIC( QSSLKEY_HANDLE )
{
  auto obj = (QSslKey *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (Qt::HANDLE) obj->handle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QSSLKEY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSSLKEY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLKEY_NEWFROM );
}

HB_FUNC_STATIC( QSSLKEY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLKEY_NEWFROM );
}

HB_FUNC_STATIC( QSSLKEY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLKEY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
