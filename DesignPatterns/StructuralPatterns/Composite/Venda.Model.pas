unit Venda.Model;

interface

uses Composite.Model.Interf, System.Generics.Collections;

type
  TVendaModel = class(TInterfacedObject, IVendaModel)
  private
    FLista: TList<IItensModel>;
  public

    constructor Create;
    destructor Destroy; override;

    class function New: IVendaModel;

    function addItens(AValue: IItensModel): IVendaModel;
    function Total: Currency;
  end;

implementation

{ TVendaModel }

function TVendaModel.addItens(AValue: IItensModel): IVendaModel;
begin
  Result := self;
  FLista.Add(AValue)
end;

constructor TVendaModel.Create;
begin
  FLista := TList<IItensModel>.Create;
end;

destructor TVendaModel.Destroy;
begin
  FLista.Free;
  inherited;
end;

class function TVendaModel.New: IVendaModel;
begin
  Result := self.Create;
end;

function TVendaModel.Total: Currency;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Pred(FLista.Count) do
    Result := Result + FLista[I].Total;
end;

end.
