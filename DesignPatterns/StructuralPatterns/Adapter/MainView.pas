unit MainView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Edit,
  Itens.Model.Interf, Itens.Controller;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FProduto: IControllerItens;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(FProduto.Itens.Count) do
  begin
     Memo1.Lines.Add(FProduto.itens[I].Produto +' | '+  CurrToStr(FProduto.itens[I].Valor));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Item: TItens;
begin
  Item.Produto := Edit1.Text;
  Item.Valor := StrToCurr(Edit2.Text);

  FProduto.addItem(Item)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FProduto := TItensController.New;
end;

end.
