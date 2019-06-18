unit NotaFiscalEletronical;

interface

uses DFe.Interf;

type
  TNotaFiscalEletronica = class(TInterfacedObject, IDFe)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitir: string;
  end;

implementation

{ TNotaFiscalEletronica }

constructor TNotaFiscalEletronica.Create;
begin

end;

destructor TNotaFiscalEletronica.Destroy;
begin

  inherited;
end;

function TNotaFiscalEletronica.Emitir: string;
begin
  Result := 'Nota Fical Eletrônica Emitida!!!';
end;

class function TNotaFiscalEletronica.New: IDFe;
begin
  Result := Self.Create;
end;

end.
