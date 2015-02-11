object dmMov: TdmMov
  OldCreateOrder = False
  Height = 357
  Width = 460
  object UpdtItemPed: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO PEDIDOITEM'
      '(IDPEDIDOITEM, IDPEDIDO, IDPROD, QTDE, VLRUNITARIO, '
      '  VLRDESCONTO, VLRTOTALITEM, OBSITEM, DATAVALIDADE, '
      '  SALDOQTDE, STATUSITEM)'
      
        'VALUES (:NEW_IDPEDIDOITEM, :NEW_IDPEDIDO, :NEW_IDPROD, :NEW_QTDE' +
        ', :NEW_VLRUNITARIO, '
      
        '  :NEW_VLRDESCONTO, :NEW_VLRTOTALITEM, :NEW_OBSITEM, :NEW_DATAVA' +
        'LIDADE, '
      '  :NEW_SALDOQTDE, :NEW_STATUSITEM)'
      
        'RETURNING IDPEDIDOITEM, IDPEDIDO, IDPROD, QTDE, VLRUNITARIO, VLR' +
        'DESCONTO, VLRTOTALITEM, OBSITEM, DATAVALIDADE, SALDOQTDE, STATUS' +
        'ITEM')
    ModifySQL.Strings = (
      'UPDATE PEDIDOITEM'
      'SET IDPEDIDOITEM = :NEW_IDPEDIDOITEM, IDPEDIDO = :NEW_IDPEDIDO, '
      
        '  IDPROD = :NEW_IDPROD, QTDE = :NEW_QTDE, VLRUNITARIO = :NEW_VLR' +
        'UNITARIO, '
      
        '  VLRDESCONTO = :NEW_VLRDESCONTO, VLRTOTALITEM = :NEW_VLRTOTALIT' +
        'EM, '
      '  OBSITEM = :NEW_OBSITEM, DATAVALIDADE = :NEW_DATAVALIDADE, '
      '  SALDOQTDE = :NEW_SALDOQTDE, STATUSITEM = :NEW_STATUSITEM'
      'WHERE IDPEDIDOITEM = :OLD_IDPEDIDOITEM'
      
        'RETURNING IDPEDIDOITEM, IDPEDIDO, IDPROD, QTDE, VLRUNITARIO, VLR' +
        'DESCONTO, VLRTOTALITEM, OBSITEM, DATAVALIDADE, SALDOQTDE, STATUS' +
        'ITEM')
    DeleteSQL.Strings = (
      'DELETE FROM PEDIDOITEM'
      'WHERE IDPEDIDOITEM = :OLD_IDPEDIDOITEM')
    FetchRowSQL.Strings = (
      
        'SELECT IDPEDIDOITEM, IDPEDIDO, IDPROD, QTDE, VLRUNITARIO, VLRDES' +
        'CONTO, '
      '  VLRTOTALITEM, OBSITEM, DATAVALIDADE, SALDOQTDE, STATUSITEM'
      'FROM PEDIDOITEM'
      'WHERE IDPEDIDOITEM = :IDPEDIDOITEM')
    Left = 53
    Top = 51
  end
  object dsItemPed: TDataSource
    DataSet = qryItemPed
    Left = 53
    Top = 94
  end
  object qryPedido: TFDQuery
    AfterInsert = qryPedidoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtPedido
    SQL.Strings = (
      'select A.*,'
      'B.RAZAO NOMECLIE,'
      'B.CNPJ,'
      'B.IE,'
      'B.ENDERECO,'
      'B.NUMERO,'
      'B.BAIRRO,'
      'B.CEP,'
      'B.CIDADE,'
      'C.RAZAO NOMEVEND,'
      'D.RAZAO NOMETRANS,'
      'E.DESCRICAO'
      'From PEDIDO A'
      'left join CLIENTE B on A.IDCLIE = B.IDCLIE and B.tipoclie='#39'CLI'#39
      
        'left join CLIENTE C on A.IDVENDEDOR = C.IDCLIE and C.TIPOCLIE='#39'V' +
        'EN'#39
      
        'left join CLIENTE D on A.idtransp = D.IDCLIE and D.TIPOCLIE='#39'TRA' +
        #39
      'left join CPAGTO E on A.IDCPAGTO = E.IDCPAGTO')
    Left = 17
    Top = 7
    object qryPedidoIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Origin = 'TIPOMOV'
      Size = 3
    end
    object qryPedidoIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      Origin = 'IDCLIE'
    end
    object qryPedidoIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      Origin = 'IDVENDEDOR'
    end
    object qryPedidoIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object qryPedidoIDCPAGTO: TIntegerField
      FieldName = 'IDCPAGTO'
      Origin = 'IDCPAGTO'
    end
    object qryPedidoDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
    end
    object qryPedidoDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
      Origin = 'DATAVALIDADE'
    end
    object qryPedidoDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object qryPedidoTIPOPEDIDO: TStringField
      FieldName = 'TIPOPEDIDO'
      Origin = 'TIPOPEDIDO'
      Size = 10
    end
    object qryPedidoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qryPedidoMOTIVOCAN: TStringField
      FieldName = 'MOTIVOCAN'
      Origin = 'MOTIVOCAN'
      Size = 50
    end
    object qryPedidoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 5000
    end
    object qryPedidoQTDEITENS: TFloatField
      FieldName = 'QTDEITENS'
      Origin = 'QTDEITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object qryPedidoTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      Origin = 'TOTALITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object qryPedidoTOTALDESC: TFloatField
      FieldName = 'TOTALDESC'
      Origin = 'TOTALDESC'
      DisplayFormat = '###,###,##0.00'
    end
    object qryPedidoTOTALFRETE: TFloatField
      FieldName = 'TOTALFRETE'
      Origin = 'TOTALFRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qryPedidoTOTALPEDIDO: TFloatField
      FieldName = 'TOTALPEDIDO'
      Origin = 'TOTALPEDIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryPedidoNOMECLIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIE'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryPedidoENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qryPedidoNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryPedidoBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qryPedidoCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryPedidoNOMEVEND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEVEND'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryPedidoNOMETRANS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMETRANS'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryPedidoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryPedidoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPedidoIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPedidoCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
  end
  object UpdtPedido: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO PEDIDO'
      '(IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, '
      '  IDCPAGTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, '
      '  TIPOPEDIDO, STATUS, MOTIVOCAN, OBS, '
      '  QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, '
      '  TOTALPEDIDO)'
      
        'VALUES (:NEW_IDPEDIDO, :NEW_TIPOMOV, :NEW_IDCLIE, :NEW_IDVENDEDO' +
        'R, :NEW_IDTRANSP, '
      
        '  :NEW_IDCPAGTO, :NEW_DATAPEDIDO, :NEW_DATAVALIDADE, :NEW_DATAEN' +
        'TREGA, '
      '  :NEW_TIPOPEDIDO, :NEW_STATUS, :NEW_MOTIVOCAN, :NEW_OBS, '
      
        '  :NEW_QTDEITENS, :NEW_TOTALITENS, :NEW_TOTALDESC, :NEW_TOTALFRE' +
        'TE, '
      '  :NEW_TOTALPEDIDO)'
      
        'RETURNING IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPA' +
        'GTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, ' +
        'MOTIVOCAN, OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TO' +
        'TALPEDIDO')
    ModifySQL.Strings = (
      'UPDATE PEDIDO'
      
        'SET IDPEDIDO = :NEW_IDPEDIDO, TIPOMOV = :NEW_TIPOMOV, IDCLIE = :' +
        'NEW_IDCLIE, '
      '  IDVENDEDOR = :NEW_IDVENDEDOR, IDTRANSP = :NEW_IDTRANSP, '
      '  IDCPAGTO = :NEW_IDCPAGTO, DATAPEDIDO = :NEW_DATAPEDIDO, '
      
        '  DATAVALIDADE = :NEW_DATAVALIDADE, DATAENTREGA = :NEW_DATAENTRE' +
        'GA, '
      
        '  TIPOPEDIDO = :NEW_TIPOPEDIDO, STATUS = :NEW_STATUS, MOTIVOCAN ' +
        '= :NEW_MOTIVOCAN, '
      
        '  OBS = :NEW_OBS, QTDEITENS = :NEW_QTDEITENS, TOTALITENS = :NEW_' +
        'TOTALITENS, '
      '  TOTALDESC = :NEW_TOTALDESC, TOTALFRETE = :NEW_TOTALFRETE, '
      '  TOTALPEDIDO = :NEW_TOTALPEDIDO'
      'WHERE IDPEDIDO = :OLD_IDPEDIDO'
      
        'RETURNING IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPA' +
        'GTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, ' +
        'MOTIVOCAN, OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TO' +
        'TALPEDIDO')
    DeleteSQL.Strings = (
      'DELETE FROM PEDIDO'
      'WHERE IDPEDIDO = :OLD_IDPEDIDO')
    FetchRowSQL.Strings = (
      
        'SELECT IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPAGTO' +
        ', DATAPEDIDO, '
      '  DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, MOTIVOCAN, '
      '  OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TOTALPEDIDO'
      'FROM PEDIDO'
      'WHERE IDPEDIDO = :IDPEDIDO')
    Left = 17
    Top = 51
  end
  object dsPedido: TDataSource
    DataSet = qryPedido
    Left = 17
    Top = 94
  end
  object qryItemPed: TFDQuery
    AfterInsert = qryItemPedAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtItemPed
    SQL.Strings = (
      'select A.*,'
      'B.NOMEPROD,'
      'B.MARCAPROD,'
      'B.UNPROD,'
      'B.REFPROD'
      'from PEDIDOITEM A'
      'left join PRODUTO B on A.IDPROD = B.IDPROD')
    Left = 53
    Top = 7
    object qryItemPedIDPEDIDOITEM: TIntegerField
      FieldName = 'IDPEDIDOITEM'
      Origin = 'IDPEDIDOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemPedIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
    end
    object qryItemPedIDPROD: TIntegerField
      FieldName = 'IDPROD'
      Origin = 'IDPROD'
    end
    object qryItemPedQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemPedVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
      Origin = 'VLRUNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemPedVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      Origin = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemPedVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
      Origin = 'VLRTOTALITEM'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemPedOBSITEM: TStringField
      FieldName = 'OBSITEM'
      Origin = 'OBSITEM'
      Size = 1000
    end
    object qryItemPedDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
      Origin = 'DATAVALIDADE'
    end
    object qryItemPedSALDOQTDE: TFloatField
      FieldName = 'SALDOQTDE'
      Origin = 'SALDOQTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qryItemPedSTATUSITEM: TStringField
      FieldName = 'STATUSITEM'
      Origin = 'STATUSITEM'
    end
    object qryItemPedNOMEPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPROD'
      Origin = 'NOMEPROD'
      ProviderFlags = []
      Size = 300
    end
    object qryItemPedUNPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNPROD'
      Origin = 'UNPROD'
      ProviderFlags = []
      Size = 5
    end
    object qryItemPedREFPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REFPROD'
      Origin = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryItemPedMARCAPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCAPROD'
      Origin = 'MARCAPROD'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object uHis_Pedido: TUCHist_DataSet
    DataSet = qryPedido
    ControlHistorico = FPrinc.uHistorico
    Left = 15
    Top = 138
  end
  object uHis_ItemPed: TUCHist_DataSet
    DataSet = qryItemPed
    ControlHistorico = FPrinc.uHistorico
    Left = 53
    Top = 138
  end
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 376
    Top = 5
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 376
    Top = 49
  end
  object qryAux2: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 416
    Top = 5
  end
  object dsAux2: TDataSource
    DataSet = qryAux2
    Left = 416
    Top = 49
  end
  object UpdtPedidoFin: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO PEDIDOFINANCEIRO'
      '(IDPEDIDOFINANCEIRO, IDPEDIDO, VENCIMENTO, VALOR, '
      '  DOCUMENTO)'
      
        'VALUES (:NEW_IDPEDIDOFINANCEIRO, :NEW_IDPEDIDO, :NEW_VENCIMENTO,' +
        ' :NEW_VALOR, '
      '  :NEW_DOCUMENTO)'
      'RETURNING IDPEDIDOFINANCEIRO, IDPEDIDO, VENCIMENTO, VALOR')
    ModifySQL.Strings = (
      'UPDATE PEDIDOFINANCEIRO'
      
        'SET IDPEDIDOFINANCEIRO = :NEW_IDPEDIDOFINANCEIRO, IDPEDIDO = :NE' +
        'W_IDPEDIDO, '
      
        '  VENCIMENTO = :NEW_VENCIMENTO, VALOR = :NEW_VALOR, DOCUMENTO = ' +
        ':NEW_DOCUMENTO'
      'WHERE IDPEDIDOFINANCEIRO = :OLD_IDPEDIDOFINANCEIRO'
      'RETURNING IDPEDIDOFINANCEIRO, IDPEDIDO, VENCIMENTO, VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM PEDIDOFINANCEIRO'
      'WHERE IDPEDIDOFINANCEIRO = :OLD_IDPEDIDOFINANCEIRO')
    FetchRowSQL.Strings = (
      
        'SELECT IDPEDIDOFINANCEIRO, IDPEDIDO, VENCIMENTO, VALOR, DOCUMENT' +
        'O'
      'FROM PEDIDOFINANCEIRO'
      'WHERE IDPEDIDOFINANCEIRO = :IDPEDIDOFINANCEIRO')
    Left = 87
    Top = 51
  end
  object dsPedidoFin: TDataSource
    DataSet = qryPedidoFin
    Left = 87
    Top = 94
  end
  object qryPedidoFin: TFDQuery
    AfterInsert = qryPedidoFinAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtPedidoFin
    SQL.Strings = (
      'select * from PEDIDOFINANCEIRO')
    Left = 87
    Top = 7
  end
  object uHis_PedidoFin: TUCHist_DataSet
    DataSet = qryPedidoFin
    ControlHistorico = FPrinc.uHistorico
    Left = 87
    Top = 138
  end
end
