unit ConhecimentoTransporteEletronico;

interface

uses DFe.Interf;

type
  TConhecimentoTransporte = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TConhecimentoTransporte }

constructor TConhecimentoTransporte.Create;
begin

end;

destructor TConhecimentoTransporte.Destroy;
begin

  inherited;
end;

function TConhecimentoTransporte.Emitir: string;
begin
  Result := 'Conhecimento Transporte Eletrônico Emitido!!!';
end;

class function TConhecimentoTransporte.New: IDFe;
begin
  Result := Self.Create;
end;

end.
