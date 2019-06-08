unit NotaFiscalEletronical.Model;

interface

uses DFeModel.Interf, System.Classes, System.SysUtils;

type
  TNotaFiscalEletronicaModel = class(TInterfacedObject, IDFe)
  private
    class var FInstance: IDFe;
    FNota: TStringList;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFe;

    function Emitente(AValue: string): IDFe;
    function Destinatario(AValue: string): IDFe;
    function ValorNotaFiscal(AValue: Currency): IDFe;

    function Emitir: string;
  end;

implementation

{ TNotaFiscalEletronicaModel }

constructor TNotaFiscalEletronicaModel.Create;
begin
  FNota := TStringList.Create;
end;

function TNotaFiscalEletronicaModel.Destinatario(AValue: string): IDFe;
begin
   Result := Self;
   FNota.Add('Destinatario: '+AValue);
end;

destructor TNotaFiscalEletronicaModel.Destroy;
begin
  FNota.Free;
  inherited;
end;

function TNotaFiscalEletronicaModel.Emitente(AValue: string): IDFe;
begin
   Result := Self;
   FNota.Add('Emitente: '+AValue);
end;

function TNotaFiscalEletronicaModel.Emitir: string;
begin
  Result := 'Nota Fical Eletrônica Emitida!!!'#10#13+FNota.Text;
end;

class function TNotaFiscalEletronicaModel.New: IDFe;
begin
  //Se nao ouver uma instancia ativa da classe, sera criada uma instancia.
  if not(Assigned(FInstance)) then
   FInstance := Self.Create;

  //Retorna a instancia ativa
  Result := FInstance;
end;

function TNotaFiscalEletronicaModel.ValorNotaFiscal(AValue: Currency): IDFe;
begin
   Result := Self;
   FNota.Add('Valor: '+CurrToStr(AValue));
end;

end.
