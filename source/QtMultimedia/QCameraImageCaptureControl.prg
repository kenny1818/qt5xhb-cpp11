/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraImageCaptureControl INHERIT QMediaControl

   METHOD delete
   METHOD cancelCapture
   METHOD capture
   METHOD driveMode
   METHOD isReadyForCapture
   METHOD setDriveMode

   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageCaptureControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraImageCaptureControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraImageCaptureControl>
#endif

/*
explicit QCameraImageCaptureControl(QObject *parent = nullptr) [protected]
*/

/*
~QCameraImageCaptureControl()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_DELETE )
{
  auto obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
virtual void cancelCapture() = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CANCELCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelCapture ();
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
virtual int capture(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RINT( obj->capture ( PQSTRING(1) ) );
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
virtual QCameraImageCapture::DriveMode driveMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_DRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->driveMode () );
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
virtual bool isReadyForCapture() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ISREADYFORCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadyForCapture () );
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
virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_SETDRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDriveMode ( (QCameraImageCapture::DriveMode) hb_parni(1) );
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
void error( int id, int error, const QString & errorString )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONERROR )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(int,int,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::error, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2, const QString & arg3) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            PHB_ITEM pArg3 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
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
void imageAvailable( int requestId, const QVideoFrame & buffer )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEAVAILABLE )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("imageAvailable(int,QVideoFrame)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::imageAvailable, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QVideoFrame & arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_object( (void *) &arg2, "QVIDEOFRAME" );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void imageCaptured( int requestId, const QImage & preview )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONIMAGECAPTURED )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("imageCaptured(int,QImage)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::imageCaptured, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QImage & arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = Signals4_return_object( (void *) &arg2, "QIMAGE" );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void imageExposed( int requestId )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEEXPOSED )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("imageExposed(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::imageExposed, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
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
void imageMetadataAvailable( int id, const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEMETADATAAVAILABLE )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("imageMetadataAvailable(int,QString,QVariant)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::imageMetadataAvailable, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QString & arg2, const QVariant & arg3) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = Signals4_return_object( (void *) &arg3, "QVARIANT" );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
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
void imageSaved( int requestId, const QString & fileName )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONIMAGESAVED )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("imageSaved(int,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::imageSaved, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, const QString & arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void readyForCaptureChanged( bool ready )
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ONREADYFORCAPTURECHANGED )
{
  auto sender = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("readyForCaptureChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraImageCaptureControl::readyForCaptureChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCAMERAIMAGECAPTURECONTROL" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
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
