unit Itens.Controller;

interface

uses Itens.Model.Interf, System.Generics.Collections, Itens.Model;

type

  TItensController = class(TInterfacedObject, IControllerItens)
  private
    FModelItens: IModelItens;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IControllerItens;

    function addItem(AValue: TItens): IControllerItens;
    function Itens: TList<TItens>;

  end;

implementation

uses
  System.SysUtils;

{ TItensController }

function TItensController.addItem(AValue: TItens): IControllerItens;
begin
  FModelItens.addItem(TItensModel.New.setProduto(AValue.Produto)
    .setValor(AValue.Valor));
end;

constructor TItensController.Create;
begin
  FModelItens := TItensModel.New;
end;

destructor TItensController.Destroy;
begin
  inherited;
end;

function TItensController.Itens: TList<TItens>;
var
  I: Integer;
  Item: TItens;
begin
  Result := TList<TItens>.Create;

  for I := 0 to Pred(FModelItens.Itens.Count) do
  begin
    Item.Produto := FModelItens.Itens[I].getProduto;
    Item.Valor   := FModelItens.Itens[I].getValor;
    Result.Add(Item)
  end;
end;

class function TItensController.New: IControllerItens;
begin
  Result := self.Create;
end;

end.
