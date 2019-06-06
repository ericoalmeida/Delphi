unit NotaFiscalEletronica;

interface

uses DFe.Interf;

type
  TNotaFiscalEletronicaModel = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TNotaFiscalEletronicaModel }

constructor TNotaFiscalEletronicaModel.Create;
begin

end;

destructor TNotaFiscalEletronicaModel.Destroy;
begin

  inherited;
end;

function TNotaFiscalEletronicaModel.Emitir: string;
begin
  Result := 'Nota Fical Eletrônica Emitida!!!';
end;

class function TNotaFiscalEletronicaModel.New: IDFe;
begin
  Result := Self.Create;
end;

end.
