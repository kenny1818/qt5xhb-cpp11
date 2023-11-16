/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSIONMATCH
REQUEST QREGULAREXPRESSIONMATCHITERATOR
#endif

CLASS QRegularExpression

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD captureCount
   METHOD errorString
   METHOD globalMatch
   METHOD isValid
   METHOD match
   METHOD pattern
   METHOD patternErrorOffset
   METHOD patternOptions
   METHOD setPattern
   METHOD setPatternOptions
   METHOD swap
   METHOD escape
   METHOD anchoredPattern
   METHOD wildcardToRegularExpression

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegularExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QRegularExpression>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QRegularExpression>
#endif

HB_FUNC_STATIC( QREGULAREXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QRegularExpression()
    */
    auto obj = new QRegularExpression();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    QRegularExpression( const QString & pattern, QRegularExpression::PatternOptions options = QRegularExpression::NoPatternOption )
    */
    auto obj = new QRegularExpression( PQSTRING(1), HB_ISNIL(2) ? static_cast<QRegularExpression::PatternOptions >( QRegularExpression::NoPatternOption ) : static_cast<QRegularExpression::PatternOptions >( hb_parni(2) ) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
  {
    /*
    QRegularExpression( const QRegularExpression & re )
    */
    auto obj = new QRegularExpression( *PQREGULAREXPRESSION(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSION_DELETE )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int captureCount() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_CAPTURECOUNT )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->captureCount() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_ERRORSTRING )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QRegularExpressionMatchIterator globalMatch( const QString & subject, int offset = 0, QRegularExpression::MatchType matchType = QRegularExpression::NormalMatch, QRegularExpression::MatchOptions matchOptions = QRegularExpression::NoMatchOption ) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_GLOBALMATCH )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 4) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      auto ptr = new QRegularExpressionMatchIterator( obj->globalMatch( PQSTRING(1), OPINT( 2, 0 ), HB_ISNIL(3) ? static_cast<QRegularExpression::MatchType >( QRegularExpression::NormalMatch ) : static_cast<QRegularExpression::MatchType >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QRegularExpression::MatchOptions >( QRegularExpression::NoMatchOption ) : static_cast<QRegularExpression::MatchOptions >( hb_parni(4) ) ) );
      Qt5xHb::createReturnClass(ptr, "QREGULAREXPRESSIONMATCHITERATOR", true);
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
HB_FUNC_STATIC( QREGULAREXPRESSION_ISVALID )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

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
QRegularExpressionMatch match( const QString & subject, int offset = 0, QRegularExpression::MatchType matchType = QRegularExpression::NormalMatch, QRegularExpression::MatchOptions matchOptions = QRegularExpression::NoMatchOption ) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_MATCH )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 4) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
    {
#endif
      auto ptr = new QRegularExpressionMatch( obj->match( PQSTRING(1), OPINT( 2, 0 ), HB_ISNIL(3) ? static_cast<QRegularExpression::MatchType >( QRegularExpression::NormalMatch ) : static_cast<QRegularExpression::MatchType >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QRegularExpression::MatchOptions >( QRegularExpression::NoMatchOption ) : static_cast<QRegularExpression::MatchOptions >( hb_parni(4) ) ) );
      Qt5xHb::createReturnClass(ptr, "QREGULAREXPRESSIONMATCH", true);
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
QString pattern() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERN )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->pattern() );
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
int patternErrorOffset() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERNERROROFFSET )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->patternErrorOffset() );
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
QRegularExpression::PatternOptions patternOptions() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERNOPTIONS )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->patternOptions() );
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
void setPattern( const QString & pattern )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SETPATTERN )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPattern( PQSTRING(1) );
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
void setPatternOptions( QRegularExpression::PatternOptions options )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SETPATTERNOPTIONS )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPatternOptions( static_cast<QRegularExpression::PatternOptions>( hb_parni(1) ) );
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
void swap( QRegularExpression & other )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SWAP )
{
  auto obj = static_cast<QRegularExpression*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
    {
#endif
      obj->swap( *PQREGULAREXPRESSION(1) );
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
static QString escape( const QString & str )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_ESCAPE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QRegularExpression::escape( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString anchoredPattern( const QString & expression )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_ANCHOREDPATTERN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QRegularExpression::anchoredPattern( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QString wildcardToRegularExpression( const QString & pattern )
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_WILDCARDTOREGULAREXPRESSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RQSTRING( QRegularExpression::wildcardToRegularExpression( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROM )
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

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGULAREXPRESSION_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGULAREXPRESSION_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QREGULAREXPRESSION_SETSELFDESTRUCTION )
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
