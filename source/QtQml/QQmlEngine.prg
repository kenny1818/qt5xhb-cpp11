//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKACCESSMANAGER
REQUEST QQMLCONTEXT
REQUEST QQMLIMAGEPROVIDERBASE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QQMLNETWORKACCESSMANAGERFACTORY
REQUEST QURL
#endif

CLASS QQmlEngine INHERIT QJSEngine

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addNamedBundle
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD incubationController
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setIncubationController
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD trimComponentCache
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QQmlEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtQml/QQmlEngine>
#endif

#include <QtCore/QStringList>
#include <QtNetwork/QNetworkAccessManager>
#include <QtQml/QQmlContext>

    /*
    QQmlEngine(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(QQMLENGINE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QQmlEngine(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QQMLENGINE_DELETE)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

/*
void addImageProvider(const QString &providerId, QQmlImageProviderBase * provider)
*/
HB_FUNC_STATIC(QQMLENGINE_ADDIMAGEPROVIDER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQQMLIMAGEPROVIDERBASE(2))
    {
#endif
      obj->addImageProvider(PQSTRING(1), PQQMLIMAGEPROVIDERBASE(2));
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
void addImportPath(const QString &path)
*/
HB_FUNC_STATIC(QQMLENGINE_ADDIMPORTPATH)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addImportPath(PQSTRING(1));
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
bool addNamedBundle(const QString &name, const QString &fileName)
*/
HB_FUNC_STATIC(QQMLENGINE_ADDNAMEDBUNDLE)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      RBOOL(obj->addNamedBundle(PQSTRING(1), PQSTRING(2)));
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
void addPluginPath(const QString &path)
*/
HB_FUNC_STATIC(QQMLENGINE_ADDPLUGINPATH)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addPluginPath(PQSTRING(1));
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
QUrl baseUrl() const
*/
HB_FUNC_STATIC(QQMLENGINE_BASEURL)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QUrl(obj->baseUrl());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
void clearComponentCache()
*/
HB_FUNC_STATIC(QQMLENGINE_CLEARCOMPONENTCACHE)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearComponentCache();
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
QQmlImageProviderBase * imageProvider(const QString &providerId) const
*/
HB_FUNC_STATIC(QQMLENGINE_IMAGEPROVIDER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = obj->imageProvider(PQSTRING(1));
      Qt5xHb::createReturnClass(ptr, "QQMLIMAGEPROVIDERBASE", false);
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
QStringList importPathList() const
*/
HB_FUNC_STATIC(QQMLENGINE_IMPORTPATHLIST)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->importPathList());
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
bool importPlugin(const QString &filePath, const QString &uri, QList<QQmlError> * errors)
*/
/*
QQmlIncubationController * incubationController() const
*/
HB_FUNC_STATIC(QQMLENGINE_INCUBATIONCONTROLLER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->incubationController();
      Qt5xHb::createReturnClass(ptr, "QQMLINCUBATIONCONTROLLER", false);
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
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC(QQMLENGINE_NETWORKACCESSMANAGER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QNETWORKACCESSMANAGER");
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
QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const
*/
HB_FUNC_STATIC(QQMLENGINE_NETWORKACCESSMANAGERFACTORY)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->networkAccessManagerFactory();
      Qt5xHb::createReturnClass(ptr, "QQMLNETWORKACCESSMANAGERFACTORY", false);
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
QString offlineStoragePath() const
*/
HB_FUNC_STATIC(QQMLENGINE_OFFLINESTORAGEPATH)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->offlineStoragePath());
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
bool outputWarningsToStandardError() const
*/
HB_FUNC_STATIC(QQMLENGINE_OUTPUTWARNINGSTOSTANDARDERROR)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->outputWarningsToStandardError());
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
QStringList pluginPathList() const
*/
HB_FUNC_STATIC(QQMLENGINE_PLUGINPATHLIST)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->pluginPathList());
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
void removeImageProvider(const QString &providerId)
*/
HB_FUNC_STATIC(QQMLENGINE_REMOVEIMAGEPROVIDER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->removeImageProvider(PQSTRING(1));
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
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC(QQMLENGINE_ROOTCONTEXT)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->rootContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QQMLCONTEXT");
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
void setBaseUrl(const QUrl &url)
*/
HB_FUNC_STATIC(QQMLENGINE_SETBASEURL)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setBaseUrl(*PQURL(1));
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
void setImportPathList(const QStringList &paths)
*/
HB_FUNC_STATIC(QQMLENGINE_SETIMPORTPATHLIST)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setImportPathList(PQSTRINGLIST(1));
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
void setIncubationController(QQmlIncubationController * controller)
*/
HB_FUNC_STATIC(QQMLENGINE_SETINCUBATIONCONTROLLER)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQQMLINCUBATIONCONTROLLER(1))
    {
#endif
      obj->setIncubationController(PQQMLINCUBATIONCONTROLLER(1));
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
void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
*/
HB_FUNC_STATIC(QQMLENGINE_SETNETWORKACCESSMANAGERFACTORY)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQQMLNETWORKACCESSMANAGERFACTORY(1))
    {
#endif
      obj->setNetworkAccessManagerFactory(PQQMLNETWORKACCESSMANAGERFACTORY(1));
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
void setOfflineStoragePath(const QString &dir)
*/
HB_FUNC_STATIC(QQMLENGINE_SETOFFLINESTORAGEPATH)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setOfflineStoragePath(PQSTRING(1));
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
void setOutputWarningsToStandardError(bool enabled)
*/
HB_FUNC_STATIC(QQMLENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setOutputWarningsToStandardError(PBOOL(1));
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
void setPluginPathList(const QStringList &paths)
*/
HB_FUNC_STATIC(QQMLENGINE_SETPLUGINPATHLIST)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setPluginPathList(PQSTRINGLIST(1));
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
void trimComponentCache()
*/
HB_FUNC_STATIC(QQMLENGINE_TRIMCOMPONENTCACHE)
{
  auto obj = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->trimComponentCache();
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
static QQmlContext * contextForObject(const QObject * object)
*/
HB_FUNC_STATIC(QQMLENGINE_CONTEXTFOROBJECT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    auto ptr = QQmlEngine::contextForObject(PQOBJECT(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QQMLCONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QQmlEngine::ObjectOwnership objectOwnership(QObject * object)
*/
HB_FUNC_STATIC(QQMLENGINE_OBJECTOWNERSHIP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    RENUM(QQmlEngine::objectOwnership(PQOBJECT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setContextForObject(QObject * object, QQmlContext * context)
*/
HB_FUNC_STATIC(QQMLENGINE_SETCONTEXTFOROBJECT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2))
  {
#endif
    QQmlEngine::setContextForObject(PQOBJECT(1), PQQMLCONTEXT(2));
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
static void setObjectOwnership(QObject * object, QQmlEngine::ObjectOwnership ownership)
*/
HB_FUNC_STATIC(QQMLENGINE_SETOBJECTOWNERSHIP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2))
  {
#endif
    QQmlEngine::setObjectOwnership(PQOBJECT(1), static_cast<QQmlEngine::ObjectOwnership>(hb_parni(2)));
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
void quit()
*/
HB_FUNC_STATIC(QQMLENGINE_ONQUIT)
{
  auto sender = qobject_cast<QQmlEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("quit()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QQmlEngine::quit, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QQMLENGINE");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }
        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
