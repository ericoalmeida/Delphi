program ConexaoBD;

uses
  System.StartUpCopy,
  FMX.Forms,
  ViewMain in 'Views\ViewMain.pas' {FMainView},
  ConexaoDBFacade.Model.Interf in 'Models\ConexaoDBFacade.Model.Interf.pas',
  ConexaoDBFacade.Model in 'Models\ConexaoDBFacade.Model.pas',
  ConexaoDBFacade.Controller.Interf in 'Controllers\ConexaoDBFacade.Controller.Interf.pas',
  ConexaoDBFacade.Controller in 'Controllers\ConexaoDBFacade.Controller.pas',
  ConexaoFactory.Model.Interf in 'Models\Conexao\ConexaoFactory.Model.Interf.pas',
  ConexaoFactory.Model in 'Models\Conexao\ConexaoFactory.Model.pas',
  Conexao.Model.Interf in 'Models\Conexao\Conexao.Model.Interf.pas',
  DataMFirebird.Model in 'Models\Conexao\Firebird\DataMFirebird.Model.pas' {FDataMFirebird: TDataModule},
  Conexao.Controller.Interf in 'Controllers\Conexao\Conexao.Controller.Interf.pas',
  Conexao.Controller in 'Controllers\Conexao\Conexao.Controller.pas',
  ConfigracoesFactory.Model.interf in 'Models\Configuracoes\ConfigracoesFactory.Model.interf.pas',
  ConfigracoesFactory.Model in 'Models\Configuracoes\ConfigracoesFactory.Model.pas',
  ConfigracoesConexao.Model.interf in 'Models\Configuracoes\Conexao\ConfigracoesConexao.Model.interf.pas',
  ConfigracoesConexao.Model in 'Models\Configuracoes\Conexao\ConfigracoesConexao.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainView, FMainView);
  Application.CreateForm(TFDataMFirebird, FDataMFirebird);
  Application.Run;
end.
