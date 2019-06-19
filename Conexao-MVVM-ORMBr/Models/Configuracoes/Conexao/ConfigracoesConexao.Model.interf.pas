unit ConfigracoesConexao.Model.interf;

interface

type
  IConfiguracoesConexaoModel = interface
    ['{1996F2F5-D61B-44E1-A4B2-104FE3406AB8}']
    function TipoBanco: Integer;
    function Driver: string;
    function BancoDeDados: string;
    function Servidor: string;
    function Porta: string;
    function Usuario: string;
    function Senha: string;
    function Biblioteca: string;
  end;

implementation

end.
