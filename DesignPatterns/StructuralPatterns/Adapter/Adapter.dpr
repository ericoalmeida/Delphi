program Adapter;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainView in 'MainView.pas' {Form1},
  Itens.Model.Interf in 'Itens.Model.Interf.pas',
  Itens.Model in 'Itens.Model.pas',
  Itens.Controller in 'Itens.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
