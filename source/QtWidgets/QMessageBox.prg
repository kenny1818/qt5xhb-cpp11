/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QCHECKBOX
REQUEST QPIXMAP
REQUEST QPUSHBUTTON
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD setDetailedText
   METHOD escapeButton
   METHOD icon
   METHOD setIcon
   METHOD iconPixmap
   METHOD setIconPixmap
   METHOD informativeText
   METHOD setInformativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setEscapeButton
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD setStandardButtons
   METHOD text
   METHOD setText
   METHOD textFormat
   METHOD setTextFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning
   METHOD textInteractionFlags
   METHOD setTextInteractionFlags
   METHOD checkBox
   METHOD setCheckBox
   METHOD standardIcon
   METHOD buttonText
   METHOD setButtonText

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMessageBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMessageBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QMessageBox>
#endif

#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QPushButton>

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    /*
    QMessageBox( QWidget * parent = nullptr )
    */
    auto obj = new QMessageBox( OPQWIDGET( 1, nullptr ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(3, 6) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( ISQWIDGET(5) || HB_ISNIL(5) ) && ( HB_ISNUM(6) || HB_ISNIL(6) ) )
  {
    /*
    QMessageBox( QMessageBox::Icon icon, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::NoButton, QWidget * parent = nullptr, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
    */
    auto obj = new QMessageBox( static_cast<QMessageBox::Icon>( hb_parni(1) ), PQSTRING(2), PQSTRING(3), HB_ISNIL(4) ? static_cast<QMessageBox::StandardButtons >( QMessageBox::NoButton ) : static_cast<QMessageBox::StandardButtons >( hb_parni(4) ), OPQWIDGET( 5, nullptr ), HB_ISNIL(6) ? static_cast<Qt::WindowFlags >( Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint ) : static_cast<Qt::WindowFlags >( hb_parni(6) ) );
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_DELETE )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && HB_ISNUM(2) )
  {
    /*
    void addButton( QAbstractButton * button, QMessageBox::ButtonRole role )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->addButton( PQABSTRACTBUTTON(1), static_cast<QMessageBox::ButtonRole>( hb_parni(2) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    QPushButton * addButton( const QString & text, QMessageBox::ButtonRole role )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QPushButton * ptr = obj->addButton( PQSTRING(1), static_cast<QMessageBox::ButtonRole>( hb_parni(2) ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
    }

  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) )
  {
    /*
    QPushButton * addButton( QMessageBox::StandardButton button )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      QPushButton * ptr = obj->addButton( static_cast<QMessageBox::StandardButton>( hb_parni(1) ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAbstractButton * button( QMessageBox::StandardButton which ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QAbstractButton * ptr = obj->button( static_cast<QMessageBox::StandardButton>( hb_parni(1) ) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON");
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
QMessageBox::ButtonRole buttonRole( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONROLE )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->buttonRole( PQABSTRACTBUTTON(1) ) );
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
QList<QAbstractButton *> buttons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QAbstractButton *> list = obj->buttons();
      PHB_DYNS pDynSym = hb_dynsymFindName("QABSTRACTBUTTON");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QABSTRACTBUTTON", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
QAbstractButton * clickedButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CLICKEDBUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractButton * ptr = obj->clickedButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON");
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
QPushButton * defaultButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DEFAULTBUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPushButton * ptr = obj->defaultButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON");
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
QString detailedText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->detailedText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setDetailedText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setDetailedText( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractButton * escapeButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ESCAPEBUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractButton * ptr = obj->escapeButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON");
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
QMessageBox::Icon icon() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->icon() );
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
void setIcon( QMessageBox::Icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setIcon( static_cast<QMessageBox::Icon>( hb_parni(1) ) );
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
QPixmap iconPixmap() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICONPIXMAP )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPixmap( obj->iconPixmap() );
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
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
void setIconPixmap( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICONPIXMAP )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setIconPixmap( *PQPIXMAP(1) );
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
QString informativeText() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATIVETEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->informativeText() );
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
void setInformativeText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETINFORMATIVETEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setInformativeText( PQSTRING(1) );
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
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMESSAGEBOX_OPEN )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
void removeButton( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_REMOVEBUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      obj->removeButton( PQABSTRACTBUTTON(1) );
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

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    /*
    void setDefaultButton( QPushButton * button )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setDefaultButton( PQPUSHBUTTON(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setDefaultButton( QMessageBox::StandardButton button )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setDefaultButton( static_cast<QMessageBox::StandardButton>( hb_parni(1) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    /*
    void setEscapeButton( QAbstractButton * button )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setEscapeButton( PQABSTRACTBUTTON(1) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setEscapeButton( QMessageBox::StandardButton button )
    */
    auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if( obj != nullptr )
    {
      obj->setEscapeButton( static_cast<QMessageBox::StandardButton>( hb_parni(1) ) );
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setWindowModality( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWMODALITY )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWindowModality( static_cast<Qt::WindowModality>( hb_parni(1) ) );
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
void setWindowTitle( const QString & title )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWTITLE )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setWindowTitle( PQSTRING(1) );
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
QMessageBox::StandardButton standardButton( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTON )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->standardButton( PQABSTRACTBUTTON(1) ) );
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
QMessageBox::StandardButtons standardButtons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTONS )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->standardButtons() );
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
void setStandardButtons( QMessageBox::StandardButtons buttons )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETSTANDARDBUTTONS )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStandardButtons( static_cast<QMessageBox::StandardButtons>( hb_parni(1) ) );
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
QString text() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
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
void setText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setText( PQSTRING(1) );
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
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTFORMAT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->textFormat() );
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
void setTextFormat( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTFORMAT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextFormat( static_cast<Qt::TextFormat>( hb_parni(1) ) );
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
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETVISIBLE )
{
#ifdef Q_OS_WINCE
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int exec()
*/
HB_FUNC_STATIC( QMESSAGEBOX_EXEC )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->exec() );
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
static void about( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
  {
#endif
    QMessageBox::about( PQWIDGET(1), PQSTRING(2), PQSTRING(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void aboutQt( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && ISQWIDGET(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
  {
#endif
    QMessageBox::aboutQt( PQWIDGET(1), OPQSTRING( 2, QString() ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QMessageBox::StandardButton critical( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3, 5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
#endif
    RENUM( QMessageBox::critical( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4) ? static_cast<QMessageBox::StandardButtons >( QMessageBox::Ok ) : static_cast<QMessageBox::StandardButtons >( hb_parni(4) ), HB_ISNIL(5) ? static_cast<QMessageBox::StandardButton >( QMessageBox::NoButton ) : static_cast<QMessageBox::StandardButton >( hb_parni(5) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QMessageBox::StandardButton information( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3, 5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
#endif
    RENUM( QMessageBox::information( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4) ? static_cast<QMessageBox::StandardButtons >( QMessageBox::Ok ) : static_cast<QMessageBox::StandardButtons >( hb_parni(4) ), HB_ISNIL(5) ? static_cast<QMessageBox::StandardButton >( QMessageBox::NoButton ) : static_cast<QMessageBox::StandardButton >( hb_parni(5) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QMessageBox::StandardButton question( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3, 5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
#endif
    RENUM( QMessageBox::question( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4) ? static_cast<QMessageBox::StandardButtons >( QMessageBox::Ok ) : static_cast<QMessageBox::StandardButtons >( hb_parni(4) ), HB_ISNIL(5) ? static_cast<QMessageBox::StandardButton >( QMessageBox::NoButton ) : static_cast<QMessageBox::StandardButton >( hb_parni(5) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QMessageBox::StandardButton warning( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3, 5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && ( HB_ISNUM(4) || HB_ISNIL(4) ) && ( HB_ISNUM(5) || HB_ISNIL(5) ) )
  {
#endif
    RENUM( QMessageBox::warning( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4) ? static_cast<QMessageBox::StandardButtons >( QMessageBox::Ok ) : static_cast<QMessageBox::StandardButtons >( hb_parni(4) ), HB_ISNIL(5) ? static_cast<QMessageBox::StandardButton >( QMessageBox::NoButton ) : static_cast<QMessageBox::StandardButton >( hb_parni(5) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
Qt::TextInteractionFlags textInteractionFlags() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTINTERACTIONFLAGS )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->textInteractionFlags() );
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
void setTextInteractionFlags( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTINTERACTIONFLAGS )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextInteractionFlags( static_cast<Qt::TextInteractionFlags>( hb_parni(1) ) );
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
QCheckBox * checkBox() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CHECKBOX )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCheckBox * ptr = obj->checkBox();
      Qt5xHb::createReturnQWidgetClass( ptr, "QCHECKBOX");
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
void setCheckBox( QCheckBox * cb )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETCHECKBOX )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCHECKBOX(1) )
    {
#endif
      obj->setCheckBox( PQCHECKBOX(1) );
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
static QPixmap standardIcon( QMessageBox::Icon icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDICON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    auto ptr = new QPixmap( QMessageBox::standardIcon( static_cast<QMessageBox::Icon>( hb_parni(1) ) ) );
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QString buttonText( int button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONTEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->buttonText( PINT(1) ) );
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
void setButtonText( int button, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETBUTTONTEXT )
{
  auto obj = qobject_cast<QMessageBox*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setButtonText( PINT(1), PQSTRING(2) );
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
void buttonClicked( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ONBUTTONCLICKED )
{
  auto sender = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();
  
  bool result = false;

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("buttonClicked(QAbstractButton*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        QMetaObject::Connection connection = QObject::connect(sender,
                                                              &QMessageBox::buttonClicked,
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractButton * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject(sender, "QMESSAGEBOX");
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QABSTRACTBUTTON");
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
