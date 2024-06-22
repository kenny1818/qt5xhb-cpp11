/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXSCRIPT
REQUEST QVARIANT
#endif

CLASS QAxScriptManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addObject
   METHOD call
   METHOD functions
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter

   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxScriptManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxScriptManager>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxScriptManager>
#endif

#include <QtCore/QStringList>

/*
QAxScriptManager( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_NEW )
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QAxScriptManager( OPQOBJECT( 1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QAxScriptManager() override
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_DELETE )
{
  auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if (ISNUMPAR(1) && ISQAXBASE(1))
  {
    /*
    void addObject( QAxBase * object )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->addObject(PQAXBASE(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    /*
    void addObject( QObject * object )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->addObject(PQOBJECT(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if (ISBETWEEN(1, 9) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)) && (ISQVARIANT(3) || HB_ISNIL(3)) && (ISQVARIANT(4) || HB_ISNIL(4)) && (ISQVARIANT(5) || HB_ISNIL(5)) && (ISQVARIANT(6) || HB_ISNIL(6)) && (ISQVARIANT(7) || HB_ISNIL(7)) && (ISQVARIANT(8) || HB_ISNIL(8)) && (ISQVARIANT(9) || HB_ISNIL(9)))
  {
    /*
    QVariant call( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QVariant(obj->call(PQSTRING(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(2)), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(3)), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(4)), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(5)), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(6)), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(7)), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(8)), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>(Qt5xHb::itemGetPtr(9))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
    /*
    QVariant call( const QString & function, QList<QVariant> & arguments )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QVariant(obj->call(PQSTRING(1), PQVARIANTLIST(2)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList functions( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_FUNCTIONS )
{
  auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RQSTRINGLIST(obj->functions( HB_ISNIL(1) ? static_cast<QAxScript::FunctionFlags >( QAxScript::FunctionNames ) : static_cast<QAxScript::FunctionFlags >( hb_parni(1))));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    QAxScript * load( const QString & code, const QString & name, const QString & language )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->load(PQSTRING(1), PQSTRING(2), PQSTRING(3));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXSCRIPT");
    }

  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    QAxScript * load( const QString & file, const QString & name )
    */
    auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = obj->load(PQSTRING(1), PQSTRING(2));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXSCRIPT");
    }

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAxScript * script( const QString & name ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPT )
{
  auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = obj->script(PQSTRING(1));
      Qt5xHb::createReturnQObjectClass(ptr, "QAXSCRIPT");
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
QStringList scriptNames() const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTNAMES )
{
  auto obj = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->scriptNames());
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
static bool registerEngine( const QString & name, const QString & extension, const QString & code = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_REGISTERENGINE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISCHAR(3) || HB_ISNIL(3)))
  {
#endif
    RBOOL( QAxScriptManager::registerEngine(PQSTRING(1), PQSTRING(2), OPQSTRING(3, QString() )));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString scriptFileFilter()
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTFILEFILTER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING( QAxScriptManager::scriptFileFilter());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
void error( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_ONERROR )
{
  auto sender = qobject_cast<QAxScriptManager*>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if( sender != nullptr )
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("error(QAxScript*,int,QString,int,QString)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock) )
      {
        auto connection = QObject::connect(sender,
                                           &QAxScriptManager::error,
                                           [sender, indexOfCodeBlock]
                                           (QAxScript * arg1, int arg2, const QString & arg3, int arg4, const QString & arg5) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if( cb != nullptr )
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QAXSCRIPTMANAGER");
            auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QAXSCRIPT");
            auto pArg2 = hb_itemPutNI(nullptr, arg2);
            auto pArg3 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg3));
            auto pArg4 = hb_itemPutNI(nullptr, arg4);
            auto pArg5 = hb_itemPutC(nullptr, QSTRINGTOSTRING(arg5));
            hb_vmEvalBlockV(cb, 6, pSender, pArg1, pArg2, pArg3, pArg4, pArg5);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
            hb_itemRelease(pArg2);
            hb_itemRelease(pArg3);
            hb_itemRelease(pArg4);
            hb_itemRelease(pArg5);
          }

        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
