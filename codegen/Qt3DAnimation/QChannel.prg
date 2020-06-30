%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

%% TODO:
%% // Iterator API
%% typedef const QChannelComponent *const_iterator;
%% typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
%%
%% const_iterator begin()  const Q_DECL_NOTHROW;
%% const_iterator cbegin() const Q_DECL_NOTHROW { return begin(); }
%% const_iterator end()    const Q_DECL_NOTHROW;
%% const_iterator cend()   const Q_DECL_NOTHROW { return end(); }
%% const_reverse_iterator rbegin()  const Q_DECL_NOTHROW { return const_reverse_iterator(end()); }
%% const_reverse_iterator crbegin() const Q_DECL_NOTHROW { return rbegin(); }
%% const_reverse_iterator rend()    const Q_DECL_NOTHROW { return const_reverse_iterator(begin()); }
%% const_reverse_iterator crend()   const Q_DECL_NOTHROW { return rend(); }

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChannel()
$prototype=explicit QChannel(const QString &name)
$prototype=QChannel(const QChannel &)

$prototype=~QChannel()
$deleteMethod

$prototypeV2=void setName( const QString & name )

$prototypeV2=QString name() const

$prototypeV2=void setJointIndex( int jointIndex )

$prototypeV2=int jointIndex() const

$prototypeV2=int channelComponentCount() const

$prototypeV2=void appendChannelComponent( const QChannelComponent & component )

$prototypeV2=void insertChannelComponent( int index, const QChannelComponent & component )

$prototypeV2=void removeChannelComponent( int index )

$prototypeV2=void clearChannelComponents()

$extraMethods

#pragma ENDDUMP
