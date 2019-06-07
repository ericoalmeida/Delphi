unit DataMFirebird.Model;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Conexao.Model.Interf,
  ormbr.Factory.Interfaces,
  ormbr.Factory.FireDAC,
  ormbr.dml.Generator.Firebird,
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
  FireDAC.Comp.UI,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, ConfigracoesConexao.Model.interf;

type
  TFDataMFirebird = class(TDataModule, IConexaoModel)
    FBancoDeDados: TFDConnection;
    Wait: TFDGUIxWaitCursor;
    DriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    FConfiguracoes: IConfiguracoesConexaoModel;
    FConexao: IDBConnection;

    procedure ConectaNoBancoDeDados;
  public
    class function New: IConexaoModel;

    function Conexao: IDBConnection;
  end;

var
  FDataMFirebird: TFDataMFirebird;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ConexaoDBFacade.Model;
{$R *.dfm}
{ TFDataMFirebird }

procedure TFDataMFirebird.ConectaNoBancoDeDados;
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

function TFDataMFirebird.Conexao: IDBConnection;
begin
  Result := FConexao;
end;

procedure TFDataMFirebird.DataModuleCreate(Sender: TObject);
begin
  ConectaNoBancoDeDados;
  FConexao := TFactoryFireDAC.Create(FBancoDeDados, dnFirebird);
end;

class function TFDataMFirebird.New: IConexaoModel;
begin
   Result := Self.Create(nil);
end;

end.
