/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGELAYOUT
#endif

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution
   METHOD pageLayout
   METHOD setPageLayout
   METHOD pdfVersion
   METHOD setPageMargins
   METHOD setPageOrientation
   METHOD setPdfVersion

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPdfWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

/*
explicit QPdfWriter(const QString & filename)
*/
void QPdfWriter_new1 ()
{
  auto obj = new QPdfWriter ( PQSTRING(1) );
  _qt5xhb_returnNewObject( obj, false );
}

/*
explicit QPdfWriter(QIODevice * device)
*/
void QPdfWriter_new2 ()
{
  auto obj = new QPdfWriter ( PQIODEVICE(1) );
  _qt5xhb_returnNewObject( obj, false );
}

//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPdfWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPdfWriter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPDFWRITER_DELETE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString title() const
*/
HB_FUNC_STATIC( QPDFWRITER_TITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title () );
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
void setTitle(const QString & title)
*/
HB_FUNC_STATIC( QPDFWRITER_SETTITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setTitle ( PQSTRING(1) );
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
QString creator() const
*/
HB_FUNC_STATIC( QPDFWRITER_CREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->creator () );
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
void setCreator(const QString & creator)
*/
HB_FUNC_STATIC( QPDFWRITER_SETCREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setCreator ( PQSTRING(1) );
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
bool newPage()
*/
HB_FUNC_STATIC( QPDFWRITER_NEWPAGE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->newPage () );
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
void setPageSize(PageSize size) (obsolet)
*/
void QPdfWriter_setPageSize1 ()
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setPageSize ( (QPagedPaintDevice::PageSize) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setPageSize(const QPageSize &pageSize)
*/
void QPdfWriter_setPageSize2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->setPageSize ( *PQPAGESIZE(1) ) );
  }
#endif
}

//[1]void setPageSize(PageSize size) (obsolet)
//[2]bool setPageSize(const QPageSize &pageSize)

HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPdfWriter_setPageSize1();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPdfWriter_setPageSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPageSizeMM(const QSizeF & size) (obsolet)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZEMM )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setPageSizeMM ( *PQSIZEF(1) );
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
int resolution() const
*/
HB_FUNC_STATIC( QPDFWRITER_RESOLUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->resolution () );
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
void setResolution(int resolution)
*/
HB_FUNC_STATIC( QPDFWRITER_SETRESOLUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setResolution ( PINT(1) );
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
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC( QPDFWRITER_PAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPageLayout( obj->pageLayout () );
      _qt5xhb_createReturnClass ( ptr, "QPAGELAYOUT", true );
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
bool setPageLayout(const QPageLayout &newPageLayout)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
#endif
      RBOOL( obj->setPageLayout ( *PQPAGELAYOUT(1) ) );
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
PdfVersion pdfVersion() const
*/
HB_FUNC_STATIC( QPDFWRITER_PDFVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pdfVersion () );
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
bool setPageMargins(const QMarginsF &margins)
*/
void QPdfWriter_setPageMargins1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->setPageMargins ( *PQMARGINSF(1) ) );
  }
#endif
}

/*
bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/
void QPdfWriter_setPageMargins2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->setPageMargins ( *PQMARGINSF(1), (QPageLayout::Unit) hb_parni(2) ) );
  }
#endif
}

//[1]bool setPageMargins(const QMarginsF &margins)
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPDFWRITER_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QPdfWriter_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPdfWriter_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setPageOrientation(QPageLayout::Orientation orientation)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGEORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setPageOrientation ( (QPageLayout::Orientation) hb_parni(1) ) );
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
void setPdfVersion(PdfVersion version)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPDFVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPdfVersion ( (QPagedPaintDevice::PdfVersion) hb_parni(1) );
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
virtual void setMargins(const Margins &m) override (obsolete)
*/

#pragma ENDDUMP
