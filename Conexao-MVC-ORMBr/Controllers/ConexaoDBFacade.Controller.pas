unit ConexaoDBFacade.Controller;

interface

uses ConexaoDBFacade.Controller.Interf, Conexao.Controller.Interf;

type
  TConexaoDBFacadeController = class(TInterfacedObject,
    IConexaoDBFacadeController)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConexaoDBFacadeController;

    function ConexaoFactory: IConexaoController;
  end;

implementation

{ TConexaoDBFacadeController }

uses Conexao.Controller;

function TConexaoDBFacadeController.ConexaoFactory: IConexaoController;
begin
  Result := TConexaoController.New;
end;

constructor TConexaoDBFacadeController.Create;
begin

end;

destructor TConexaoDBFacadeController.Destroy;
begin

  inherited;
end;

class function TConexaoDBFacadeController.New: IConexaoDBFacadeController;
begin
  Result := Self.Create;
end;

end.
