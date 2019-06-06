unit Sped.Interf;

interface

type
  TSPED = (spdFiscal, spdContribuicoes);

  ISped = interface
    ['{915A4EEC-49BB-484E-B259-DAA991E34068}']
    function GerarSPED: string;
  end;

  ISpedFactory = interface
    ['{C77291B1-8C95-4778-8C32-186652F707F9}']
    function SPED(AValue: TSPED): ISped;
  end;

implementation

end.
