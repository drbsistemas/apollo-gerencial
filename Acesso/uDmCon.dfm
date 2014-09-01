object dmCon: TdmCon
  OldCreateOrder = False
  Height = 193
  Width = 244
  object FdCon: TFDConnection
    Params.Strings = (
      'Database=D:\Gerencial\Dados\DOG.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'PageSize=16384'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Transaction = FdSalva
    Left = 27
    Top = 27
  end
  object FdSalva: TFDTransaction
    Connection = FdCon
    Left = 77
    Top = 27
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'D:\Gerencial\Lancador\Win32\Debug\gds32.dll'
    Left = 80
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 24
  end
  object FDTableAdapter1: TFDTableAdapter
    Left = 160
    Top = 80
  end
end
