unit Main.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Conexao.Model.Interf,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFMainView = class(TForm)
    BTConexao: TButton;
    procedure BTConexaoClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FMainView: TFMainView;

implementation

{$R *.fmx}

uses ConexaoDBFacade.Model;

procedure TFMainView.BTConexaoClick(Sender: TObject);
begin
  TConexaoDBFacadeModel.New
    .ConexaoFactory
    .ConexaoBancoDados(dbFirebird)
    .Conexao;

  ShowMessage('Conectado com sucesso!!');
end;

end.
