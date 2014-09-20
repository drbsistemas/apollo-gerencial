object dmCad: TdmCad
  OldCreateOrder = False
  Height = 186
  Width = 341
  object cdsConf: TFDQuery
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateObject = updateConf
    SQL.Strings = (
      'Select * from CONF')
    Left = 24
    Top = 16
  end
  object updateConf: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CONF'
      '(KEYGEN, RAZAOEMP, FANTASIAEMP, CNPJEMP, '
      '  IEEMP, ENDERECOEMP, NUMEROEMP, COMPLEMENTOEMP, '
      '  BAIRROEMP, IIEMUNEMP, CIDADEEMP, UFEMP, '
      '  CEPEMP, CONTATOEMP, FONEEMP, EMAILEMP, '
      '  SITEEMP, DATABACKUP, VALIDADELIC, QTDELIC, '
      '  PROGRAMABACKUP, LOGOEMP, PASTASERVIDOR, HOSTEMAIL, '
      '  USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLEMAIL)'
      
        'VALUES (:NEW_KEYGEN, :NEW_RAZAOEMP, :NEW_FANTASIAEMP, :NEW_CNPJE' +
        'MP, '
      
        '  :NEW_IEEMP, :NEW_ENDERECOEMP, :NEW_NUMEROEMP, :NEW_COMPLEMENTO' +
        'EMP, '
      '  :NEW_BAIRROEMP, :NEW_IIEMUNEMP, :NEW_CIDADEEMP, :NEW_UFEMP, '
      '  :NEW_CEPEMP, :NEW_CONTATOEMP, :NEW_FONEEMP, :NEW_EMAILEMP, '
      
        '  :NEW_SITEEMP, :NEW_DATABACKUP, :NEW_VALIDADELIC, :NEW_QTDELIC,' +
        ' '
      
        '  :NEW_PROGRAMABACKUP, :NEW_LOGOEMP, :NEW_PASTASERVIDOR, :NEW_HO' +
        'STEMAIL, '
      
        '  :NEW_USUARIOEMAIL, :NEW_SENHAEMAIL, :NEW_PORTAEMAIL, :NEW_SSLE' +
        'MAIL)')
    ModifySQL.Strings = (
      'UPDATE CONF'
      
        'SET KEYGEN = :NEW_KEYGEN, RAZAOEMP = :NEW_RAZAOEMP, FANTASIAEMP ' +
        '= :NEW_FANTASIAEMP, '
      
        '  CNPJEMP = :NEW_CNPJEMP, IEEMP = :NEW_IEEMP, ENDERECOEMP = :NEW' +
        '_ENDERECOEMP, '
      
        '  NUMEROEMP = :NEW_NUMEROEMP, COMPLEMENTOEMP = :NEW_COMPLEMENTOE' +
        'MP, '
      '  BAIRROEMP = :NEW_BAIRROEMP, IIEMUNEMP = :NEW_IIEMUNEMP, '
      
        '  CIDADEEMP = :NEW_CIDADEEMP, UFEMP = :NEW_UFEMP, CEPEMP = :NEW_' +
        'CEPEMP, '
      
        '  CONTATOEMP = :NEW_CONTATOEMP, FONEEMP = :NEW_FONEEMP, EMAILEMP' +
        ' = :NEW_EMAILEMP, '
      
        '  SITEEMP = :NEW_SITEEMP, DATABACKUP = :NEW_DATABACKUP, VALIDADE' +
        'LIC = :NEW_VALIDADELIC, '
      '  QTDELIC = :NEW_QTDELIC, PROGRAMABACKUP = :NEW_PROGRAMABACKUP, '
      '  LOGOEMP = :NEW_LOGOEMP, PASTASERVIDOR = :NEW_PASTASERVIDOR, '
      '  HOSTEMAIL = :NEW_HOSTEMAIL, USUARIOEMAIL = :NEW_USUARIOEMAIL, '
      '  SENHAEMAIL = :NEW_SENHAEMAIL, PORTAEMAIL = :NEW_PORTAEMAIL, '
      '  SSLEMAIL = :NEW_SSLEMAIL'
      'WHERE IDCONF = :OLD_IDCONF')
    DeleteSQL.Strings = (
      'DELETE FROM CONF'
      'WHERE IDCONF = :OLD_IDCONF')
    FetchRowSQL.Strings = (
      
        'SELECT IDCONF, KEYGEN, RAZAOEMP, FANTASIAEMP, CNPJEMP, IEEMP, EN' +
        'DERECOEMP, '
      '  NUMEROEMP, COMPLEMENTOEMP, BAIRROEMP, IIEMUNEMP, CIDADEEMP, '
      
        '  UFEMP, CEPEMP, CONTATOEMP, FONEEMP, EMAILEMP, SITEEMP, DATABAC' +
        'KUP, '
      '  VALIDADELIC, QTDELIC, PROGRAMABACKUP, LOGOEMP, PASTASERVIDOR, '
      '  HOSTEMAIL, USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLEMAIL'
      'FROM CONF'
      'WHERE IDCONF = :IDCONF')
    Left = 80
    Top = 16
  end
  object dsConf: TDataSource
    DataSet = cdsConf
    Left = 136
    Top = 16
  end
end
