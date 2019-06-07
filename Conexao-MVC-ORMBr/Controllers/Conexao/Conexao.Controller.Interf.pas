unit Conexao.Controller.Interf;

interface

uses
  ormbr.Factory.Interfaces;

type
  IConexaoController = interface
    ['{6CB1C4F2-90FC-4D73-87E1-2E8124D93C1F}']
    function Conexao: IDBConnection;
  end;

implementation

end.
