/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s_events = nullptr;

/*
  constructor
*/
Events::Events( QObject *parent ) : QObject( parent )
{
}

/*
  destructor
*/
Events::~Events()
{
  Events_release_codeblocks();
}

/*
  filtro de eventos
*/
bool Events::eventFilter( QObject *obj, QEvent *event )
{
  QEvent::Type eventtype = event->type();

  int found = -1;
  const int listsize = list1.size();

  for( int i = 0; i < listsize; ++i )
  {
    if( ( (QObject *) list1.at(i) == (QObject *) obj ) &&
        ( (QEvent::Type) list2.at(i) == (QEvent::Type) eventtype ) )
        {
          found = i;
          break;
        }
  }

  // se n�o encontrado na lista, propaga o evento
  if( found == -1 )
  {
    return false;
  }

  // executa bloco de c�digo/fun��o
  //PHB_ITEM pObject = hb_itemPutPtr( NULL, (QObject *) obj );
  PHB_ITEM pObject = Events_return_qobject( (QObject *) obj, "QOBJECT" );
  //PHB_ITEM pEvent = hb_itemPutPtr( NULL, (QEvent *) event );
  PHB_ITEM pEvent = Events_return_object( (QEvent *) event, "QEVENT" );

  bool ret = hb_itemGetL( hb_vmEvalBlockV( (PHB_ITEM) list3.at(found), 2, pObject, pEvent ) );

  hb_itemRelease( pObject );
  hb_itemRelease( pEvent );

  // retorna resultado
  // .t.: interrompe processamento do evento
  // .f.: continua processamento do evento
  return ret;
}

/*
  Conecta um determinado evento com um objeto
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Par�metro 3: codeblock
  Retorna .t. se a conex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
{
  int i;
  // par�metros da fun��o
  //QObject * object = (QObject *) hb_parptr(1);
  //int type = hb_parni(2);
  //PHB_ITEM codeblock = hb_itemNew( hb_param( 3, HB_IT_BLOCK | HB_IT_SYMBOL ) );

  // instala eventfilter, se n�o houver nenhum evento
  if( s_events->list1.contains( object ) == false )
  {
    object->installEventFilter(s_events);
  }

  // verifica se j� est� na lista
  int found = -1;
  const int listsize = s_events->list1.size();

  for( i = 0; i < listsize; ++i )
  {
    if( ( (QObject *) s_events->list1.at(i) == (QObject *) object ) &&
        ( (QEvent::Type) s_events->list2.at(i) == (QEvent::Type) type ) )
    {
      found = i;
      hb_itemRelease( codeblock );
      break;
    }
  }

  bool ret = false;

  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posi��o livre
    i = s_events->list1.indexOf( nullptr );

    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      s_events->list1 << object;
      s_events->list2 << (QEvent::Type) type;
      s_events->list3 << codeblock;
    }
    else // encontrou posicao livre
    {
      // coloca na posi��o livre
      s_events->list1[i] = object;
      s_events->list2[i] = (QEvent::Type) type;
      s_events->list3[i] = codeblock;
    }

    ret = true;
  }

  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado evento
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: id do evento
  Retorna .t. se a desconex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Events_disconnect_event( QObject * object, int type )
{
  int i;
  // par�metros da fun��o
  //QObject * object = (QObject *) hb_parptr(1);
  //int type = hb_parni(2);

  bool ret = false;
  const int listsize = s_events->list1.size();

  // remove evento da lista de eventos
  for( i = 0; i < listsize; ++i )
  {
    if( (QObject *) s_events->list1.at(i) == (QObject *) object )
    {
      if( ( (QEvent::Type) s_events->list2.at(i) == (QEvent::Type) type ) )
      {
        hb_itemRelease( (PHB_ITEM) s_events->list3.at(i) );
        s_events->list1[i] = nullptr;
        s_events->list2[i] = (QEvent::Type) 0;
        s_events->list3[i] = nullptr;
        ret = true;
      }
    }
  }

  // desinstala eventfilter, se n�o houver mais nenhum evento
  if( s_events->list1.contains( object ) == false )
  {
    object->removeEventFilter(s_events);
  }

  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Libera todos os codeblocks relacionados com eventos
*/

