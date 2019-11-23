unit Itens.Model.Interf;

interface

uses
  System.Generics.Collections;

type
  TItens = record
    Produto: string;
    Valor: Currency;
  end;

  IControllerItens = interface
    ['{EA0AF7F8-383B-47AA-B836-7E07D4D703CE}']
    function addItem(AValue: TItens): IControllerItens;
    function itens: TList<TItens>;
  end;

  IModelItens = interface
    ['{413C1462-CCED-4170-9075-865EF8B227A2}']
    function addItem(AValue: IModelItens): IModelItens;
    function Itens: TList<IModelItens>;
    function getProduto: string;
    function getValor: Currency;
    function setProduto(AValue: string): IModelItens;
    function setValor(AValue: Currency): IModelItens;
  end;

implementation

end.
