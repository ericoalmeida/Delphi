unit Main.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ScrollBox, FMX.Memo,
  ItemModel.Interf, System.Generics.Collections;

type
  TForm1 = class(TForm)
    BTRepetirUltimoItem: TButton;
    BTVenderItem: TButton;
    Memo1: TMemo;
    EDCodigo: TEdit;
    EDDescricao: TEdit;
    BTExibir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BTVenderItemClick(Sender: TObject);
    procedure BTRepetirUltimoItemClick(Sender: TObject);
    procedure BTExibirClick(Sender: TObject);
  private
    FLista: TList<IItem>;
  public
    { Public declarations }

    procedure ExibirItens;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses ItemModel;

procedure TForm1.BTExibirClick(Sender: TObject);
begin
  ExibirItens;
end;

procedure TForm1.BTRepetirUltimoItemClick(Sender: TObject);
begin
  FLista.Add(FLista[Pred(FLista.Count)].Prototype.Clone);
end;

procedure TForm1.BTVenderItemClick(Sender: TObject);
var
  VItem: IItem;
begin
  VItem := TItem.New;

  VItem.Codigo(EDCodigo.Text).Descricao(EDDescricao.Text);

  FLista.Add(VItem);
end;

procedure TForm1.ExibirItens;
var
  I: Integer;
begin
  Memo1.Lines.Clear;

  for I := 0 to Pred(FLista.Count) do
  begin
    Memo1.Lines.Add(FLista.Items[I].Codigo +' - '+FLista.Items[I].Descricao);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FLista := TList<IItem>.Create;
end;

end.
