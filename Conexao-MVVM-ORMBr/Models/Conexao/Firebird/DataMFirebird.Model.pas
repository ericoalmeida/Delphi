unit DataMFirebird.Model;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.FMXUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.Comp.UI,
  Conexao.Model.Interf,
  ormbr.factory.interfaces,
  ormbr.factory.firedac,
  ormbr.dml.generator.firebird,
  ConfigracoesConexao.Model.Interf;

type
  TDataMFirebird = class(TDataModule, IConexaoModel)
    FBancoDeDados: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    DriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    FConexao: IDBConnection;
    FConfiguracoes: IConfiguracoesConexaoModel;

    procedure ConectaNoBancoDeDados;
  public
    class function New: IConexaoModel;

    function Conexao: IDBConnection;
  end;

var
  DataMFirebird: TDataMFirebird;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ConexaoDBFacade.Model;
{$R *.dfm}
{ TDataModule1 }

procedure TDataMFirebird.ConectaNoBancoDeDados;
begin
  FConfiguracoes := TConexaoDBFacadeModel.New.ConfiguracoesFactory.Conexao;

  try
     FBancoDeDados.Connected             := False;
     FBancoDeDados.DriverName            := FConfiguracoes.Driver;
     FBancoDeDados.LoginPrompt           := False;
     FBancoDeDados.Params.Database       := FConfiguracoes.BancoDeDados;
     FBancoDeDados.Params.Add('Server='  +FConfiguracoes.Servidor);
     FBancoDeDados.Params.Add('Port='    +FConfiguracoes.Porta);
     FBancoDeDados.Params.Add('UserName='+FConfiguracoes.Usuario);
     FBancoDeDados.Params.Add('PassWord='+FConfiguracoes.Senha);
     FBancoDeDados.Connected           := True;
     DriverLink.VendorLib                := FConfiguracoes.Biblioteca;

  except
    on e: exception do begin
       raise Exception.Create(e.Message);
    end;
  end;
end;

function TDataMFirebird.Conexao: IDBConnection;
begin
  Result := FConexao;
end;

procedure TDataMFirebird.DataModuleCreate(Sender: TObject);
begin
  ConectaNoBancoDeDados;
  FConexao := TFactoryFireDAC.Create(FBancoDeDados, dnFirebird);
end;

class function TDataMFirebird.New: IConexaoModel;
begin
  Result := Self.Create(nil);
end;

end.
