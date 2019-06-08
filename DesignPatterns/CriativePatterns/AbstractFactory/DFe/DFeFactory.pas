unit DFeFactory;

interface

uses DFe.Interf;

type
  TDFeFactory = class(TInterfacedObject, IDFeFactory)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFeFactory;

    function DFe(AValue: TDFe): IDFe;
  end;

implementation

{ TDFeFactory }

uses ConhecimentoTransporteEletronico, NotaConsumidorEletronical,
  NotaFiscalEletronical;

constructor TDFeFactory.Create;
begin

end;

destructor TDFeFactory.Destroy;
begin

  inherited;
end;

function TDFeFactory.DFe(AValue: TDFe): IDFe;
begin
  case AValue of
    dfeNotaFiscalEletronica             : Result := TNotaFiscalEletronica.New;
    dfeNotaConsumidorEletronica         : Result := TNotaConsumidorEletronica.New;
    dfeConhecimentoTransporteEletronico : Result := TConhecimentoTransporte.New;
  end;
end;

class function TDFeFactory.New: IDFeFactory;
begin
  Result := Self.Create;
end;

end.
