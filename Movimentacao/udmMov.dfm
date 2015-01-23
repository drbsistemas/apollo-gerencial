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
    Left = 90
    Top = 58
  end
  object dsItemPed: TDataSource
    DataSet = qryItemPed
    Left = 90
    Top = 102
  end
  object qryPedido: TFDQuery
    AfterInsert = qryPedidoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    SQL.Strings = (
      'select A.*,'
      'C.ENDERECO,'
      'C.NUMERO,'
      'C.BAIRRO,'
      'C.CEP,'
      'E.DESCRICAO'
      'From PEDIDO A'
      'left join CLIENTE B on A.IDCLIE = B.IDCLIE and B.tipoclie='#39'CLI'#39
      
        'left join CLIENTE C on A.IDVENDEDOR = C.IDCLIE and C.TIPOCLIE='#39'V' +
        'END'#39
      
        'left join CLIENTE D on A.idtransp = D.IDCLIE and D.TIPOCLIE='#39'TRA' +
        'N'#39
      'left join CPAGTO E on A.IDCPAGTO = E.IDCPAGTO')
    Left = 26
    Top = 14
  end
  object UpdtPedido: TFDUpdateSQL
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
    Left = 26
    Top = 58
  end
  object dsPedido: TDataSource
    DataSet = qryPedido
    Left = 26
    Top = 102
  end
  object qryItemPed: TFDQuery
    AfterInsert = qryItemPedAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    UpdateObject = UpdtPedido
    SQL.Strings = (
      'select A.*,'
      'B.NOMEPROD,'
      'B.UNPROD,'
      'B.REFPROD'
      'from PEDIDOITEM A'
      'left join PRODUTO B on A.IDPROD = B.IDPROD')
    Left = 92
    Top = 16
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
  end
end
