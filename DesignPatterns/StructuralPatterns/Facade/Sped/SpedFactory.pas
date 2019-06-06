unit SpedFactory;

interface

uses Sped.Interf;

type
  TSpedFactory = class(TInterfacedObject, ISpedFactory)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: ISpedFactory;

    function SPED(AValue: TSPED): ISped;
  end;

implementation

{ TSpedFactory }

uses SpedConstribuicoes, SpedFiscal;

constructor TSpedFactory.Create;
begin

end;

destructor TSpedFactory.Destroy;
begin

  inherited;
end;

class function TSpedFactory.New: ISpedFactory;
begin
  Result := Self.Create;
end;

function TSpedFactory.SPED(AValue: TSPED): ISped;
begin
  case avalue of
    spdFiscal        : Result := TSpedFiscal.New;
    spdContribuicoes : Result := TSpedContribuicoes.New;
  end;
end;

end.
