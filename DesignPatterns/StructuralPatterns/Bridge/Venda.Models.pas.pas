unit Venda.Model.;

interface

uses Bridge.Model.Interf, System.Generics.Collections;

type
  TVendaModel = class(TInterfacedObject, ISource<TVenda>)
  private
    FLista: TList<TVenda>;

    procedure addItens;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: ISource<TVenda>;

    function Exportar(AValue: IExport<TVenda>): ISource<t>;

  end;

implementation

uses
  System.SysUtils;

{ TVendaModel }

procedure TVendaModel.addItens;
var
  Venda: TVenda;
begin
  Venda.COO = 10;
  Venda.Itens = 1;
  Venda.Total = 10;

  FLista.Add(Venda);

  Venda.COO = 20;
  Venda.Itens = 2;
  Venda.Total = 20;

  FLista.Add(Venda);

  Venda.COO = 30;
  Venda.Itens = 3;
  Venda.Total = 30;

  FLista.Add(Venda);

  Venda.COO = 40;
  Venda.Itens = 4;
  Venda.Total = 40;

  FLista.Add(Venda);

  Venda.COO = 50;
  Venda.Itens = 5;
  Venda.Total = 50;

  FLista.Add(Venda);
end;

constructor TVendaModel.Create;
begin
  FLista := TList<TVenda>.Create;
end;

destructor TVendaModel.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TVendaModel.Exportar(AValue: IExport<TVenda>): ISource<t>;
var
  I: Integer;
begin
  for I := 0 to Pred(FLista.Count) do
  begin
    AValue.GerarRegistros()
  end;
end;

class function TVendaModel.New: ISource<TVenda>;
begin
  Result := Self.Create;
end;

end.
