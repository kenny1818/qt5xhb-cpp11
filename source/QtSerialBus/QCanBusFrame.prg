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

CLASS QCanBusFrame

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD frameType
   METHOD setFrameType
   METHOD hasExtendedFrameFormat
   METHOD setExtendedFrameFormat
   METHOD frameId
   METHOD setFrameId
   METHOD setPayload
   METHOD payload
   METHOD error
   METHOD setError
   METHOD toString
   METHOD hasFlexibleDataRateFormat
   METHOD setFlexibleDataRateFormat
   METHOD hasBitrateSwitch
   METHOD setBitrateSwitch
   METHOD hasErrorStateIndicator
   METHOD setErrorStateIndicator
   METHOD hasLocalEcho
   METHOD setLocalEcho

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCanBusFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusFrame>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals5.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusFrame>
#endif
#endif

/*
explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
*/
void QCanBusFrame_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = new QCanBusFrame( ISNIL(1)? (QCanBusFrame::FrameType) QCanBusFrame::DataFrame : (QCanBusFrame::FrameType) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
explicit QCanBusFrame(quint32 identifier, const QByteArray &data)
*/
void QCanBusFrame_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = new QCanBusFrame( PQUINT32(1), *PQBYTEARRAY(2) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
[1]explicit QCanBusFrame(FrameType type = DataFrame) Q_DECL_NOTHROW
[2]explicit QCanBusFrame(quint32 identifier, const QByteArray &data)
*/

HB_FUNC_STATIC( QCANBUSFRAME_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QCanBusFrame_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    QCanBusFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCANBUSFRAME_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
bool isValid() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
FrameType frameType() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_FRAMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->frameType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setFrameType(FrameType newFormat) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETFRAMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFrameType( (QCanBusFrame::FrameType) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool hasExtendedFrameFormat() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_HASEXTENDEDFRAMEFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasExtendedFrameFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setExtendedFrameFormat(bool isExtended) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETEXTENDEDFRAMEFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setExtendedFrameFormat( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
quint32 frameId() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_FRAMEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->frameId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setFrameId(quint32 newFrameId)
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETFRAMEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFrameId( PQUINT32(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPayload(const QByteArray &data)
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETPAYLOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setPayload( *PQBYTEARRAY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setTimeStamp(TimeStamp ts) Q_DECL_NOTHROW
*/

/*
QByteArray payload() const
*/
HB_FUNC_STATIC( QCANBUSFRAME_PAYLOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->payload() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
TimeStamp timeStamp() const Q_DECL_NOTHROW
*/

/*
FrameErrors error() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setError(FrameErrors e)
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setError( (QCanBusFrame::FrameErrors) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QCANBUSFRAME_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool hasFlexibleDataRateFormat() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_HASFLEXIBLEDATARATEFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFlexibleDataRateFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setFlexibleDataRateFormat(bool isFlexibleData) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETFLEXIBLEDATARATEFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFlexibleDataRateFormat( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool hasBitrateSwitch() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_HASBITRATESWITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasBitrateSwitch() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBitrateSwitch(bool bitrateSwitch) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETBITRATESWITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBitrateSwitch( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool hasErrorStateIndicator() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_HASERRORSTATEINDICATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasErrorStateIndicator() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setErrorStateIndicator(bool errorStateIndicator) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETERRORSTATEINDICATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setErrorStateIndicator( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool hasLocalEcho() const Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_HASLOCALECHO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasLocalEcho() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLocalEcho(bool localEcho) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSFRAME_SETLOCALECHO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QCanBusFrame *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setLocalEcho( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QCANBUSFRAME_NEWFROM )
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

HB_FUNC_STATIC( QCANBUSFRAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCANBUSFRAME_NEWFROM );
}

HB_FUNC_STATIC( QCANBUSFRAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCANBUSFRAME_NEWFROM );
}

HB_FUNC_STATIC( QCANBUSFRAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCANBUSFRAME_SETSELFDESTRUCTION )
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
