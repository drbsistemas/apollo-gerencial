object dmCon: TdmCon
  OldCreateOrder = False
  Height = 197
  Width = 265
  object FdConAcesso: TFDConnection
    Params.Strings = (
      'Database=D:\Gerencial\Dados\Acesso.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'PageSize=16384'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FdSalvaAcesso
    Left = 27
    Top = 11
  end
  object FdSalvaAcesso: TFDTransaction
    Connection = FdConAcesso
    Left = 77
    Top = 11
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'D:\Gerencial\gds32.dll'
    Left = 192
    Top = 112
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 193
    Top = 12
  end
  object FDTableAdapter1: TFDTableAdapter
    Left = 192
    Top = 64
  end
  object FdCon: TFDConnection
    Params.Strings = (
      'Database=D:\Gerencial\Dados\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'PageSize=16384'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FdSalva
    Left = 27
    Top = 59
  end
  object FdSalva: TFDTransaction
    Connection = FdCon
    Left = 77
    Top = 59
  end
end
