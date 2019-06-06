unit FacadeModel;

interface

uses FacadeModel.interf, DFe.interf, Sped.interf;

type
  TFacadeModel = class(TInterfacedObject, IFacadeModel)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IFacadeModel;

    function SpedFactory: ISpedFactory;
    function DFeFactory: IDFeFactory;
  end;

implementation

{ TFacadeModel }

uses DFeFactory, SpedFactory;

constructor TFacadeModel.Create;
begin

end;

destructor TFacadeModel.Destroy;
begin

  inherited;
end;

function TFacadeModel.DFeFactory: IDFeFactory;
begin
  Result := TDFeFactoryModel.New;
end;

class function TFacadeModel.New: IFacadeModel;
begin
  Result := Self.Create;
end;

function TFacadeModel.SpedFactory: ISpedFactory;
begin
  Result := TSpedFactory.New;
end;

end.
