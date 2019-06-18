program Prototype;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.View in 'Main.View.pas' {Form1},
  ItemModel in 'ItemModel.pas',
  ItemModel.Interf in 'ItemModel.Interf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
