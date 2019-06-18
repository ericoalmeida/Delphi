unit ItemModel.Interf;

interface

{ * Prototype: è um padrão criacional utilizado para clonar objetos
  * e suas propriedades.
  *}

type
  IPrototype<T> = interface
    ['{F08A836F-0F0C-47EF-B42E-7DD9D932E1DA}']
     function Clone: T;
  end;

  IItem = interface
    ['{3373CA85-5CE0-4AE8-8BB1-248641B1FBA3}']
    function Codigo(AValue: string): IItem; overload;
    function Codigo: string; overload;
    function Descricao(AValue: string): IItem; overload;
    function Descricao: string; overload;
    function Prototype: IPrototype<IItem>;
  end;

implementation

end.
