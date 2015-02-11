object dmFin: TdmFin
  OldCreateOrder = False
  Height = 222
  Width = 408
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
    Left = 370
    Top = 5
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 370
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
      '(IDCONTA, IDCLIE, IDLOTE, IDPAI, IDORIGEM, '
      '  IDPLANOCTA, DIASATRASO, DTEMISSAO, DTLANCTO, '
      '  DTVENCTO, DTBAIXA, VLRINI, VLRJUROS, '
      '  VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, '
      '  DOCUMENTO, HISTORICO, TIPOCONTA, STATUSCONTA, '
      '  ORIGEM, OBS)'
      
        'VALUES (:NEW_IDCONTA, :NEW_IDCLIE, :NEW_IDLOTE, :NEW_IDPAI, :NEW' +
        '_IDORIGEM, '
      
        '  :NEW_IDPLANOCTA, :NEW_DIASATRASO, :NEW_DTEMISSAO, :NEW_DTLANCT' +
        'O, '
      '  :NEW_DTVENCTO, :NEW_DTBAIXA, :NEW_VLRINI, :NEW_VLRJUROS, '
      '  :NEW_VLRMULTA, :NEW_VLRDESC, :NEW_VLRBRUTO, :NEW_VLRPAGO, '
      
        '  :NEW_DOCUMENTO, :NEW_HISTORICO, :NEW_TIPOCONTA, :NEW_STATUSCON' +
        'TA, '
      '  :NEW_ORIGEM, :NEW_OBS)'
      
        'RETURNING IDCONTA, IDCLIE, IDLOTE, IDPAI, IDORIGEM, IDPLANOCTA, ' +
        'DIASATRASO, DTEMISSAO, DTLANCTO, DTVENCTO, DTBAIXA, VLRINI, VLRJ' +
        'UROS, VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, DOCUMENTO, HISTORICO' +
        ', TIPOCONTA, STATUSCONTA, ORIGEM, OBS')
    ModifySQL.Strings = (
      'UPDATE CONTA'
      
        'SET IDCONTA = :NEW_IDCONTA, IDCLIE = :NEW_IDCLIE, IDLOTE = :NEW_' +
        'IDLOTE, '
      
        '  IDPAI = :NEW_IDPAI, IDORIGEM = :NEW_IDORIGEM, IDPLANOCTA = :NE' +
        'W_IDPLANOCTA, '
      '  DIASATRASO = :NEW_DIASATRASO, DTEMISSAO = :NEW_DTEMISSAO, '
      
        '  DTLANCTO = :NEW_DTLANCTO, DTVENCTO = :NEW_DTVENCTO, DTBAIXA = ' +
        ':NEW_DTBAIXA, '
      
        '  VLRINI = :NEW_VLRINI, VLRJUROS = :NEW_VLRJUROS, VLRMULTA = :NE' +
        'W_VLRMULTA, '
      
        '  VLRDESC = :NEW_VLRDESC, VLRBRUTO = :NEW_VLRBRUTO, VLRPAGO = :N' +
        'EW_VLRPAGO, '
      '  DOCUMENTO = :NEW_DOCUMENTO, HISTORICO = :NEW_HISTORICO, '
      '  TIPOCONTA = :NEW_TIPOCONTA, STATUSCONTA = :NEW_STATUSCONTA, '
      '  ORIGEM = :NEW_ORIGEM, OBS = :NEW_OBS'
      'WHERE IDCONTA = :OLD_IDCONTA'
      
        'RETURNING IDCONTA, IDCLIE, IDLOTE, IDPAI, IDORIGEM, IDPLANOCTA, ' +
        'DIASATRASO, DTEMISSAO, DTLANCTO, DTVENCTO, DTBAIXA, VLRINI, VLRJ' +
        'UROS, VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, DOCUMENTO, HISTORICO' +
        ', TIPOCONTA, STATUSCONTA, ORIGEM, OBS')
    DeleteSQL.Strings = (
      'DELETE FROM CONTA'
      'WHERE IDCONTA = :OLD_IDCONTA')
    FetchRowSQL.Strings = (
      
        'SELECT IDCONTA, IDCLIE, IDLOTE, IDPAI, IDORIGEM, IDPLANOCTA, DIA' +
        'SATRASO, '
      '  DTEMISSAO, DTLANCTO, DTVENCTO, DTBAIXA, VLRINI, VLRJUROS, '
      '  VLRMULTA, VLRDESC, VLRBRUTO, VLRPAGO, DOCUMENTO, HISTORICO, '
      '  TIPOCONTA, STATUSCONTA, ORIGEM, OBS'
      'FROM CONTA'
      'WHERE IDCONTA = :IDCONTA')
    Left = 56
    Top = 43
  end
  object dsConta: TDataSource
    DataSet = qryConta
    Left = 56
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
      'B.CPF'
      'FROM CONTA A'
      'left join CLIENTE B on A.IDCLIE=B.IDCLIE')
    Left = 56
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
  end
  object uHis_Conta: TUCHist_DataSet
    DataSet = qryConta
    ControlHistorico = FPrinc.uHistorico
    Left = 56
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
    Left = 370
    Top = 117
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
    Left = 370
    Top = 161
  end
  object UpdtContaRateio: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CONTARATEIO'
      '(IDCONTARATEIO, IDCONTA, IDPLANO, VLRPERC, '
      '  VLRRATEIO, IDCCUSTO)'
      
        'VALUES (:NEW_IDCONTARATEIO, :NEW_IDCONTA, :NEW_IDPLANO, :NEW_VLR' +
        'PERC, '
      '  :NEW_VLRRATEIO, :NEW_IDCCUSTO)'
      
        'RETURNING IDCONTARATEIO, IDCONTA, IDPLANO, VLRPERC, VLRRATEIO, I' +
        'DCCUSTO')
    ModifySQL.Strings = (
      'UPDATE CONTARATEIO'
      'SET IDCONTARATEIO = :NEW_IDCONTARATEIO, IDCONTA = :NEW_IDCONTA, '
      
        '  IDPLANO = :NEW_IDPLANO, VLRPERC = :NEW_VLRPERC, VLRRATEIO = :N' +
        'EW_VLRRATEIO, '
      '  IDCCUSTO = :NEW_IDCCUSTO'
      'WHERE IDCONTARATEIO = :OLD_IDCONTARATEIO'
      
        'RETURNING IDCONTARATEIO, IDCONTA, IDPLANO, VLRPERC, VLRRATEIO, I' +
        'DCCUSTO')
    DeleteSQL.Strings = (
      'DELETE FROM CONTARATEIO'
      'WHERE IDCONTARATEIO = :OLD_IDCONTARATEIO')
    FetchRowSQL.Strings = (
      
        'SELECT IDCONTARATEIO, IDCONTA, IDPLANO, VLRPERC, VLRRATEIO, IDCC' +
        'USTO'
      'FROM CONTARATEIO'
      'WHERE IDCONTARATEIO = :IDCONTARATEIO')
    Left = 91
    Top = 44
  end
  object dsContaRateio: TDataSource
    DataSet = qryContaRateio
    Left = 91
    Top = 88
  end
  object qryContaRateio: TFDQuery
    AfterInsert = qryContaRateioAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtContaRateio
    SQL.Strings = (
      'select '
      'A.*,'
      'B.DESCRICAO,'
      'C.NOMEPLANO'
      'from CONTARATEIO A'
      
        'left join GENERICA B on A.IDCCUSTO = B.IDGENERICA and TABELA='#39'CC' +
        'USTO'#39
      'left join PLANOCONTA C on A.IDPLANO = C.IDPLANO')
    Left = 91
    Top = 2
    object qryContaRateioIDCONTARATEIO: TIntegerField
      FieldName = 'IDCONTARATEIO'
      Origin = 'IDCONTARATEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContaRateioIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Origin = 'IDCONTA'
    end
    object qryContaRateioIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
      Origin = 'IDPLANO'
    end
    object qryContaRateioVLRPERC: TIntegerField
      FieldName = 'VLRPERC'
      Origin = 'VLRPERC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaRateioVLRRATEIO: TIntegerField
      FieldName = 'VLRRATEIO'
      Origin = 'VLRRATEIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryContaRateioIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
      Origin = 'IDCCUSTO'
    end
    object qryContaRateioDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qryContaRateioNOMEPLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPLANO'
      Origin = 'NOMEPLANO'
      ProviderFlags = []
      Size = 50
    end
  end
  object uHis_ContaRateio: TUCHist_DataSet
    DataSet = qryContaRateio
    ControlHistorico = FPrinc.uHistorico
    Left = 91
    Top = 137
  end
  object UpdtCaixa: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CAIXA'
      '(IDCAIXA, IDBANCO, AGENCIA, TITULAR, CONTA, '
      '  DTABERTURA, DTFECHADO, SALDOCAIXA, SALDOCONCILIADO, '
      '  TIPOCAIXA, BOL_ESPECIEDOC, BOL_ACEITE, BOL_NOSSONUMERO, '
      '  BOL_LOCALPAGTO, BOL_PERCJUROS, BOL_PERCMULTA, '
      '  BOL_DIASPROTESTO, BOL_INST1, BOL_INST2, BOL_INST3, '
      '  BOL_INST4, AGENCIA_DIG, CONTA_DIG, BOL_TAMNOSSONUMERO, '
      '  BOL_CARTEIRA, BOL_CODCEDENTE, BOL_ESPECIEMOD, '
      '  BOL_DIASCARENCIA)'
      
        'VALUES (:NEW_IDCAIXA, :NEW_IDBANCO, :NEW_AGENCIA, :NEW_TITULAR, ' +
        ':NEW_CONTA, '
      
        '  :NEW_DTABERTURA, :NEW_DTFECHADO, :NEW_SALDOCAIXA, :NEW_SALDOCO' +
        'NCILIADO, '
      
        '  :NEW_TIPOCAIXA, :NEW_BOL_ESPECIEDOC, :NEW_BOL_ACEITE, :NEW_BOL' +
        '_NOSSONUMERO, '
      '  :NEW_BOL_LOCALPAGTO, :NEW_BOL_PERCJUROS, :NEW_BOL_PERCMULTA, '
      
        '  :NEW_BOL_DIASPROTESTO, :NEW_BOL_INST1, :NEW_BOL_INST2, :NEW_BO' +
        'L_INST3, '
      
        '  :NEW_BOL_INST4, :NEW_AGENCIA_DIG, :NEW_CONTA_DIG, :NEW_BOL_TAM' +
        'NOSSONUMERO, '
      '  :NEW_BOL_CARTEIRA, :NEW_BOL_CODCEDENTE, :NEW_BOL_ESPECIEMOD, '
      '  :NEW_BOL_DIASCARENCIA)'
      
        'RETURNING IDCAIXA, IDBANCO, AGENCIA, TITULAR, CONTA, DTABERTURA,' +
        ' DTFECHADO, SALDOCAIXA, SALDOCONCILIADO, TIPOCAIXA, BOL_ESPECIED' +
        'OC, BOL_ACEITE, BOL_NOSSONUMERO, BOL_LOCALPAGTO, BOL_PERCJUROS, ' +
        'BOL_PERCMULTA, BOL_DIASPROTESTO, BOL_INST1, BOL_INST2, BOL_INST3' +
        ', BOL_INST4, AGENCIA_DIG, CONTA_DIG, BOL_TAMNOSSONUMERO, BOL_CAR' +
        'TEIRA, BOL_CODCEDENTE, BOL_ESPECIEMOD, BOL_DIASCARENCIA')
    ModifySQL.Strings = (
      'UPDATE CAIXA'
      
        'SET IDCAIXA = :NEW_IDCAIXA, IDBANCO = :NEW_IDBANCO, AGENCIA = :N' +
        'EW_AGENCIA, '
      
        '  TITULAR = :NEW_TITULAR, CONTA = :NEW_CONTA, DTABERTURA = :NEW_' +
        'DTABERTURA, '
      '  DTFECHADO = :NEW_DTFECHADO, SALDOCAIXA = :NEW_SALDOCAIXA, '
      
        '  SALDOCONCILIADO = :NEW_SALDOCONCILIADO, TIPOCAIXA = :NEW_TIPOC' +
        'AIXA, '
      
        '  BOL_ESPECIEDOC = :NEW_BOL_ESPECIEDOC, BOL_ACEITE = :NEW_BOL_AC' +
        'EITE, '
      
        '  BOL_NOSSONUMERO = :NEW_BOL_NOSSONUMERO, BOL_LOCALPAGTO = :NEW_' +
        'BOL_LOCALPAGTO, '
      
        '  BOL_PERCJUROS = :NEW_BOL_PERCJUROS, BOL_PERCMULTA = :NEW_BOL_P' +
        'ERCMULTA, '
      
        '  BOL_DIASPROTESTO = :NEW_BOL_DIASPROTESTO, BOL_INST1 = :NEW_BOL' +
        '_INST1, '
      '  BOL_INST2 = :NEW_BOL_INST2, BOL_INST3 = :NEW_BOL_INST3, '
      '  BOL_INST4 = :NEW_BOL_INST4, AGENCIA_DIG = :NEW_AGENCIA_DIG, '
      
        '  CONTA_DIG = :NEW_CONTA_DIG, BOL_TAMNOSSONUMERO = :NEW_BOL_TAMN' +
        'OSSONUMERO, '
      
        '  BOL_CARTEIRA = :NEW_BOL_CARTEIRA, BOL_CODCEDENTE = :NEW_BOL_CO' +
        'DCEDENTE, '
      
        '  BOL_ESPECIEMOD = :NEW_BOL_ESPECIEMOD, BOL_DIASCARENCIA = :NEW_' +
        'BOL_DIASCARENCIA'
      'WHERE IDCAIXA = :OLD_IDCAIXA'
      
        'RETURNING IDCAIXA, IDBANCO, AGENCIA, TITULAR, CONTA, DTABERTURA,' +
        ' DTFECHADO, SALDOCAIXA, SALDOCONCILIADO, TIPOCAIXA, BOL_ESPECIED' +
        'OC, BOL_ACEITE, BOL_NOSSONUMERO, BOL_LOCALPAGTO, BOL_PERCJUROS, ' +
        'BOL_PERCMULTA, BOL_DIASPROTESTO, BOL_INST1, BOL_INST2, BOL_INST3' +
        ', BOL_INST4, AGENCIA_DIG, CONTA_DIG, BOL_TAMNOSSONUMERO, BOL_CAR' +
        'TEIRA, BOL_CODCEDENTE, BOL_ESPECIEMOD, BOL_DIASCARENCIA')
    DeleteSQL.Strings = (
      'DELETE FROM CAIXA'
      'WHERE IDCAIXA = :OLD_IDCAIXA')
    FetchRowSQL.Strings = (
      
        'SELECT IDCAIXA, IDBANCO, AGENCIA, TITULAR, CONTA, DTABERTURA, DT' +
        'FECHADO, '
      '  SALDOCAIXA, SALDOCONCILIADO, TIPOCAIXA, BOL_ESPECIEDOC, '
      '  BOL_ACEITE, BOL_NOSSONUMERO, BOL_LOCALPAGTO, BOL_PERCJUROS, '
      
        '  BOL_PERCMULTA, BOL_DIASPROTESTO, BOL_INST1, BOL_INST2, BOL_INS' +
        'T3, '
      
        '  BOL_INST4, AGENCIA_DIG, CONTA_DIG, BOL_TAMNOSSONUMERO, BOL_CAR' +
        'TEIRA, '
      '  BOL_CODCEDENTE, BOL_ESPECIEMOD, BOL_DIASCARENCIA'
      'FROM CAIXA'
      'WHERE IDCAIXA = :IDCAIXA')
    Left = 124
    Top = 46
  end
  object dsCaixa: TDataSource
    DataSet = qryCaixa
    Left = 124
    Top = 89
  end
  object qryCaixa: TFDQuery
    AfterInsert = qryCaixaAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtCaixa
    SQL.Strings = (
      'select * from CAIXA')
    Left = 124
    Top = 2
  end
  object uHist_Caixa: TUCHist_DataSet
    DataSet = qryCaixa
    ControlHistorico = FPrinc.uHistorico
    Left = 124
    Top = 133
  end
  object UpdtCaixaItem: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CAIXAITEM'
      '(IDCAIXAITEM, IDCAIXA, DOCUMENTO, CREDITO, '
      '  DEBITO, SALDOITEM, DATAITEM, HISTORICO, '
      '  DATACONCILIADO, IDPLANO, IDLOTE, USUARIO, '
      '  IDFPAGTO)'
      
        'VALUES (:NEW_IDCAIXAITEM, :NEW_IDCAIXA, :NEW_DOCUMENTO, :NEW_CRE' +
        'DITO, '
      '  :NEW_DEBITO, :NEW_SALDOITEM, :NEW_DATAITEM, :NEW_HISTORICO, '
      '  :NEW_DATACONCILIADO, :NEW_IDPLANO, :NEW_IDLOTE, :NEW_USUARIO, '
      '  :NEW_IDFPAGTO)'
      
        'RETURNING IDCAIXAITEM, IDCAIXA, DOCUMENTO, CREDITO, DEBITO, SALD' +
        'OITEM, DATAITEM, HISTORICO, DATACONCILIADO, IDPLANO, IDLOTE, USU' +
        'ARIO, IDFPAGTO')
    ModifySQL.Strings = (
      'UPDATE CAIXAITEM'
      
        'SET IDCAIXAITEM = :NEW_IDCAIXAITEM, IDCAIXA = :NEW_IDCAIXA, DOCU' +
        'MENTO = :NEW_DOCUMENTO, '
      
        '  CREDITO = :NEW_CREDITO, DEBITO = :NEW_DEBITO, SALDOITEM = :NEW' +
        '_SALDOITEM, '
      
        '  DATAITEM = :NEW_DATAITEM, HISTORICO = :NEW_HISTORICO, DATACONC' +
        'ILIADO = :NEW_DATACONCILIADO, '
      
        '  IDPLANO = :NEW_IDPLANO, IDLOTE = :NEW_IDLOTE, USUARIO = :NEW_U' +
        'SUARIO, '
      '  IDFPAGTO = :NEW_IDFPAGTO'
      'WHERE IDCAIXAITEM = :OLD_IDCAIXAITEM'
      
        'RETURNING IDCAIXAITEM, IDCAIXA, DOCUMENTO, CREDITO, DEBITO, SALD' +
        'OITEM, DATAITEM, HISTORICO, DATACONCILIADO, IDPLANO, IDLOTE, USU' +
        'ARIO, IDFPAGTO')
    DeleteSQL.Strings = (
      'DELETE FROM CAIXAITEM'
      'WHERE IDCAIXAITEM = :OLD_IDCAIXAITEM')
    FetchRowSQL.Strings = (
      
        'SELECT IDCAIXAITEM, IDCAIXA, DOCUMENTO, CREDITO, DEBITO, SALDOIT' +
        'EM, '
      
        '  DATAITEM, HISTORICO, DATACONCILIADO, IDPLANO, IDLOTE, USUARIO,' +
        ' '
      '  IDFPAGTO'
      'FROM CAIXAITEM'
      'WHERE IDCAIXAITEM = :IDCAIXAITEM')
    Left = 157
    Top = 46
  end
  object dsCaixaItem: TDataSource
    DataSet = qryCaixaItem
    Left = 157
    Top = 89
  end
  object qryCaixaItem: TFDQuery
    AfterInsert = qryCaixaItemAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtCaixaItem
    SQL.Strings = (
      'select A.*,'
      'B.NOMEPLANO,'
      'C.DESCRICAO NOMEFPAGTO'
      'from CAIXAITEM A'
      'LEFT JOIN PLANOCONTA B on A.IDPLANO = B.IDPLANO'
      
        'LEFT JOIN GENERICA C on A.IDFPAGTO = C.IDGENERICA and C.TABELA='#39 +
        'FPAGTO'#39)
    Left = 157
    Top = 2
  end
  object uHis_CaixaItem: TUCHist_DataSet
    DataSet = qryCaixaItem
    ControlHistorico = FPrinc.uHistorico
    Left = 157
    Top = 133
  end
end
