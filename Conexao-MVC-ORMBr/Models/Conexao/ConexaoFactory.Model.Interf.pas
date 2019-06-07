unit ConexaoFactory.Model.Interf;

interface

uses Conexao.Model.Interf;

type
  IConexaoFactoryModel = interface
    ['{4E2A660E-8D87-4829-A92F-7C2BB1F60F55}']
    function ConexaoBancoDados(AValue: TTIpoConexao): IConexaoModel;
  end;

implementation

end.
