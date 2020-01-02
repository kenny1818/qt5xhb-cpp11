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

$beginClassFrom=Q3DObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DCamera(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DCamera()
$deleteMethod

%%
%% Q_PROPERTY(float xRotation READ xRotation WRITE setXRotation NOTIFY xRotationChanged)
%%

$prototype=float xRotation() const
$method=|float|xRotation|

$prototype=void setXRotation(float rotation)
$method=|void|setXRotation|float

%%
%% Q_PROPERTY(float yRotation READ yRotation WRITE setYRotation NOTIFY yRotationChanged)
%%

$prototype=float yRotation() const
$method=|float|yRotation|

$prototype=void setYRotation(float rotation)
$method=|void|setYRotation|float

%%
%% Q_PROPERTY(float zoomLevel READ zoomLevel WRITE setZoomLevel NOTIFY zoomLevelChanged)
%%

$prototype=float zoomLevel() const
$method=|float|zoomLevel|

$prototype=void setZoomLevel(float zoomLevel)
$method=|void|setZoomLevel|float

%%
%% Q_PROPERTY(CameraPreset cameraPreset READ cameraPreset WRITE setCameraPreset NOTIFY cameraPresetChanged)
%%

$prototype=CameraPreset cameraPreset() const
$method=|Q3DCamera::CameraPreset|cameraPreset|

$prototype=void setCameraPreset(CameraPreset preset)
$method=|void|setCameraPreset|Q3DCamera::CameraPreset

%%
%% Q_PROPERTY(bool wrapXRotation READ wrapXRotation WRITE setWrapXRotation NOTIFY wrapXRotationChanged)
%%

$prototype=bool wrapXRotation() const
$method=|bool|wrapXRotation|

$prototype=void setWrapXRotation(bool isEnabled)
$method=|void|setWrapXRotation|bool

%%
%% Q_PROPERTY(bool wrapYRotation READ wrapYRotation WRITE setWrapYRotation NOTIFY wrapYRotationChanged)
%%

$prototype=bool wrapYRotation() const
$method=|bool|wrapYRotation|

$prototype=void setWrapYRotation(bool isEnabled)
$method=|void|setWrapYRotation|bool

%%
%% Q_PROPERTY(QVector3D target READ target WRITE setTarget NOTIFY targetChanged REVISION 1)
%%

$prototype=QVector3D target() const
$method=|QVector3D|target|

$prototype=void setTarget(const QVector3D &target)
$method=|void|setTarget|const QVector3D &

%%
%% Q_PROPERTY(float minZoomLevel READ minZoomLevel WRITE setMinZoomLevel NOTIFY minZoomLevelChanged REVISION 1)
%%

$prototype=float minZoomLevel() const
$method=|float|minZoomLevel|

$prototype=void setMinZoomLevel(float zoomLevel)
$method=|void|setMinZoomLevel|float

%%
%% Q_PROPERTY(float maxZoomLevel READ maxZoomLevel WRITE setMaxZoomLevel NOTIFY maxZoomLevelChanged REVISION 1)
%%

$prototype=float maxZoomLevel() const
$method=|float|maxZoomLevel|

$prototype=void setMaxZoomLevel(float zoomLevel)
$method=|void|setMaxZoomLevel|float

%%
%%
%%

$prototype=virtual void copyValuesFrom(const Q3DObject &source)
$virtualMethod=|void|copyValuesFrom|const Q3DObject &

$prototype=void setCameraPosition(float horizontal, float vertical, float zoom = 100.0f)
$method=|void|setCameraPosition|float,float,float=100.0f

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void cameraPresetChanged( Q3DCamera::CameraPreset preset )
$signalMethod=|void|cameraPresetChanged|Q3DCamera::CameraPreset

$prototype=void maxZoomLevelChanged( float zoomLevel )
$signalMethod=|void|maxZoomLevelChanged|float

$prototype=void minZoomLevelChanged( float zoomLevel )
$signalMethod=|void|minZoomLevelChanged|float

$prototype=void targetChanged( const QVector3D & target )
$signalMethod=|void|targetChanged|const QVector3D &

$prototype=void wrapXRotationChanged( bool isEnabled )
$signalMethod=|void|wrapXRotationChanged|bool

$prototype=void wrapYRotationChanged( bool isEnabled )
$signalMethod=|void|wrapYRotationChanged|bool

$prototype=void xRotationChanged( float rotation )
$signalMethod=|void|xRotationChanged|float

$prototype=void yRotationChanged( float rotation )
$signalMethod=|void|yRotationChanged|float

$prototype=void zoomLevelChanged( float zoomLevel )
$signalMethod=|void|zoomLevelChanged|float

#pragma ENDDUMP
