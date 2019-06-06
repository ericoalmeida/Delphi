unit Main.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    MMExibir: TMemo;
    CBDFe: TComboBox;
    BTExecutar: TButton;
    BTLimpar: TButton;
    procedure BTLimparClick(Sender: TObject);
    procedure BTExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ *   Com o Padrão "Abstract Factory" implementado, na View so preciso declarar
  *   a unit da fabrica, diminuindo assim o acoplamento.
  * }

uses DFeFactoryModel, DFeModel.Interf;

procedure TForm1.BTExecutarClick(Sender: TObject);
begin
  MMExibir.Lines.Add(
    TDFeFactoryModel
      .New
       .DFe(TDFe(CBDFe.ItemIndex))
        .Emitir
  );
end;

procedure TForm1.BTLimparClick(Sender: TObject);
begin
  MMExibir.Lines.Clear;
end;

end.
