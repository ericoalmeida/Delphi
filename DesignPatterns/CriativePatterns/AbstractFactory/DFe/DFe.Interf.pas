unit DFe.Interf;

interface

type

{ *   "Abstract Factory" é um padrão criacional que simula uma fabrica
  *    de criação de objetos.
  * }

  IDFe = interface
    ['{D52AF180-B548-4080-93D2-B9C56C8CB24E}']
    function Emitir: string;
  end;

  IDFeFactory = interface
    ['{41EC5F33-4E15-41F5-A6B7-C456FDF1449C}']
      function NotaFiscalEletronica: IDFe;
      function NotaFiscalConsumidorEletronica: IDFe;
      function ConhecimentoTransporteEletronico: IDFe;
  end;

implementation

end.
