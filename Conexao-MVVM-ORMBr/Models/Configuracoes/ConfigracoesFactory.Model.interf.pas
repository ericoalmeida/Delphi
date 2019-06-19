unit ConfigracoesFactory.Model.interf;

interface

uses ConfigracoesConexao.Model.interf;

type
  IConfiguracoesFactoryModel = interface
    ['{78604D45-8C2F-48A5-A33D-7CDA65208743}']
    function Conexao: IConfiguracoesConexaoModel;
  end;

implementation

end.
