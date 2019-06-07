unit ConexaoDBFacade.Model.Interf;

interface

uses ConexaoFactory.Model.Interf, ConfigracoesFactory.Model.interf;

type
  IConexaoDBFacadeModel = interface
    ['{AD540412-6BE9-4B9D-8435-C97187DA2C80}']
    function ConexaoFactory: IConexaoFactoryModel;
    function ConfiguracoesFactory: IConfiguracoesFactoryModel;
  end;

implementation

end.
