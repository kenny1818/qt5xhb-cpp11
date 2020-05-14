/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "signals.h"

static Signals *s_signals = nullptr;

/*
  constructor
*/
Signals::Signals( QObject *parent ) : QObject( parent )
{
  mutex = new QMutex();
}

/*
  destructor
*/
Signals::~Signals()
{
  Signals_release_codeblocks();
  delete mutex;
}

/*
  Conecta um determinado sinal com um objeto
  Par�metro 1: objeto
  Par�metro 2: indice do sinal
  Par�metro 3: codeblock
  Retorna o indice usado no vetor
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

int Signals_connect_signal( QObject * object, int indexOfSignal, PHB_ITEM codeblock )
{
  auto result = -1;

  auto found = false;

  const int listsize = s_signals->list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( s_signals->list1.at(i) == object ) && ( s_signals->list2.at(i) == indexOfSignal ) )
    {
      found = true;
      break;
    }
  }

  // se nao encontrado na lista, adiciona
  if( !found )
  {
    // procura por posi��o livre
    auto index = s_signals->list1.indexOf( nullptr );

    if( index == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais
      s_signals->list1 << object;
      s_signals->list2 << indexOfSignal;
      s_signals->list3 << codeblock;
      QMetaObject::Connection connection;
      s_signals->list4 << connection;
      result = s_signals->list1.size() - 1;
    }
    else // encontrou posicao livre
    {
      // coloca na posi��o livre
      s_signals->list1[index] = object;
      s_signals->list2[index] = indexOfSignal;
      s_signals->list3[index] = codeblock;
      QMetaObject::Connection connection;
      s_signals->list4[index] = connection;
      result = index;
    }
  }

  return result;
}

/*
  Desconecta um determinado sinal
  Par�metro 1: objeto
  Par�metro 2: indice do sinal
  Retorna true se a desconex�o foi bem sucedida ou false se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

bool Signals_disconnect_signal( QObject * object, int indexOfSignal )
{
  auto result = false;

  const int listsize = s_signals->list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( s_signals->list1.at(i) == object ) && ( s_signals->list2.at(i) == indexOfSignal ) )
    {
      hb_itemRelease( s_signals->list3.at(i) );
      s_signals->list1[i] = nullptr;
      s_signals->list2[i] = -1;
      s_signals->list3[i] = nullptr;
      QMetaObject::Connection connection;
      s_signals->list4[i] = connection;
      result = true;
    }
  }

  return result;
}

/*
  Verifica se um determinado sinal do objeto especificado est� conectado
  Par�metro 1: objeto
  Par�metro 2: indice do sinal
  Retorna true se existe uma conex�o ativa ou false caso n�o exista
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

bool Signals_is_signal_connected( QObject * object, int indexOfSignal )
{
  auto result = false;

  const int listsize = s_signals->list1.size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( s_signals->list1.at(i) == object ) && ( s_signals->list2.at(i) == indexOfSignal ) )
    {
      result = true;
      break;
    }
  }

  return result;
}

/*
  Retorna um codeblock atraves do indice do codeblock no vetor
  Par�metro: indice do codeblock
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do usu�rio
*/

PHB_ITEM Signals_return_codeblock( int indexOfCodeBlock )
{
  return s_signals->list3.at(indexOfCodeBlock);
}

/*
  Libera todos os codeblocks relacionados com sinais.
  Executado apenas 1 vez, na destrui��o do objeto s_signals.
*/

