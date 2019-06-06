unit NotaConsumidorEletronical.Model;

interface

uses DFeModel.Interf;

type
  TNotaConsumidorEletronicaModel = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TNotaConsumidorEletronicaModel }

constructor TNotaConsumidorEletronicaModel.Create;
begin

end;

destructor TNotaConsumidorEletronicaModel.Destroy;
begin

  inherited;
end;

function TNotaConsumidorEletronicaModel.Emitir: string;
begin
  Result := 'Nota Fical Consumidor Eletrônica Emitida!!!';
end;

class function TNotaConsumidorEletronicaModel.New: IDFe;
begin
  Result := Self.Create;
end;

end.
