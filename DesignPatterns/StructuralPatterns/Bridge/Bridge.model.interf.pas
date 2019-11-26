unit Bridge.model.interf;

interface

type
  TVenda = record
    COO: Integer;
    Itens: Integer;
    Total: Currency;
  end;

  IExport<t> = interface;

  ISource<t> = interface
    ['{9902CD31-5606-406F-9E37-05F23552710C}']
    function Exportar(AValue: IExport<t>): ISource<t>;
  end;

  IExport<t> = interface
    ['{894A29B2-95D8-4C06-94A9-0C41799336D5}']
    function GerarRegistros(AValue: t): IExport<t>;
  end;

implementation

end.
