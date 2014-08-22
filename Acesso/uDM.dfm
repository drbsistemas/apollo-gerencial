object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDCon: TFDConnection
    Left = 32
    Top = 16
  end
  object FDTrans: TFDTransaction
    Connection = FDCon
    Left = 80
    Top = 16
  end
end
