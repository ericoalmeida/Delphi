unit ConexaoDBFacade.Model.Interf;

interface

uses ConexaoFactory.Model.Interf, ConfigracoesFactory.Model.interf;

type
  IConexaoDBFacadeModel = interface
    ['{1B2BA9EB-8321-4F6C-8951-F7B9FCAE7B01}']
    function ConexaoFactory: IConexaoFactory;
    function ConfiguracoesFactory: IConfiguracoesFactoryModel;
  end;

implementation

end.
