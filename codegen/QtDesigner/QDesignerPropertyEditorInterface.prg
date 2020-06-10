%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtDesigner/QDesignerFormEditorInterface>

$deleteMethod

$prototypeV2=virtual QDesignerFormEditorInterface * core() const

$prototypeV2=virtual QString currentPropertyName() const = 0

$prototypeV2=virtual bool isReadOnly() const = 0

$prototypeV2=virtual QObject * object() const = 0

$prototype=virtual void setObject ( QObject * object ) = 0
$virtualMethod=|void|setObject|QObject *

$prototype=virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
$virtualMethod=|void|setPropertyValue|const QString &,const QVariant &,bool=true

$prototype=virtual void setReadOnly ( bool readOnly ) = 0
$virtualMethod=|void|setReadOnly|bool

%%
%% SIGNALS
%%

$prototype=void propertyChanged( const QString & name, const QVariant & value )
$signalMethod=|void|propertyChanged|const QString &,const QVariant &

#pragma ENDDUMP
