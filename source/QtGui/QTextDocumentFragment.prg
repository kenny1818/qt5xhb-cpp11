/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toPlainText
   METHOD toHtml
   METHOD fromPlainText
   METHOD fromHtml

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTextDocumentFragment>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QTextDocumentFragment>
#endif

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTextDocumentFragment()
    */
    auto obj = new QTextDocumentFragment();
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    /*
    QTextDocumentFragment( const QTextDocument * document )
    */
    auto obj = new QTextDocumentFragment( PQTEXTDOCUMENT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    /*
    QTextDocumentFragment( const QTextCursor & range )
    */
    auto obj = new QTextDocumentFragment( *PQTEXTCURSOR(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    /*
    QTextDocumentFragment( const QTextDocumentFragment & rhs )
    */
    auto obj = new QTextDocumentFragment( *PQTEXTDOCUMENTFRAGMENT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
  auto obj = static_cast<QTextDocumentFragment*>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  auto obj = static_cast<QTextDocumentFragment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
QString toPlainText() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  auto obj = static_cast<QTextDocumentFragment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toPlainText() );
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
QString toHtml( const QByteArray & encoding = QByteArray() ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  auto obj = static_cast<QTextDocumentFragment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( ISQBYTEARRAY(1) || HB_ISNIL(1) ) )
    {
#endif
      RQSTRING( obj->toHtml( HB_ISNIL(1) ? QByteArray() : *static_cast<QByteArray*>(Qt5xHb::itemGetPtr(1)) ) );
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
static QTextDocumentFragment fromPlainText( const QString & plainText )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    auto ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText( PQSTRING(1) ) );
    Qt5xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QTextDocumentFragment fromHtml( const QString & html )
    */

    auto ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1) ) );
    Qt5xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    /*
    static QTextDocumentFragment fromHtml( const QString & html, const QTextDocument * resourceProvider )
    */

    auto ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1), PQTEXTDOCUMENT(2) ) );
    Qt5xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROM )
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

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SETSELFDESTRUCTION )
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
