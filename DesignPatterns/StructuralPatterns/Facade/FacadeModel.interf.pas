unit FacadeModel.interf;

interface

uses Sped.Interf, DFe.Interf;

type
 IFacadeModel = interface
   ['{A558D3FE-770B-4D8E-A54F-1A6AA4643F0D}']
   function SpedFactory: ISpedFactory;
   function DFeFactory: IDFeFactory;
 end;

implementation

end.
