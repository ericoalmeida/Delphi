unit Composite.Model.Interf;

interface

type
  IItensModel = interface;

  IVendaModel = interface
    ['{F91FF4A6-DB8D-4321-9654-196280981755}']
    function addItens(AValue: IItensModel): IVendaModel;
    function Total: Currency;
  end;

  IItensModel = interface
    ['{4B171233-AC6A-4412-8F61-073290660259}']
    function Quantidade(AValue: Currency): IItensModel;
    function Preco(AValue: Currency): IItensModel;
    function Total: Currency;
  end;

implementation

end.
