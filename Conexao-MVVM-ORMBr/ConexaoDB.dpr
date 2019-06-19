program ConexaoDB;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.View in 'Views\Main.View.pas' {FMainView},
  ConexaoDBFacade.Model.Interf in 'Models\ConexaoDBFacade.Model.Interf.pas',
  ConexaoDBFacade.Model in 'Models\ConexaoDBFacade.Model.pas',
  Conexao.Model.Interf in 'Models\Conexao\Conexao.Model.Interf.pas',
  ConexaoFactory.Model.Interf in 'Models\Conexao\ConexaoFactory.Model.Interf.pas',
  ConexaoFactory.Model in 'Models\Conexao\ConexaoFactory.Model.pas',
  DataMFirebird.Model in 'Models\Conexao\Firebird\DataMFirebird.Model.pas' {DataMFirebird: TDataModule},
  ConfigracoesFactory.Model.interf in 'Models\Configuracoes\ConfigracoesFactory.Model.interf.pas',
  ConfigracoesFactory.Model in 'Models\Configuracoes\ConfigracoesFactory.Model.pas',
  ConfigracoesConexao.Model.interf in 'Models\Configuracoes\Conexao\ConfigracoesConexao.Model.interf.pas',
  ConfigracoesConexao.Model in 'Models\Configuracoes\Conexao\ConfigracoesConexao.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainView, FMainView);
  Application.Run;
end.
