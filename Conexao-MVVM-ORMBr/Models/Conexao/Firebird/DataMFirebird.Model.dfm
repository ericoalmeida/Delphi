object DataMFirebird: TDataMFirebird
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 115
  Width = 171
  object FBancoDeDados: TFDConnection
    Left = 32
    Top = 24
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 64
    Top = 24
  end
  object DriverLink: TFDPhysFBDriverLink
    Left = 96
    Top = 24
  end
end
