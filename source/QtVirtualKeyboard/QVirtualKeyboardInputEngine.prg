/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIRTUALKEYBOARDABSTRACTINPUTMETHOD
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDSELECTIONLISTMODEL
#endif

CLASS QVirtualKeyboardInputEngine INHERIT QObject

   METHOD delete
   METHOD activeKey
   METHOD previousKey
   METHOD inputMethod
   METHOD setInputMethod
   METHOD inputModes
   METHOD setInputMode
   METHOD patternRecognitionModes
   METHOD wordCandidateListModel
   METHOD wordCandidateListVisibleHint
   METHOD virtualKeyPress
   METHOD virtualKeyCancel
   METHOD virtualKeyRelease
   METHOD virtualKeyClick
   METHOD inputContext
   METHOD traceEnd
   METHOD clickPreeditText

   METHOD onVirtualKeyClicked
   METHOD onActiveKeyChanged
   METHOD onPreviousKeyChanged
   METHOD onInputMethodChanged
   METHOD onInputMethodReset
   METHOD onInputMethodUpdate
   METHOD onInputModesChanged
   METHOD onInputModeChanged
   METHOD onPatternRecognitionModesChanged
   METHOD onWordCandidateListModelChanged
   METHOD onWordCandidateListVisibleHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVirtualKeyboardInputEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#include <QtVirtualKeyboard/QVirtualKeyboardSelectionListModel>
#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

/*
explicit QVirtualKeyboardInputEngine(QVirtualKeyboardInputContext *parent = nullptr) [private]
*/

/*
~QVirtualKeyboardInputEngine()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_DELETE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
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
Qt::Key activeKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ACTIVEKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->activeKey () );
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
Qt::Key previousKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PREVIOUSKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->previousKey () );
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
QVirtualKeyboardAbstractInputMethod *inputMethod() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardAbstractInputMethod * ptr = obj->inputMethod ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
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
void setInputMethod(QVirtualKeyboardAbstractInputMethod *inputMethod)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) )
    {
#endif
      obj->setInputMethod ( PQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) );
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
QList<int> inputModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->inputModes ();
      _qt5xhb_convert_qlist_int_to_array ( list );
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
InputMode inputMode() const
*/

/*
void setInputMode(InputMode inputMode)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMODE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInputMode ( (QVirtualKeyboardInputEngine::InputMode) hb_parni(1) );
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
QList<int> patternRecognitionModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PATTERNRECOGNITIONMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->patternRecognitionModes ();
      _qt5xhb_convert_qlist_int_to_array ( list );
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
QVirtualKeyboardSelectionListModel *wordCandidateListModel() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTMODEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardSelectionListModel * ptr = obj->wordCandidateListModel ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDSELECTIONLISTMODEL" );
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
bool wordCandidateListVisibleHint() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTVISIBLEHINT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->wordCandidateListVisibleHint () );
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
void init() [private]
*/

/*
Q_INVOKABLE bool virtualKeyPress(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers, bool repeat)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYPRESS )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISCHAR(2) && ISNUM(3) && ISLOG(4) )
    {
#endif
      RBOOL( obj->virtualKeyPress ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3), PBOOL(4) ) );
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
Q_INVOKABLE void virtualKeyCancel()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCANCEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->virtualKeyCancel ();
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
Q_INVOKABLE bool virtualKeyRelease(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYRELEASE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyRelease ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
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
Q_INVOKABLE bool virtualKeyClick(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCLICK )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyClick ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
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
QVirtualKeyboardInputContext *inputContext() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTCONTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputContext * ptr = obj->inputContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDINPUTCONTEXT" );
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
Q_INVOKABLE QVirtualKeyboardTrace *traceBegin(int traceId, PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
*/

/*
Q_INVOKABLE bool traceEnd(QVirtualKeyboardTrace *trace)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_TRACEEND )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1) )
    {
#endif
      RBOOL( obj->traceEnd ( PQVIRTUALKEYBOARDTRACE(1) ) );
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
Q_INVOKABLE bool reselect(int cursorPosition, const ReselectFlags &reselectFlags)
*/

/*
bool clickPreeditText(int cursorPosition)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_CLICKPREEDITTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->clickPreeditText ( PINT(1) ) );
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
void reset() [private] [slot]
*/

/*
void update() [private] [slot]
*/

/*
void shiftChanged() [private] [slot]
*/

/*
void updateSelectionListModels() [private] [slot]
*/

/*
void updateInputModes() [private] [slot]
*/

/*
void timerEvent(QTimerEvent *timerEvent) [protected]
*/

/*
void virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONVIRTUALKEYCLICKED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::virtualKeyClicked, 
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::Key arg1, const QString & arg2, Qt::KeyboardModifiers arg3, bool arg4) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutNI( NULL, (int) arg3 );
            PHB_ITEM pArg4 = hb_itemPutL( NULL, arg4 );
            hb_vmEvalBlockV( cb, 5, pSender, pArg1, pArg2, pArg3, pArg4 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
            hb_itemRelease( pArg4 );
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
void activeKeyChanged( Qt::Key key )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONACTIVEKEYCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("activeKeyChanged(Qt::Key)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::activeKeyChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::Key arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
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
void previousKeyChanged( Qt::Key key )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPREVIOUSKEYCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("previousKeyChanged(Qt::Key)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::previousKeyChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::Key arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
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
void inputMethodChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("inputMethodChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void inputMethodReset()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODRESET )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("inputMethodReset()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodReset, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void inputMethodUpdate()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODUPDATE )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("inputMethodUpdate()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodUpdate, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void inputModesChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODESCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("inputModesChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputModesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void inputModeChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODECHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("inputModeChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputModeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void patternRecognitionModesChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPATTERNRECOGNITIONMODESCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("patternRecognitionModesChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::patternRecognitionModesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void wordCandidateListModelChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTMODELCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("wordCandidateListModelChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::wordCandidateListModelChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
void wordCandidateListVisibleHintChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTVISIBLEHINTCHANGED )
{
  auto sender = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("wordCandidateListVisibleHintChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::wordCandidateListVisibleHintChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
