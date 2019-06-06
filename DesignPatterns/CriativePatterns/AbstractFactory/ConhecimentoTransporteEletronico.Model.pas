unit ConhecimentoTransporteEletronico.Model;

interface

uses DFeModel.Interf;

type
  TConhecimentoTransporteModel = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TConhecimentoTransporteModel }

constructor TConhecimentoTransporteModel.Create;
begin

end;

destructor TConhecimentoTransporteModel.Destroy;
begin

  inherited;
end;

function TConhecimentoTransporteModel.Emitir: string;
begin
  Result := 'Conhecimento Transporte Eletrônico Emitido!!!';
end;

class function TConhecimentoTransporteModel.New: IDFe;
begin
  Result := Self.Create;
end;

end.
