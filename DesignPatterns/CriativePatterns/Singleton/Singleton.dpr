program Singleton;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.View in 'Main.View.pas' {Form1},
  DFeModel.Interf in 'DFeModel.Interf.pas',
  NotaFiscalEletronical.Model in 'NotaFiscalEletronical.Model.pas',
  DFeFactoryModel in 'DFeFactoryModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
