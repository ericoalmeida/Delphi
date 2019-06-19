unit ConexaoFactory.Model.Interf;

interface

uses Conexao.Model.Interf;

type
  IConexaoFactory = interface
    ['{8C466F61-393C-48B5-83F6-BDC7F9CC1641}']
    function ConexaoBancoDados(AValue: TTipoConexao): IConexaoModel;
  end;

implementation

end.
