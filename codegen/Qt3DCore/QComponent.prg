%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QComponent(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QComponent(QComponentPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QComponent()
$deleteMethod

%%
%% Q_PROPERTY(bool isShareable READ isShareable WRITE setShareable NOTIFY shareableChanged)
%%

$prototype=bool isShareable() const
$method=|bool|isShareable|

$prototype=void setShareable(bool isShareable)
$slotMethod=|void|setShareable|bool

%%
%%
%%

$prototype=QVector<QEntity *> entities() const
$method=|QVector<QEntity *>|entities|

%% $beginSignals
%% $signal=|shareableChanged(bool)
%% $signal=|addedToEntity(QEntity*)
%% $signal=|removedFromEntity(QEntity*)
%% $endSignals

$prototype=void shareableChanged( bool isShareable )
$signalMethod=|void|shareableChanged|bool

$prototype=void addedToEntity( QEntity * entity )
$signalMethod=|void|addedToEntity|QEntity *

$prototype=void removedFromEntity( QEntity * entity )
$signalMethod=|void|removedFromEntity|QEntity *

#pragma ENDDUMP
