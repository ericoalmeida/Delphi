unit NotaConsumidorEletronical;

interface

uses DFe.Interf;

type
  TNotaConsumidorEletronica = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TNotaConsumidorEletronica }

constructor TNotaConsumidorEletronica.Create;
begin

end;

destructor TNotaConsumidorEletronica.Destroy;
begin

  inherited;
end;

function TNotaConsumidorEletronica.Emitir: string;
begin
  Result := 'Nota Fical Consumidor Eletrônica Emitida!!!';
end;

class function TNotaConsumidorEletronica.New: IDFe;
begin
  Result := Self.Create;
end;

end.
