unit SPEDC100.Model;

interface

uses Bridge.Model.interf, System.Classes;

type
  TSPEDC100Model = class(TInterfacedObject, IEXport<TVenda>)
  private
    FArquivo: TStringList;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IEXport<TVenda>;

    function GerarRegistros(AValue: TVenda): IEXport<TVenda>;
  end;

implementation

uses
  System.SysUtils;

const
  ARQUIVO = 'SPED.txt';

  { TSPEDC100Model }

constructor TSPEDC100Model.Create;
begin
  FArquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    FArquivo.LoadFromFile(ARQUIVO);
end;

destructor TSPEDC100Model.Destroy;
begin
  FArquivo.Free;
  inherited;
end;

function TSPEDC100Model.GerarRegistros(AValue: TVenda): IEXport<TVenda>;
begin
  Result := Self;

  FArquivo.add('C100|' + AValue.COO.ToString + '|' + AValue.Itens.ToString + '|'
    + CurrToStr(AValue.Total));

  FArquivo.SaveToFile(ARQUIVO);
end;

class function TSPEDC100Model.New: IEXport<TVenda>;
begin
  Result := Self.Create
end;

end.
