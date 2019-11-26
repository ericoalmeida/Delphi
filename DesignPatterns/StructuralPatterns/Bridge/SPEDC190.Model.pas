unit SPEDC190.Model;

interface

uses Bridge.Model.interf, System.Classes;

type
  TSPEDC190Model = class(TInterfacedObject, IEXport<TVenda>)
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

constructor TSPEDC190Model.Create;
begin
  FArquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    FArquivo.LoadFromFile(ARQUIVO);
end;

destructor TSPEDC190Model.Destroy;
begin
  FArquivo.Free;
  inherited;
end;

function TSPEDC190Model.GerarRegistros(AValue: TVenda): IEXport<TVenda>;
begin
  Result := Self;

  FArquivo.add('C190|' + AValue.COO.ToString + '|0|0|0|0|0|0|' + AValue.Itens.ToString + '|' + CurrToStr(AValue.Total));

  FArquivo.SaveToFile(ARQUIVO);
end;

class function TSPEDC190Model.New: IEXport<TVenda>;
begin
  Result := Self.Create
end;

end.
