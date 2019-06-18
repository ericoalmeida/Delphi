unit ItemModel;

interface

uses ItemModel.Interf;

type
  TItem = class(TInterfacedObject, IItem, IPrototype<IItem>)
  private
    FCodigo: string;
    FDescricao: string;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IItem;

    function Codigo(AValue: string): IItem; overload;
    function Codigo: string; overload;
    function Descricao(AValue: string): IItem; overload;
    function Descricao: string; overload;

    function Prototype: IPrototype<IItem>;

    function Clone: IItem;
  end;

implementation

{ TItem }

function TItem.Codigo(AValue: string): IItem;
begin
   Result := self;
   fcodigo := AValue;
end;

function TItem.Clone: IItem;
begin
   Result := TItem.New;
   Result.Codigo(FCodigo);
   Result.Descricao(FDescricao);
end;

function TItem.Codigo: string;
begin
  Result := FCodigo;
end;

constructor TItem.Create;
begin

end;

function TItem.Descricao(AValue: string): IItem;
begin
  Result := Self;
  FDescricao := AValue;
end;

function TItem.Descricao: string;
begin
  Result := FDescricao;
end;

destructor TItem.Destroy;
begin

  inherited;
end;

class function TItem.New: IItem;
begin
  Result := Self.Create;
end;

function TItem.Prototype: IPrototype<IItem>;
begin
  Result := Self;
end;

end.
