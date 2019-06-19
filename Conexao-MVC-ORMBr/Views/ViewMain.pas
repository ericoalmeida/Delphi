unit ViewMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  ConexaoDBFacade.Model.Interf, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFMainView = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FConexaoFacade: IConexaoDBFacadeModel;
  public
    { Public declarations }
  end;

var
  FMainView: TFMainView;

implementation

{$R *.fmx}

uses ConexaoDBFacade.Controller;


procedure TFMainView.Button1Click(Sender: TObject);
begin
  TConexaoDBFacadeController
   .New
    .ConexaoFactory
     .Conexao;

     ShowMessage('Conectado com sucesso!!');
end;

end.
