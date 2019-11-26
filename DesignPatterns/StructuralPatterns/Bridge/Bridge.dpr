program Bridge;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainView in 'MainView.pas' {Form1},
  Bridge.model.interf in 'Bridge.model.interf.pas',
  Venda.Model in 'Venda.Model.pas',
  SPEDC100.Model in 'SPEDC100.Model.pas',
  SPEDC190.Model in 'SPEDC190.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