void Events_release_codeblocks()
{
  if( s_events != nullptr )
  {
    const int listsize = s_events->list1.size();

    for( auto i = 0; i < listsize; ++i )
    {
      if( s_events->list1.at(i) != nullptr )
      {
        hb_itemRelease( (PHB_ITEM) s_events->list3.at(i) );
        s_events->list1[i] = nullptr;
        s_events->list2[i] = QEvent::None;
        s_events->list3[i] = nullptr;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

void Events_disconnect_all_events( QObject * obj, bool children )
{
  if( s_events != nullptr )
  {
    if( !children )
    {
      const int listsize = s_events->list1.size();

      // percorre toda a lista de eventos
      for( auto i = 0; i < listsize; ++i )
      {
        // elimina eventos ativos (true) ligados ao objeto (obj)
        if( ( (QObject *) s_events->list1.at(i) == (QObject *) obj ) )
        {
          hb_itemRelease( (PHB_ITEM) s_events->list3.at(i) );
          s_events->list1[i] = nullptr;
          s_events->list2[i] = QEvent::None;
          s_events->list3[i] = nullptr;
        }
      }

      // desinstala eventfilter do objeto 'obj'
      if( s_events->list1.contains( obj ) == false )
      {
        obj->removeEventFilter(s_events);
      }
    }
    else
    {
      // obt�m a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();

      // adiciona o pai na lista
      list << obj;

      const int listsize = list.size();

      // percorre toda a lista de objetos
      for( auto i = 0; i < listsize; ++i )
      {
        const int listsize2 = s_events->list1.size();
        const QObject * obj2 = (QObject *) list.at(i);

        // percorre toda a lista de eventos
        for( auto ii = 0; ii < listsize2; ++ii )
        {
          // elimina eventos ativos (true) ligados ao objeto list.at(i)
          if( ( (QObject *) s_events->list1.at(ii) == (QObject *) obj2 ) )
          {
            hb_itemRelease( (PHB_ITEM) s_events->list3.at(ii) );
            s_events->list1[ii] = nullptr;
            s_events->list2[ii] = QEvent::None;
            s_events->list3[ii] = nullptr;
          }
        }

        // desinstala eventfilter do objeto 'list.at(i)'
        if( s_events->list1.contains( list.at(i) ) == false )
        {
          list.at(i)->removeEventFilter(s_events);
        }
      }
    }
  }
}

/*
  Retorna o tamanho da lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  auto size = 0;

  if( s_events != nullptr )
  {
    size = s_events->list1.size();
  }

  hb_retni( size );
}

/*
  Retorna o n�mero de eventos ativos na lista de eventos.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE )
{
  auto count = 0;

  if( s_events != nullptr )
  {
    const int listsize = s_events->list1.size();
    // percorre toda a lista de eventos
    for( auto i = 0; i < listsize; ++i )
    {
      if( s_events->list1.at(i) != nullptr )
      {
        ++count;
      }
    }
  }

  hb_retni( count );
}

PHB_ITEM Events_return_object( QEvent * ptr, const char * classname )
{

  static int eventEnumIndex = QEvent::staticMetaObject.indexOfEnumerator("Type");

  QString eventname = QEvent::staticMetaObject.enumerator(eventEnumIndex).valueToKey(ptr->type());

  PHB_DYNS pDynSym;

  QString name = "q" + eventname + "event";

  pDynSym = hb_dynsymFindName( (const char *) name.toUpper().toLatin1().data() );

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
    hb_itemPutPtr( pItem, (QEvent *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

PHB_ITEM Events_return_qobject( QObject * ptr, const char * classname )
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

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_events_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_events == nullptr )
  {
    //s_events = new Events(QCoreApplication::instance());
    s_events = new Events();
  }
}

static void qt5xhb_events_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_events;
}

HB_CALL_ON_STARTUP_BEGIN( _qt5xhb_events_init_ )
  hb_vmAtInit( qt5xhb_events_init, nullptr );
  hb_vmAtExit( qt5xhb_events_exit, nullptr );
HB_CALL_ON_STARTUP_END( _qt5xhb_events_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt5xhb_events_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt5xhb_events_init_ )
  #include "hbiniseg.h"
#endif
