unit DFe.Interf;

interface

type

{ *   "Factory Method" é um padrão criacional que possui um unico metodo para a criacao de varios
  *    diferentes que implementam a mesma interface.
  * }

  TDFe = (dfeNotaFiscalEletronica, dfeNotaConsumidorEletronica,
    dfeConhecimentoTransporteEletronico);

  IDFe = interface
    ['{D52AF180-B548-4080-93D2-B9C56C8CB24E}']
    function Emitir: string;
  end;

  IDFeFactory = interface
    ['{41EC5F33-4E15-41F5-A6B7-C456FDF1449C}']
    function DFe(AValue: TDFe): IDFe;
  end;

implementation

end.
