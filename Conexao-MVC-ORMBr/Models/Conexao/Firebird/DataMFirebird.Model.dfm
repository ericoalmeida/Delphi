object FDataMFirebird: TFDataMFirebird
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 88
  Width = 144
  object FBancoDeDados: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object Wait: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 48
    Top = 8
  end
  object DriverLink: TFDPhysFBDriverLink
    Left = 80
    Top = 8
  end
end
