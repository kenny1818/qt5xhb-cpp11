/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QSIZEF
REQUEST QURL
REQUEST QVARIANT
REQUEST QWEBHISTORY
REQUEST QWEBPAGE
REQUEST QWEBSETTINGS
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD title
   METHOD icon
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD url
   METHOD setUrl
   METHOD isModified
   METHOD resizesToContents
   METHOD setResizesToContents
   METHOD isTiledBackingStoreFrozen
   METHOD setTiledBackingStoreFrozen
   METHOD renderHints
   METHOD setRenderHints
   METHOD findText
   METHOD history
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD settings
   METHOD triggerPageAction
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop
   METHOD setGeometry
   METHOD updateGeometry
   METHOD paint
   METHOD itemChange
   METHOD event
   METHOD sizeHint
   METHOD inputMethodQuery
   METHOD setRenderHint

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebKitWidgets/QGraphicsWebView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWebKitWidgets/QGraphicsWebView>
#endif

#include <QtWidgets/QAction>

/*
explicit QGraphicsWebView ( QGraphicsItem * parent = nullptr )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    auto obj = new QGraphicsWebView( ISNIL(1)? nullptr : (QGraphicsItem *) Qt5xHb::itemGetPtr(1) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QGraphicsWebView()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_DELETE )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString title () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TITLE )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
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
QIcon icon () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ICON )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QIcon( obj->icon() );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
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
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ZOOMFACTOR )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->zoomFactor() );
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
void setZoomFactor ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETZOOMFACTOR )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZoomFactor( PQREAL(1) );
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
QUrl url () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_URL )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
void setUrl ( const QUrl & )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETURL )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
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
bool isModified () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISMODIFIED )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isModified() );
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
bool resizesToContents () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RESIZESTOCONTENTS )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->resizesToContents() );
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
void setResizesToContents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setResizesToContents( PBOOL(1) );
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
bool isTiledBackingStoreFrozen () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTiledBackingStoreFrozen() );
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
void setTiledBackingStoreFrozen ( bool frozen )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setTiledBackingStoreFrozen( PBOOL(1) );
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
QPainter::RenderHints renderHints() const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RENDERHINTS )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->renderHints() );
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
void setRenderHints(QPainter::RenderHints)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRENDERHINTS )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRenderHints( (QPainter::RenderHints) hb_parni(1) );
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
bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FINDTEXT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
#endif
      RBOOL( obj->findText( PQSTRING(1), ISNIL(2)? (QWebPage::FindFlags) 0 : (QWebPage::FindFlags) hb_parni(2) ) );
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
QWebHistory * history () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_HISTORY )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebHistory * ptr = obj->history();
      Qt5xHb::createReturnClass( ptr, "QWEBHISTORY", false );
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
void load ( const QUrl & url )
*/
void QGraphicsWebView_load1()
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->load( *PQURL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
void QGraphicsWebView_load2()
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->load( *PQNETWORKREQUEST(1), ISNIL(2)? (QNetworkAccessManager::Operation) QNetworkAccessManager::GetOperation : (QNetworkAccessManager::Operation) hb_parni(2), ISNIL(3)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void load ( const QUrl & url )
[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QGraphicsWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QGraphicsWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGE )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebPage * ptr = obj->page();
      Qt5xHb::createReturnQObjectClass( ptr, "QWEBPAGE" );
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
QAction * pageAction ( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGEACTION )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QAction * ptr = obj->pageAction( (QWebPage::WebAction) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETCONTENT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) )
    {
#endif
      obj->setContent( *PQBYTEARRAY(1), OPQSTRING(2,QString()), ISNIL(3)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(3) );
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
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETHTML )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
    {
#endif
      obj->setHtml( PQSTRING(1), ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2) );
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
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETPAGE )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBPAGE(1) )
    {
#endif
      obj->setPage( PQWEBPAGE(1) );
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
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTINGS )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebSettings * ptr = obj->settings();
      Qt5xHb::createReturnClass( ptr, "QWEBSETTINGS", false );
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
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TRIGGERPAGEACTION )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->triggerPageAction( (QWebPage::WebAction) hb_parni(1), OPBOOL(2,false) );
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
void back ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_BACK )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->back();
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
void forward ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FORWARD )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->forward();
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
void reload ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RELOAD )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reload();
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
void stop ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_STOP )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
virtual void setGeometry(const QRectF& rect)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETGEOMETRY )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
#endif
      obj->setGeometry( *PQRECTF(1) );
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
virtual void updateGeometry()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_UPDATEGEOMETRY )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->updateGeometry();
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
virtual void paint(QPainter*, const QStyleOptionGraphicsItem* options, QWidget* widget = nullptr)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAINT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,nullptr) );
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
virtual QVariant itemChange(GraphicsItemChange change, const QVariant& value)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ITEMCHANGE )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      auto ptr = new QVariant( obj->itemChange( (QGraphicsItem::GraphicsItemChange) hb_parni(1), *PQVARIANT(2) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
virtual bool event(QEvent*)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_EVENT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
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
virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SIZEHINT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSIZEF(2) )
    {
#endif
      auto ptr = new QSizeF( obj->sizeHint( (Qt::SizeHint) hb_parni(1), *PQSIZEF(2) ) );
      Qt5xHb::createReturnClass( ptr, "QSIZEF", true );
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
virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_INPUTMETHODQUERY )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->inputMethodQuery( (Qt::InputMethodQuery) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
void setRenderHint(QPainter::RenderHint, bool enabled = true)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRENDERHINT )
{
  auto obj = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setRenderHint( (QPainter::RenderHint) hb_parni(1), OPBOOL(2,true) );
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
void iconChanged()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONICONCHANGED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("iconChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::iconChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
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
void linkClicked( const QUrl & url )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLINKCLICKED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("linkClicked(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::linkClicked, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QURL" );
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
void loadFinished( bool ok )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADFINISHED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("loadFinished(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::loadFinished, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
            PHB_ITEM pArg1 = hb_itemPutL( nullptr, arg1 );
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
void loadProgress( int progress )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADPROGRESS )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("loadProgress(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::loadProgress, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
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

/*
void loadStarted()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADSTARTED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("loadStarted()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::loadStarted, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
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
void statusBarMessage( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONSTATUSBARMESSAGE )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("statusBarMessage(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::statusBarMessage, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
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
void titleChanged( const QString & title )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONTITLECHANGED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("titleChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::titleChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
            PHB_ITEM pArg1 = hb_itemPutC( nullptr, QSTRINGTOSTRING(arg1) );
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
void urlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONURLCHANGED )
{
  auto sender = (QGraphicsWebView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("urlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QGraphicsWebView::urlChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QGRAPHICSWEBVIEW" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QURL" );
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
