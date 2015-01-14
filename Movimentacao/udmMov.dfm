object dmMov: TdmMov
  OldCreateOrder = False
  Height = 357
  Width = 460
  object qryItemPed: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtItemPed
    SQL.Strings = (
      'select A.*,'
      'B.NOMEPROD,'
      'B.UNPROD,'
      'B.REFPROD'
      'from PEDIDOITEM A'
      'left join PRODUTO B on A.IDPROD = B.IDPROD')
    Left = 66
    Top = 14
  end
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
    Left = 66
    Top = 58
  end
  object dsItemPed: TDataSource
    DataSet = qryItemPed
    Left = 66
    Top = 102
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
      'INSERT INTO PEDIDO'
      '(IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, '
      '  IDCPAGTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, '
      '  TIPOPEDIDO, STATUS, MOTIVOVAN, OBS, '
      '  QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, '
      '  TOTALPEDIDO)'
      
        'VALUES (:NEW_IDPEDIDO, :NEW_TIPOMOV, :NEW_IDCLIE, :NEW_IDVENDEDO' +
        'R, :NEW_IDTRANSP, '
      
        '  :NEW_IDCPAGTO, :NEW_DATAPEDIDO, :NEW_DATAVALIDADE, :NEW_DATAEN' +
        'TREGA, '
      '  :NEW_TIPOPEDIDO, :NEW_STATUS, :NEW_MOTIVOVAN, :NEW_OBS, '
      
        '  :NEW_QTDEITENS, :NEW_TOTALITENS, :NEW_TOTALDESC, :NEW_TOTALFRE' +
        'TE, '
      '  :NEW_TOTALPEDIDO)'
      
        'RETURNING IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPA' +
        'GTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, ' +
        'MOTIVOVAN, OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TO' +
        'TALPEDIDO')
    ModifySQL.Strings = (
      'UPDATE PEDIDO'
      
        'SET IDPEDIDO = :NEW_IDPEDIDO, TIPOMOV = :NEW_TIPOMOV, IDCLIE = :' +
        'NEW_IDCLIE, '
      '  IDVENDEDOR = :NEW_IDVENDEDOR, IDTRANSP = :NEW_IDTRANSP, '
      '  IDCPAGTO = :NEW_IDCPAGTO, DATAPEDIDO = :NEW_DATAPEDIDO, '
      
        '  DATAVALIDADE = :NEW_DATAVALIDADE, DATAENTREGA = :NEW_DATAENTRE' +
        'GA, '
      
        '  TIPOPEDIDO = :NEW_TIPOPEDIDO, STATUS = :NEW_STATUS, MOTIVOVAN ' +
        '= :NEW_MOTIVOVAN, '
      
        '  OBS = :NEW_OBS, QTDEITENS = :NEW_QTDEITENS, TOTALITENS = :NEW_' +
        'TOTALITENS, '
      '  TOTALDESC = :NEW_TOTALDESC, TOTALFRETE = :NEW_TOTALFRETE, '
      '  TOTALPEDIDO = :NEW_TOTALPEDIDO'
      'WHERE IDPEDIDO = :OLD_IDPEDIDO'
      
        'RETURNING IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPA' +
        'GTO, DATAPEDIDO, DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, ' +
        'MOTIVOVAN, OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TO' +
        'TALPEDIDO')
    DeleteSQL.Strings = (
      'DELETE FROM PEDIDO'
      'WHERE IDPEDIDO = :OLD_IDPEDIDO')
    FetchRowSQL.Strings = (
      
        'SELECT IDPEDIDO, TIPOMOV, IDCLIE, IDVENDEDOR, IDTRANSP, IDCPAGTO' +
        ', DATAPEDIDO, '
      '  DATAVALIDADE, DATAENTREGA, TIPOPEDIDO, STATUS, MOTIVOVAN, '
      '  OBS, QTDEITENS, TOTALITENS, TOTALDESC, TOTALFRETE, TOTALPEDIDO'
      'FROM PEDIDO'
      'WHERE IDPEDIDO = :IDPEDIDO')
    Left = 26
    Top = 58
  end
  object dsPedido: TDataSource
    DataSet = qryPedido
    Left = 26
    Top = 102
  end
end
