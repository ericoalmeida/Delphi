unit SpedConstribuicoes;

interface

uses Sped.Interf;

type
  TSpedContribuicoes = class(TInterfacedObject, ISped)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: ISped;

    function GerarSPED: string;
  end;

implementation

{ TSpedContribuicoes }

constructor TSpedContribuicoes.Create;
begin

end;

destructor TSpedContribuicoes.Destroy;
begin

  inherited;
end;

function TSpedContribuicoes.GerarSPED: string;
begin
  Result := 'SPED Contribuicoes Gerado Com Sucesso';
end;

class function TSpedContribuicoes.New: ISped;
begin
  Result := Self.Create;
end;

end.
