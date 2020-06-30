%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimationClip

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationClip(Qt3DCore::QNode *parent = nullptr)

$prototype=QAnimationClip(QAnimationClipPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAnimationClip()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAnimationClipData clipData READ clipData WRITE setClipData NOTIFY clipDataChanged)
%%

$prototypeV2=Qt3DAnimation::QAnimationClipData clipData() const

$prototypeV2=void setClipData( const Qt3DAnimation::QAnimationClipData & clipData ) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void clipDataChanged( Qt3DAnimation::QAnimationClipData clipData )
$signalMethod=|void|clipDataChanged|Qt3DAnimation::QAnimationClipData

#pragma ENDDUMP
