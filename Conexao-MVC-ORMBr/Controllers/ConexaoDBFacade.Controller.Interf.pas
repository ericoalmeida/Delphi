unit ConexaoDBFacade.Controller.Interf;

interface

uses Conexao.Controller.Interf;

type
  IConexaoDBFacadeController = interface
    ['{AD543546-F65E-4FC0-BC8A-2CF2AD779ECB}']
    function ConexaoFactory: IConexaoController;
  end;

implementation

end.
