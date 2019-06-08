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

uses DFeFactory, DFe.Interf;

procedure TForm1.BTExecutarClick(Sender: TObject);
Var
 Nota1, Nota2: iDFe;

begin
  Nota1 :=  TDFeFactoryModel.New.DFe(TDFe(CBDFe.ItemIndex));
  Nota2 :=  TDFeFactoryModel.New.DFe(TDFe(CBDFe.ItemIndex));


  { Informei os dados apenas para a Nota1, Porem, a Nota2 ia exibir os mesmos dados
    pois as duas variáveis estão utilizando a mesma instancia }
  Nota1
   .Emitente('ERG Tecnologia em Software')
   .Destinatario('Erico Almeida')
   .ValorNotaFiscal(100);

  MMExibir
   .Lines
    .Add(Nota1.Emitir
         +#10#13+
         Nota2.Emitir);
end;

procedure TForm1.BTLimparClick(Sender: TObject);
begin
  MMExibir.Lines.Clear;
end;

end.
