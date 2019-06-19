unit Conexao.Model.Interf;

interface

uses
  ormbr.factory.interfaces;

type
  TTipoConexao = (dbFirebird, dbSQLite, dbMongo, dbMySQL);

  IConexaoModel = interface
    ['{668313D2-3360-4FD1-9E94-94A6F173FBD4}']
    function Conexao: IDBConnection;
  end;

implementation

end.
