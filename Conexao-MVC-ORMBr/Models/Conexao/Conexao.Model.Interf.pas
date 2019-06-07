unit Conexao.Model.Interf;

interface

uses
  ormbr.Factory.Interfaces;

type
  TTIpoConexao = (dbFirebird, dbSQLite, dbMongoDB, dbMySQL);

  IConexaoModel = interface
    ['{3335887F-1F8E-45B8-831B-8F224BC00BE5}']
    function Conexao: IDBConnection;
  end;

implementation

end.
