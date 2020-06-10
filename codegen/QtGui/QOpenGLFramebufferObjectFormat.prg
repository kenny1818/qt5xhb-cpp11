%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLFramebufferObjectFormat()
$internalConstructor=|new1|

$prototype=QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)
$internalConstructor=|new2|const QOpenGLFramebufferObjectFormat &

/*
[1]QOpenGLFramebufferObjectFormat()
[2]QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)
*/

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLFramebufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QOpenGLFramebufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setSamples(int samples)
$method=|void|setSamples|int

$prototypeV2=int samples() const

$prototype=void setMipmap(bool enabled)
$method=|void|setMipmap|bool

$prototypeV2=bool mipmap() const

$prototype=void setAttachment(QOpenGLFramebufferObject::Attachment attachment)
$method=|void|setAttachment|QOpenGLFramebufferObject::Attachment

$prototypeV2=QOpenGLFramebufferObject::Attachment attachment() const

$prototype=void setTextureTarget(GLenum target)
$method=|void|setTextureTarget|GLenum

$prototypeV2=GLenum textureTarget() const

$prototype=void setInternalTextureFormat(GLenum internalTextureFormat)
$method=|void|setInternalTextureFormat|GLenum

$prototypeV2=GLenum internalTextureFormat() const

$extraMethods

#pragma ENDDUMP
