unit SpedFiscal;

interface

uses Sped.Interf;

type
  TSpedFiscal = class(TInterfacedObject, ISped)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: ISped;

    function GerarSPED: string;
  end;

implementation

{ TSpedFiscal }

constructor TSpedFiscal.Create;
begin

end;

destructor TSpedFiscal.Destroy;
begin

  inherited;
end;

function TSpedFiscal.GerarSPED: string;
begin
   Result := 'Sped Fiscal gerado com sucesso';
end;

class function TSpedFiscal.New: ISped;
begin
   Result := Self.Create;
end;

end.
