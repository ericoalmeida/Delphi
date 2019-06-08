unit DFe.Interf;

interface

type

  { *   "Singleton" é um padrão criacional que basicamente permite que seja criada
    *    apenas uma instancia de determinada classe.
    *
    * }

  TDFe = (dfeNotaFiscalEletronica);

  IDFe = interface
    ['{D52AF180-B548-4080-93D2-B9C56C8CB24E}']
    function Emitente(AValue: string): IDFe;
    function Destinatario(AValue: string): IDFe;
    function ValorNotaFiscal(AValue: Currency): IDFe;
    function Emitir: string;
  end;

  IDFeFactory = interface
    ['{41EC5F33-4E15-41F5-A6B7-C456FDF1449C}']
    function DFe(AValue: TDFe): IDFe;
  end;

implementation

end.
