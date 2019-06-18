unit DFeFactory;

interface

uses DFe.Interf;

type
  TDFeFactory = class(TInterfacedObject, IDFeFactory)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFeFactory;

    function NotaFiscalEletronica: IDFe;
    function NotaFiscalConsumidorEletronica: IDFe;
    function ConhecimentoTransporteEletronico: IDFe;
  end;

implementation

{ TDFeFactory }

uses ConhecimentoTransporteEletronico, NotaConsumidorEletronical,
  NotaFiscalEletronical;

function TDFeFactory.ConhecimentoTransporteEletronico: IDFe;
begin
  Result := TConhecimentoTransporte.New;
end;

constructor TDFeFactory.Create;
begin

end;

destructor TDFeFactory.Destroy;
begin

  inherited;
end;

class function TDFeFactory.New: IDFeFactory;
begin
  Result := Self.Create;
end;

function TDFeFactory.NotaFiscalConsumidorEletronica: IDFe;
begin
  Result := TNotaConsumidorEletronica.New;
end;

function TDFeFactory.NotaFiscalEletronica: IDFe;
begin
  Result := TNotaFiscalEletronica.New;
end;

end.
