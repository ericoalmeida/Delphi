unit ConexaoFactory.Model;

interface

uses ConexaoFactory.Model.Interf, Conexao.Model.Interf;

type
  TConexaoFactory = class(TInterfacedObject, IConexaoFactory)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConexaoFactory;

    function ConexaoBancoDados(AValue: TTipoConexao): IConexaoModel;
  end;

implementation

{ TConexaoFactory }

uses DataMFirebird.Model;

function TConexaoFactory.ConexaoBancoDados(AValue: TTipoConexao): IConexaoModel;
begin
  case AValue of
    dbFirebird : Result := TDataMFirebird.New;
  end;
end;

constructor TConexaoFactory.Create;
begin

end;

destructor TConexaoFactory.Destroy;
begin

  inherited;
end;

class function TConexaoFactory.New: IConexaoFactory;
begin
  Result := Self.Create;
end;

end.
