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

$beginClassFrom=Qt3DAnimation::QAbstractClipBlendNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClipBlendValue(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QClipBlendValue(Qt3DAnimation::QAbstractAnimationClip *clip, Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QClipBlendValue(QClipBlendValuePrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QClipBlendValue()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractAnimationClip *clip READ clip WRITE setClip NOTIFY clipChanged)
%%

$prototypeV2=Qt3DAnimation::QAbstractAnimationClip * clip() const

$prototypeV2=void setClip( Qt3DAnimation::QAbstractAnimationClip * clip ) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void clipChanged( Qt3DAnimation::QAbstractAnimationClip * clip )
$signalMethod=|void|clipChanged|Qt3DAnimation::QAbstractAnimationClip *

#pragma ENDDUMP
