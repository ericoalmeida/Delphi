unit Conexao.Controller;

interface

uses Conexao.Controller.Interf, ormbr.Factory.Interfaces;

type
  TConexaoController = class(TInterfacedObject, IConexaoController)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConexaoController;

    function Conexao: IDBConnection;
  end;

implementation

{ TConexaoController }

uses ConexaoDBFacade.Model, Conexao.Model.Interf;

function TConexaoController.Conexao: IDBConnection;
begin
   Result := TConexaoDBFacadeModel
               .New
                .ConexaoFactory
                 .ConexaoBancoDados(TTIpoConexao(
                     TConexaoDBFacadeModel
                      .New
                       .ConfiguracoesFactory
                        .Conexao
                        .TipoBanco))
                  .Conexao;
end;

constructor TConexaoController.Create;
begin

end;

destructor TConexaoController.Destroy;
begin

  inherited;
end;

class function TConexaoController.New: IConexaoController;
begin
  Result := Self.Create;
end;

end.
