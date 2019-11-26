unit MainView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Bridge.model.interf, SPEDC100.model, SPEDC190.model,
  FMX.Controls.Presentation, FMX.StdCtrls, Venda.model;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TVendaModel.New.Exportar(TSPEDC100Model.New).Exportar(TSPEDC190Model.New)
end;

end.
