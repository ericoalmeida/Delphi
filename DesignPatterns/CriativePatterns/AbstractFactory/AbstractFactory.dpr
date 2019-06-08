program AbstractFactory;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.View in 'Main.View.pas' {Form1},
  DFe.Interf in 'DFe\DFe.Interf.pas',
  NotaFiscalEletronical in 'DFe\NotaFiscalEletronical.pas',
  NotaConsumidorEletronical in 'DFe\NotaConsumidorEletronical.pas',
  ConhecimentoTransporteEletronico in 'DFe\ConhecimentoTransporteEletronico.pas',
  DFeFactory in 'DFe\DFeFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
