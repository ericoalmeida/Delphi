program Composite;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainView in 'MainView.pas' {Form1},
  Composite.Model.Interf in 'Composite.Model.Interf.pas',
  Venda.Model in 'Venda.Model.pas',
  Itens.Model in 'Itens.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
