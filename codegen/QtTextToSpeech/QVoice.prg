%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVoice()
$internalConstructor=|new1|

$prototype=QVoice(const QVoice &other)
$internalConstructor=|new2|const QVoice &

$prototype=QVoice(const QString &name, Gender gender, Age age, const QVariant &data) [private]

/*
[1]QVoice()
[2]QVoice(const QVoice &other)
[3]QVoice(const QString &name, Gender gender, Age age, const QVariant &data) [private]
*/

HB_FUNC_STATIC( QVOICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVoice_new1();
  }
  else if( ISNUMPAR(1) && ISQVOICE(1) )
  {
    QVoice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVoice()
$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=Gender gender() const
$method=|QVoice::Gender|gender|

$prototype=Age age() const
$method=|QVoice::Age|age|

$prototype=static QString genderName(QVoice::Gender gender)
$staticMethod=|QString|genderName|QVoice::Gender

$prototype=static QString ageName(QVoice::Age age)
$staticMethod=|QString|ageName|QVoice::Age

$prototype=void setName(const QString &name) [private]

$prototype=void setGender(Gender gender) [private]

$prototype=void setAge(Age age) [private]

$prototype=void setData(const QVariant &data) [private]

$prototype=QVariant data() const [private]

$extraMethods

#pragma ENDDUMP
