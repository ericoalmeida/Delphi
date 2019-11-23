unit Itens.Model;

interface

uses Itens.Model.Interf, System.Generics.Collections;

type
  TItensModel = class(TInterfacedObject, IModelItens)
  private
    FLista: TList<IModelItens>;
    FProduto: string;
    FValor: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IModelItens;

    function addItem(AValue: IModelItens): IModelItens;
    function Itens: TList<IModelItens>;
    function getProduto: string;
    function getValor: Currency;
    function setProduto(AValue: string): IModelItens;
    function setValor(AValue: Currency): IModelItens;
  end;

implementation

uses
  System.SysUtils;

{ TItensModel }

function TItensModel.addItem(AValue: IModelItens): IModelItens;
begin
  Result := self;
  FLista.Add(AValue);
end;

constructor TItensModel.Create;
begin
  FLista := TList<IModelItens>.Create;
end;

destructor TItensModel.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TItensModel.getProduto: string;
begin
  Result := FProduto;
end;

function TItensModel.getValor: Currency;
begin
  Result := FValor;
end;

function TItensModel.Itens: TList<IModelItens>;
begin
  Result := FLista;
end;

class function TItensModel.New: IModelItens;
begin
  Result := self.Create;
end;

function TItensModel.setProduto(AValue: string): IModelItens;
begin
  Result := self;
  FProduto := AValue;
end;

function TItensModel.setValor(AValue: Currency): IModelItens;
begin
  Result := self;
  FValor := AValue;
end;

end.
