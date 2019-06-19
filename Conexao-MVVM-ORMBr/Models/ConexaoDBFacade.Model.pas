unit ConexaoDBFacade.Model;

interface

uses ConexaoDBFacade.Model.Interf, ConexaoFactory.Model.Interf,
  ConfigracoesFactory.Model.Interf;

type
  TConexaoDBFacadeModel = class(TInterfacedObject, IConexaoDBFacadeModel)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConexaoDBFacadeModel;

    function ConexaoFactory: IConexaoFactory;
    function ConfiguracoesFactory: IConfiguracoesFactoryModel;
  end;

implementation

{ TConexaoDBFacadeModel }

uses ConexaoFactory.Model, ConfigracoesFactory.Model;

function TConexaoDBFacadeModel.ConexaoFactory: IConexaoFactory;
begin
  Result := TConexaoFactory.New;
end;

function TConexaoDBFacadeModel.ConfiguracoesFactory: IConfiguracoesFactoryModel;
begin
  Result := TConfiguracoesFactoryModel.New;
end;

constructor TConexaoDBFacadeModel.Create;
begin

end;

destructor TConexaoDBFacadeModel.Destroy;
begin

  inherited;
end;

class function TConexaoDBFacadeModel.New: IConexaoDBFacadeModel;
begin
  Result := Self.Create;
end;

end.