void Signals_release_codeblocks()
{
  if( s_signals != nullptr )
  {
    const int listsize = s_signals->list1.size();
    for( auto i = 0; i < listsize; ++i )
    {
      if( s_signals->list1.at(i) != nullptr )
      {
        hb_itemRelease( s_signals->list3.at(i) );
        s_signals->list1[i] = nullptr;
        s_signals->list2[i] = -1;
        s_signals->list3[i] = nullptr;
        QMetaObject::Connection connection;
        s_signals->list4[i] = connection;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj',
  incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
  NOTA: o sinal "destroyed(QObject*)" n�o � liberado, pois se fosse n�o seria executado
  na destrui��o do objeto. Este sinal � liberado automaticamente ap�s sua execu��o, pois
  a destrui��o de um objeto ocorre apenas uma vez.
*/

void Signals_disconnect_all_signals( QObject * obj, bool children )
{
  auto indexOfSignal = 0;

  if( s_signals != nullptr )
  {
    if( !children )
    {
      indexOfSignal = obj->metaObject()->indexOfSignal("destroyed(QObject*)");

      // percorre toda a lista de sinais
      const int listsize = s_signals->list1.size();
      for( auto i = 0; i < listsize; ++i )
      {
        // elimina sinais ativos ligados ao objeto 'obj'
        if( ( s_signals->list1.at(i) == obj ) && ( s_signals->list2.at(i) != indexOfSignal ) )
        {
          QObject::disconnect( s_signals->list4[i] );
          hb_itemRelease( s_signals->list3.at(i) );
          s_signals->list1[i] = nullptr;
          s_signals->list2[i] = -1;
          s_signals->list3[i] = nullptr;
          QMetaObject::Connection connection;
          s_signals->list4[i] = connection;
        }
      }
    }
    else
    {
      // obt�m a lista de filhos, netos, bisnetos, etc...
      auto objectList = obj->findChildren<QObject *>();

      // adiciona o pai na lista
      objectList << obj;

      // percorre toda a lista de objetos
      const int listsize = objectList.size();
      for( auto i = 0; i < listsize; ++i )
      {
        indexOfSignal = objectList.at(i)->metaObject()->indexOfSignal("destroyed(QObject*)");

        // percorre toda a lista de sinais
        const int listsize2 = s_signals->list1.size();
        for( auto ii = 0; ii < listsize2; ++ii )
        {
          // elimina sinais ativos ligados ao objeto 'list.at(i)'
          if( ( s_signals->list1.at(ii) == objectList.at(i) ) && ( s_signals->list2.at(ii) != indexOfSignal ) )
          {
            QObject::disconnect( s_signals->list4[ii] );
            hb_itemRelease( s_signals->list3.at(ii) );
            s_signals->list1[ii] = nullptr;
            s_signals->list2[ii] = -1;
            s_signals->list3[ii] = nullptr;
            QMetaObject::Connection connection;
            s_signals->list4[ii] = connection;
          }
        }
      }
    }
  }
}

/*
  conecta sinais e retorna resultado (true/false)
*/

bool Signals_connection( QObject * object, int indexOfSignal, int & indexOfCodeBlock )
{
  auto result = false;

  s_signals->mutex->lock();

  if( !Signals_is_signal_connected( object, indexOfSignal ) )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );

    if( codeblock != nullptr )
    {
      indexOfCodeBlock = Signals_connect_signal( object, indexOfSignal, codeblock );
      result = true;
    }
  }

  s_signals->mutex->unlock();

  return result;
}

/*
  desconecta sinais e retorna resultado (true/false)
*/

bool Signals_disconnection( QObject * object, int indexOfSignal )
{
  auto result = false;

  s_signals->mutex->lock();

  Signals_disconnect_signal( object, indexOfSignal );

  result = true;

  s_signals->mutex->unlock();

  return result;
}

/*
  Retorna o tamanho da lista de sinais.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE )
{
  auto size = 0;

  if( s_signals != nullptr )
  {
    size = s_signals->list1.size();
  }

  hb_retni( size );
}

/*
  Retorna o n�mero de sinais ativos na lista de sinais.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE_ACTIVE )
{
  auto count = 0;

  if( s_signals != nullptr )
  {
    // percorre toda a lista de sinais
    const int listsize = s_signals->list1.size();
    for( auto i = 0; i < listsize; ++i )
    {
      if( s_signals->list1.at(i) != nullptr )
      {
        ++count;
      }
    }
  }

  hb_retni( count );
}

PHB_ITEM Signals_return_object( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

PHB_ITEM Signals_return_qobject( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

bool Signals_store_connection( int index, QMetaObject::Connection connection )
{
  s_signals->list4[index] = connection;
  return true;
}

QMetaObject::Connection Signals_get_connection( QObject * object, int signal )
{
  // valor de retorno
  QMetaObject::Connection connection;

  const int listsize = s_signals->list1.size();

  // busca handle da conex�o
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
    {
      connection = s_signals->list4.at(i);
      break;
    }
  }

  return connection;
}

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_signals_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_signals == nullptr )
  {
    s_signals = new Signals();
  }
}

static void qt5xhb_signals_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_signals;
}

HB_CALL_ON_STARTUP_BEGIN( _qt5xhb_signals_init_ )
  hb_vmAtInit( qt5xhb_signals_init, nullptr );
  hb_vmAtExit( qt5xhb_signals_exit, nullptr );
HB_CALL_ON_STARTUP_END( _qt5xhb_signals_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt5xhb_signals_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt5xhb_signals_init_ )
  #include "hbiniseg.h"
#endif
