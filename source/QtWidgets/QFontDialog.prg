/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD setCurrentFont
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedFont
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QFontDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QFontDialog>
#endif

/*
explicit QFontDialog ( QWidget * parent = nullptr )
*/
void QFontDialog_new1()
{
  auto obj = new QFontDialog( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QFontDialog ( const QFont & initial, QWidget * parent = nullptr )
*/
void QFontDialog_new2()
{
  auto obj = new QFontDialog( *PQFONT(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]explicit QFontDialog ( QWidget * parent = nullptr )
[2]explicit QFontDialog ( const QFont & initial, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QFontDialog_new1();
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTDIALOG_DELETE )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
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
QFont currentFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_CURRENTFONT )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QFont( obj->currentFont() );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
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
void setCurrentFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETCURRENTFONT )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setCurrentFont( *PQFONT(1) );
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
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFONTDIALOG_OPEN )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
FontDialogOptions options () const
*/
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
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
void setOptions ( FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptions( (QFontDialog::FontDialogOptions) hb_parni(1) );
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
QFont selectedFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QFont( obj->selectedFont() );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
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
void setOption ( FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setOption( (QFontDialog::FontDialogOption) hb_parni(1), OPBOOL(2,true) );
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
bool testOption ( FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( (QFontDialog::FontDialogOption) hb_parni(1) ) );
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
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETVISIBLE )
{
  auto obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
static QFont getFont(bool *ok, QWidget *parent = nullptr)
*/
void QFontDialog_getFont1()
{

  bool par1;
  auto ptr = new QFont( QFontDialog::getFont( &par1, OPQWIDGET(2,nullptr) ) );
  Qt5xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = nullptr, const QString &title = QString(), FontDialogOptions options = 0)
*/
void QFontDialog_getFont2()
{

  bool par1;
  auto ptr = new QFont( QFontDialog::getFont( &par1, *PQFONT(2), OPQWIDGET(3,nullptr), OPQSTRING(4,QString()), ISNIL(5)? (QFontDialog::FontDialogOptions) 0 : (QFontDialog::FontDialogOptions) hb_parni(5) ) );
  Qt5xHb::createReturnClass( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
[1]static QFont getFont(bool *ok, QWidget *parent = nullptr)
[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = nullptr, const QString &title = QString(), FontDialogOptions options = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_getFont1();
  }
  else if( ISBETWEEN(2,5) && ISLOG(1) && ISQFONT(2) && ISOPTQWIDGET(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QFontDialog_getFont2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void currentFontChanged( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_ONCURRENTFONTCHANGED )
{
  auto sender = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentFontChanged(QFont)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QFontDialog::currentFontChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QFont & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QFONTDIALOG" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QFONT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
void fontSelected( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_ONFONTSELECTED )
{
  auto sender = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("fontSelected(QFont)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QFontDialog::fontSelected, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QFont & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QFONTDIALOG" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QFONT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
