unit Itens.Model;

interface

uses Composite.Model.Interf;

type
  TItensModel = class(TInterfacedObject, IItensModel)
  private
    FQuantidade: Currency;
    FPreco: Currency;
  public

    constructor Create;
    destructor Destroy; override;

    class function New: IItensModel;

    function Quantidade(AValue: Currency): IItensModel;
    function Preco(AValue: Currency): IItensModel;
    function Total: Currency;
  end;

implementation

{ TItensModel }

constructor TItensModel.Create;
begin

end;

destructor TItensModel.Destroy;
begin

  inherited;
end;

class function TItensModel.New: IItensModel;
begin
  Result := Self.Create;
end;

function TItensModel.Preco(AValue: Currency): IItensModel;
begin
  Result := Self;
  FPreco := AValue;
end;

function TItensModel.Quantidade(AValue: Currency): IItensModel;
begin
  Result := Self;
  FQuantidade := AValue;
end;

function TItensModel.Total: Currency;
begin
  Result := (FQuantidade * FPreco);
end;

end.
