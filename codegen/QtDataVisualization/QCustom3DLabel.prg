%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCustom3DItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QCustom3DLabel(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,const QFont &,const QVector3D &,const QVector3D &,const QQuaternion &,QObject *=nullptr

//[1]explicit QCustom3DLabel(QObject *parent = nullptr)
//[2]explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = nullptr)

HB_FUNC_STATIC( QCUSTOM3DLABEL_NEW  )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DLabel_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQFONT(2) && ISQVECTOR3D(3) && ISQVECTOR3D(4) && ISQQUATERNION(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QCustom3DLabel()
$deleteMethod

%%
%% Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
%%

$prototype=QString text() const
$method=|QString|text|

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

%%
%% Q_PROPERTY(QColor textColor READ textColor WRITE setTextColor NOTIFY textColorChanged)
%%

$prototype=QColor textColor() const
$method=|QColor|textColor|

$prototype=void setTextColor(const QColor &color)
$method=|void|setTextColor|const QColor &

%%
%% Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged)
%%

$prototype=QColor backgroundColor() const
$method=|QColor|backgroundColor|

$prototype=void setBackgroundColor(const QColor &color)
$method=|void|setBackgroundColor|const QColor &

%%
%% Q_PROPERTY(bool borderEnabled READ isBorderEnabled WRITE setBorderEnabled NOTIFY borderEnabledChanged)
%%

$prototype=bool isBorderEnabled() const
$method=|bool|isBorderEnabled|

$prototype=void setBorderEnabled(bool enabled)
$method=|void|setBorderEnabled|bool

%%
%% Q_PROPERTY(bool backgroundEnabled READ isBackgroundEnabled WRITE setBackgroundEnabled NOTIFY backgroundEnabledChanged)
%%

$prototype=bool isBackgroundEnabled() const
$method=|bool|isBackgroundEnabled|

$prototype=void setBackgroundEnabled(bool enabled)
$method=|void|setBackgroundEnabled|bool

%%
%% Q_PROPERTY(bool facingCamera READ isFacingCamera WRITE setFacingCamera NOTIFY facingCameraChanged)
%%

$prototype=bool isFacingCamera() const
$method=|bool|isFacingCamera|

$prototype=void setFacingCamera(bool enabled)
$method=|void|setFacingCamera|bool

%%
%%
%%

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void backgroundColorChanged( const QColor & color )
$signalMethod=|void|backgroundColorChanged|const QColor &

$prototype=void backgroundEnabledChanged( bool enabled )
$signalMethod=|void|backgroundEnabledChanged|bool

$prototype=void borderEnabledChanged( bool enabled )
$signalMethod=|void|borderEnabledChanged|bool

$prototype=void facingCameraChanged( bool enabled )
$signalMethod=|void|facingCameraChanged|bool

$prototype=void fontChanged( const QFont & font )
$signalMethod=|void|fontChanged|const QFont &

$prototype=void textChanged( const QString & text )
$signalMethod=|void|textChanged|const QString &

$prototype=void textColorChanged( const QColor & color )
$signalMethod=|void|textColorChanged|const QColor &

#pragma ENDDUMP
