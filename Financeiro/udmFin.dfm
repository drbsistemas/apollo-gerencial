object dmFin: TdmFin
  OldCreateOrder = False
  Height = 222
  Width = 327
  object UpdtCredito: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CLIENTECREDITO'
      '(IDCREDITO, "DATA", DOCUMENTO, DESCRICAO, SALDOANTES, '
      '  CREDITO, DEBITO, SALDO, IDCLIE, USUARIO)'
      
        'VALUES (:NEW_IDCREDITO, :NEW_DATA, :NEW_DOCUMENTO, :NEW_DESCRICA' +
        'O, :NEW_SALDOANTES, '
      
        '  :NEW_CREDITO, :NEW_DEBITO, :NEW_SALDO, :NEW_IDCLIE, :NEW_USUAR' +
        'IO)'
      
        'RETURNING IDCREDITO, "DATA", DOCUMENTO, DESCRICAO, SALDOANTES, C' +
        'REDITO, DEBITO, SALDO, IDCLIE')
    ModifySQL.Strings = (
      'UPDATE CLIENTECREDITO'
      
        'SET IDCREDITO = :NEW_IDCREDITO, "DATA" = :NEW_DATA, DOCUMENTO = ' +
        ':NEW_DOCUMENTO, '
      '  DESCRICAO = :NEW_DESCRICAO, SALDOANTES = :NEW_SALDOANTES, '
      
        '  CREDITO = :NEW_CREDITO, DEBITO = :NEW_DEBITO, SALDO = :NEW_SAL' +
        'DO, '
      '  IDCLIE = :NEW_IDCLIE, USUARIO = :NEW_USUARIO'
      'WHERE IDCREDITO = :OLD_IDCREDITO'
      
        'RETURNING IDCREDITO, "DATA", DOCUMENTO, DESCRICAO, SALDOANTES, C' +
        'REDITO, DEBITO, SALDO, IDCLIE')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTECREDITO'
      'WHERE IDCREDITO = :OLD_IDCREDITO')
    FetchRowSQL.Strings = (
      
        'SELECT IDCREDITO, "DATA" AS "DATA", DOCUMENTO, DESCRICAO, SALDOA' +
        'NTES, '
      '  CREDITO, DEBITO, SALDO, IDCLIE, USUARIO'
      'FROM CLIENTECREDITO'
      'WHERE IDCREDITO = :IDCREDITO')
    Left = 17
    Top = 43
  end
  object dsCredito: TDataSource
    DataSet = qryCredito
    Left = 17
    Top = 87
  end
  object qryCredito: TFDQuery
    AfterInsert = qryCreditoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtCredito
    SQL.Strings = (
      'select * from CLIENTECREDITO')
    Left = 17
    Top = 1
    object qryCreditoIDCREDITO: TIntegerField
      FieldName = 'IDCREDITO'
      Origin = 'IDCREDITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCreditoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCreditoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 50
    end
    object qryCreditoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object qryCreditoSALDOANTES: TFloatField
      FieldName = 'SALDOANTES'
      Origin = 'SALDOANTES'
      DisplayFormat = '###,###,##0.00'
    end
    object qryCreditoCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryCreditoDEBITO: TFloatField
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryCreditoSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryCreditoIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      Origin = 'IDCLIE'
    end
    object qryCreditoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 100
    end
  end
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 274
    Top = 5
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 274
    Top = 49
  end
  object uHis_Credito: TUCHist_DataSet
    DataSet = qryCredito
    ControlHistorico = FPrinc.uHistorico
    Left = 16
    Top = 136
  end
end
