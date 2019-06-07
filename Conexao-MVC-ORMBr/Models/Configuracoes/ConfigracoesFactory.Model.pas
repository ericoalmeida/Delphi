unit ConfigracoesFactory.Model;

interface

uses ConfigracoesFactory.Model.interf, ConfigracoesConexao.Model.interf;

type
  TConfiguracoesFactoryModel = class(TInterfacedObject,
    IConfiguracoesFactoryModel)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConfiguracoesFactoryModel;

    function Conexao: IConfiguracoesConexaoModel;
  end;

implementation

{ TConfiguracoesFactoryModel }

uses ConfigracoesConexao.Model;

function TConfiguracoesFactoryModel.Conexao: IConfiguracoesConexaoModel;
begin
  Result := TConfiguracoesConexaoModel.New;
end;

constructor TConfiguracoesFactoryModel.Create;
begin

end;

destructor TConfiguracoesFactoryModel.Destroy;
begin

  inherited;
end;

class function TConfiguracoesFactoryModel.New: IConfiguracoesFactoryModel;
begin
  Result := Self.Create;
end;

end.
