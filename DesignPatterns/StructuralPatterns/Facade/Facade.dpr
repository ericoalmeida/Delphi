program Facade;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.View in 'Main.View.pas' {Form1},
  DFe.Interf in 'DFe\DFe.Interf.pas',
  NotaFiscalEletronica in 'DFe\NotaFiscalEletronica.pas',
  NotaConsumidorEletronical in 'DFe\NotaConsumidorEletronical.pas',
  ConhecimentoTransporteEletronico in 'DFe\ConhecimentoTransporteEletronico.pas',
  DFeFactory in 'DFe\DFeFactory.pas',
  Sped.Interf in 'Sped\Sped.Interf.pas',
  FacadeModel.interf in 'FacadeModel.interf.pas',
  SpedFiscal in 'Sped\SpedFiscal.pas',
  SpedConstribuicoes in 'Sped\SpedConstribuicoes.pas',
  SpedFactory in 'Sped\SpedFactory.pas',
  FacadeModel in 'FacadeModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
