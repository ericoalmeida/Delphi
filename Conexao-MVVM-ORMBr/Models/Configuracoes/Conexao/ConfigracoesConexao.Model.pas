unit ConfigracoesConexao.Model;

interface

uses ConfigracoesConexao.Model.interf, System.SysUtils, IniFiles, FMX.Forms;

type
  TConfiguracoesConexaoModel = class(TInterfacedObject,
    IConfiguracoesConexaoModel)
  private
    FFileName: string;
    FFileIni: TIniFile;
    procedure VerificaParametrosDeConexaoPadrao;
    procedure GravaParametrosPadraoDeConexao;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: IConfiguracoesConexaoModel;

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

{ TConfiguracoesConexaoModel }

function TConfiguracoesConexaoModel.BancoDeDados: string;
begin
  Result := FFileIni.ReadString('Dados','BancoDeDados', '')
end;

function TConfiguracoesConexaoModel.Biblioteca: string;
begin
  Result := FFileIni.ReadString('Dados','Biblioteca', '')
end;

procedure TConfiguracoesConexaoModel.GravaParametrosPadraoDeConexao;
begin
  FFileIni.WriteInteger('Dados', 'TipoBanco', 0);
  FFileIni.WriteString('Dados', 'BancoDeDados', 'C:\ERGSis\dados\ERGDados.ERG');
  FFileIni.WriteString('Dados', 'Driver', 'FB');
  FFileIni.WriteString('Dados', 'Porta', '3050');
  FFileIni.WriteString('Dados', 'Servidor', 'LocalHost');
  FFileIni.WriteString('Dados', 'Usuario', 'SYSDBA');
  FFileIni.WriteString('Dados', 'Senha', 'masterkey');
  FFileIni.WriteString('Dados', 'Biblioteca', 'FbClient.dll');
end;

constructor TConfiguracoesConexaoModel.Create;
begin
   FFileName := ChangeFileExt(ParamStr(0), '.ini');
   FFileIni  := TIniFile.Create(FFileName);

   VerificaParametrosDeConexaoPadrao;
end;

destructor TConfiguracoesConexaoModel.Destroy;
begin
  FFileIni.Free;
  FFileName := '';
  inherited;
end;

function TConfiguracoesConexaoModel.Driver: string;
begin
  Result := FFileIni.ReadString('Dados','Driver', '')
end;

procedure TConfiguracoesConexaoModel.VerificaParametrosDeConexaoPadrao;
begin
   if Not(FileExists(FFileName)) then
   GravaParametrosPadraoDeConexao;

   if FileExists(FFileName) then begin
      if (FFileIni.ReadString('Dados','BancoDeDados','')=EmptyStr) then
       GravaParametrosPadraoDeConexao;
   end;
end;

class function TConfiguracoesConexaoModel.New: IConfiguracoesConexaoModel;
begin
  Result := Self.Create;
end;

function TConfiguracoesConexaoModel.Porta: string;
begin
  Result := FFileIni.ReadString('Dados','Porta', '')
end;

function TConfiguracoesConexaoModel.Senha: string;
begin
  Result := FFileIni.ReadString('Dados','Senha', '')
end;

function TConfiguracoesConexaoModel.Servidor: string;
begin
  Result := FFileIni.ReadString('Dados','Servidor', '')
end;

function TConfiguracoesConexaoModel.TipoBanco: Integer;
begin
  Result := FFileIni.ReadInteger('Conexao','TipoBanco', 0)
end;

function TConfiguracoesConexaoModel.Usuario: string;
begin
  Result := FFileIni.ReadString('Dados','Usuario', '')
end;

end.
