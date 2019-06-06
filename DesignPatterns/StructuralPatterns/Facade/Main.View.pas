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
    CBSPED: TComboBox;
    BTExecutarSPED: TButton;
    procedure BTLimparClick(Sender: TObject);
    procedure BTExecutarClick(Sender: TObject);
    procedure BTExecutarSPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ *   Com o Padrão "Facade" implementado, na View so preciso declarar
  *   a unit da fachada, dando visibilidade a todas as fabricas do
  *   projeto, diminuindo ainda mais o acoplamento.
  * }

uses DFe.Interf, FacadeModel, Sped.Interf;

procedure TForm1.BTExecutarClick(Sender: TObject);
begin
  MMExibir.Lines.Add(
    TFacadeModel
     .New
      .DFeFactory
       .DFe(TDFe(CBDFe.ItemIndex))
        .Emitir
  );
end;

procedure TForm1.BTExecutarSPEDClick(Sender: TObject);
begin
  MMExibir.Lines.Add(
    TFacadeModel
     .New
      .SpedFactory
       .SPED(TSPED(CBSPED.ItemIndex))
        .GerarSPED
  );
end;

procedure TForm1.BTLimparClick(Sender: TObject);
begin
  MMExibir.Lines.Clear;
end;

end.
