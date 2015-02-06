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
  object UpdtConta: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CONTA'
      '(IDCONTA, IDCLIE, IDCCUSTO, IDCPAGTO, IDLOTE, '
      '  IDPAI, IDORIGEM, IDPLANOCTA, DIASATRASO, '
      '  DTEMISSAO, DTLANCTO, DTVENCTO, DTBAIXA, '
      '  VLRINI, VLRJUROS, VLRMULTA, VLRDESC, '
      '  VLRBRUTO, VLRPAGO, PARCELA, DOCUMENTO, '
      '  HISTORICO, TIPOCONTA, STATUSCONTA, ORIGEM, '
      '  OBS)'
      
        'VALUES (:NEW_IDCONTA, :NEW_IDCLIE, :NEW_IDCCUSTO, :NEW_IDCPAGTO,' +
        ' :NEW_IDLOTE, '
      '  :NEW_IDPAI, :NEW_IDORIGEM, :NEW_IDPLANOCTA, :NEW_DIASATRASO, '
      '  :NEW_DTEMISSAO, :NEW_DTLANCTO, :NEW_DTVENCTO, :NEW_DTBAIXA, '
      '  :NEW_VLRINI, :NEW_VLRJUROS, :NEW_VLRMULTA, :NEW_VLRDESC, '
      '  :NEW_VLRBRUTO, :NEW_VLRPAGO, :NEW_PARCELA, :NEW_DOCUMENTO, '
      
        '  :NEW_HISTORICO, :NEW_TIPOCONTA, :NEW_STATUSCONTA, :NEW_ORIGEM,' +
        ' '
      '  :NEW_OBS)'
      
        'RETURNING IDCONTA, IDCLIE, IDCCUSTO, IDCPAGTO, IDLOTE, IDPAI, ID' +
        'ORIGEM, IDPLANOCTA, DIASATRASO, DTEMISSAO, DTLANCTO, DTVENCTO, D' +
        'TBAIXA, VLRINI, VLRJUROS, VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, ' +
        'PARCELA, DOCUMENTO, HISTORICO, TIPOCONTA, STATUSCONTA, ORIGEM, O' +
        'BS')
    ModifySQL.Strings = (
      'UPDATE CONTA'
      
        'SET IDCONTA = :NEW_IDCONTA, IDCLIE = :NEW_IDCLIE, IDCCUSTO = :NE' +
        'W_IDCCUSTO, '
      
        '  IDCPAGTO = :NEW_IDCPAGTO, IDLOTE = :NEW_IDLOTE, IDPAI = :NEW_I' +
        'DPAI, '
      '  IDORIGEM = :NEW_IDORIGEM, IDPLANOCTA = :NEW_IDPLANOCTA, '
      '  DIASATRASO = :NEW_DIASATRASO, DTEMISSAO = :NEW_DTEMISSAO, '
      
        '  DTLANCTO = :NEW_DTLANCTO, DTVENCTO = :NEW_DTVENCTO, DTBAIXA = ' +
        ':NEW_DTBAIXA, '
      
        '  VLRINI = :NEW_VLRINI, VLRJUROS = :NEW_VLRJUROS, VLRMULTA = :NE' +
        'W_VLRMULTA, '
      
        '  VLRDESC = :NEW_VLRDESC, VLRBRUTO = :NEW_VLRBRUTO, VLRPAGO = :N' +
        'EW_VLRPAGO, '
      
        '  PARCELA = :NEW_PARCELA, DOCUMENTO = :NEW_DOCUMENTO, HISTORICO ' +
        '= :NEW_HISTORICO, '
      '  TIPOCONTA = :NEW_TIPOCONTA, STATUSCONTA = :NEW_STATUSCONTA, '
      '  ORIGEM = :NEW_ORIGEM, OBS = :NEW_OBS'
      'WHERE IDCONTA = :OLD_IDCONTA'
      
        'RETURNING IDCONTA, IDCLIE, IDCCUSTO, IDCPAGTO, IDLOTE, IDPAI, ID' +
        'ORIGEM, IDPLANOCTA, DIASATRASO, DTEMISSAO, DTLANCTO, DTVENCTO, D' +
        'TBAIXA, VLRINI, VLRJUROS, VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, ' +
        'PARCELA, DOCUMENTO, HISTORICO, TIPOCONTA, STATUSCONTA, ORIGEM, O' +
        'BS')
    DeleteSQL.Strings = (
      'DELETE FROM CONTA'
      'WHERE IDCONTA = :OLD_IDCONTA')
    FetchRowSQL.Strings = (
      
        'SELECT IDCONTA, IDCLIE, IDCCUSTO, IDCPAGTO, IDLOTE, IDPAI, IDORI' +
        'GEM, '
      
        '  IDPLANOCTA, DIASATRASO, DTEMISSAO, DTLANCTO, DTVENCTO, DTBAIXA' +
        ', '
      '  VLRINI, VLRJUROS, VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, '
      
        '  PARCELA, DOCUMENTO, HISTORICO, TIPOCONTA, STATUSCONTA, ORIGEM,' +
        ' '
      '  OBS'
      'FROM CONTA'
      'WHERE IDCONTA = :IDCONTA')
    Left = 57
    Top = 43
  end
  object dsConta: TDataSource
    DataSet = qryConta
    Left = 57
    Top = 87
  end
  object qryConta: TFDQuery
    AfterInsert = qryContaAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtConta
    SQL.Strings = (
      'SELECT'
      'A.*,'
      'B.RAZAO,'
      'B.CNPJ,'
      'B.CPF,'
      'C.descricao CCUSTO,'
      'D.DESCRICAO FPAGTO'
      'FROM CONTA A'
      'left join CLIENTE B on A.IDCLIE=B.IDCLIE'
      
        'left join GENERICA C on A.IDCCUSTO = C.IDGENERICA and C.TABELA= ' +
        #39'CCUSTO'#39
      
        'left join GENERICA D on A.idCpagto = D.idgenerica and D.TABELA= ' +
        #39'FPAGTO'#39)
    Left = 57
    Top = 1
    object qryContaIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Origin = 'IDCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContaIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      Origin = 'IDCLIE'
    end
    object qryContaIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
      Origin = 'IDCCUSTO'
    end
    object qryContaIDCPAGTO: TIntegerField
      FieldName = 'IDCPAGTO'
      Origin = 'IDCPAGTO'
    end
    object qryContaIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      Origin = 'IDLOTE'
    end
    object qryContaIDPAI: TIntegerField
      FieldName = 'IDPAI'
      Origin = 'IDPAI'
    end
    object qryContaIDORIGEM: TIntegerField
      FieldName = 'IDORIGEM'
      Origin = 'IDORIGEM'
    end
    object qryContaIDPLANOCTA: TIntegerField
      FieldName = 'IDPLANOCTA'
      Origin = 'IDPLANOCTA'
    end
    object qryContaDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
      Origin = 'DIASATRASO'
    end
    object qryContaDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object qryContaDTLANCTO: TSQLTimeStampField
      FieldName = 'DTLANCTO'
      Origin = 'DTLANCTO'
    end
    object qryContaDTVENCTO: TSQLTimeStampField
      FieldName = 'DTVENCTO'
      Origin = 'DTVENCTO'
    end
    object qryContaDTBAIXA: TSQLTimeStampField
      FieldName = 'DTBAIXA'
      Origin = 'DTBAIXA'
    end
    object qryContaVLRINI: TFloatField
      FieldName = 'VLRINI'
      Origin = 'VLRINI'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      Origin = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      Origin = 'VLRMULTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      Origin = 'VLRDESC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
      Origin = 'VLRBRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      Origin = 'VLRPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qryContaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 50
    end
    object qryContaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 500
    end
    object qryContaTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Origin = 'TIPOCONTA'
      Size = 1
    end
    object qryContaSTATUSCONTA: TStringField
      FieldName = 'STATUSCONTA'
      Origin = 'STATUSCONTA'
      Size = 30
    end
    object qryContaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 30
    end
    object qryContaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object qryContaRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryContaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryContaCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryContaCCUSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CCUSTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryContaFPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FPAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object uHis_Conta: TUCHist_DataSet
    DataSet = qryConta
    ControlHistorico = FPrinc.uHistorico
    Left = 57
    Top = 136
  end
  object cdsSelec: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IDCONTA'
        DataType = ftInteger
      end
      item
        Name = 'IDCLIE'
        DataType = ftInteger
      end
      item
        Name = 'IDPLANO'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECLIE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DTVENCTO'
        DataType = ftDateTime
      end
      item
        Name = 'DTEMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'VLRINI'
        DataType = ftFloat
      end
      item
        Name = 'VLRJUROS'
        DataType = ftFloat
      end
      item
        Name = 'VLRMULTA'
        DataType = ftFloat
      end
      item
        Name = 'VLRDESC'
        DataType = ftFloat
      end
      item
        Name = 'VLRBRUTO'
        DataType = ftFloat
      end
      item
        Name = 'DIASATRASO'
        DataType = ftInteger
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VLRPAGO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 128
    Top = 40
    object cdsSelecIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object cdsSelecIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
    end
    object cdsSelecIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
    end
    object cdsSelecDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object cdsSelecNOMECLIE: TStringField
      FieldName = 'NOMECLIE'
    end
    object cdsSelecDTVENCTO: TDateTimeField
      FieldName = 'DTVENCTO'
    end
    object cdsSelecDTEMISSAO: TDateTimeField
      FieldName = 'DTEMISSAO'
    end
    object cdsSelecVLRINI: TFloatField
      FieldName = 'VLRINI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSelecVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSelecVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSelecVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSelecVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSelecDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object cdsSelecHISTORICO: TStringField
      FieldName = 'HISTORICO'
    end
    object cdsSelecSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsSelecVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsSelec: TDataSource
    DataSet = cdsSelec
    Left = 128
    Top = 88
  end
end
