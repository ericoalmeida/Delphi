unit MainView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, Composite.Model.Interf, Venda.Model,
  Itens.Model;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FVenda: IVendaModel;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FVenda.addItens(TItensModel.New.Quantidade(StrToCurr(Edit1.Text))
    .Preco(StrToCurr(Edit2.Text)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Text := CurrToStr(FVenda.Total)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FVenda := TVendaModel.New;
end;

end.
