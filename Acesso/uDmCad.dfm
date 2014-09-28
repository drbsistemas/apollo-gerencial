object dmCad: TdmCad
  OldCreateOrder = False
  Height = 186
  Width = 341
  object qryConf: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtConf
    SQL.Strings = (
      'select * from CONF')
    Left = 64
    Top = 8
  end
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 16
    Top = 9
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 16
    Top = 56
  end
  object UpdtConf: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CONF'
      '(KEYGEN, RAZAOEMP, FANTASIAEMP, CNPJEMP, '
      '  IEEMP, ENDERECOEMP, NUMEROEMP, COMPLEMENTOEMP, '
      '  BAIRROEMP, IIEMUNEMP, CIDADEEMP, UFEMP, '
      '  CEPEMP, CONTATOEMP, FONEEMP, EMAILEMP, '
      '  SITEEMP, DATABACKUP, VALIDADELIC, QTDELIC, '
      '  PROGRAMABACKUP, LOGOEMP, PASTASERVIDOR, HOSTEMAIL, '
      '  USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLEMAIL, '
      '  DATAULTIMOACESSO)'
      
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
        'MAIL, '
      '  :NEW_DATAULTIMOACESSO)'
      
        'RETURNING IDCONF, KEYGEN, RAZAOEMP, FANTASIAEMP, CNPJEMP, IEEMP,' +
        ' ENDERECOEMP, NUMEROEMP, COMPLEMENTOEMP, BAIRROEMP, IIEMUNEMP, C' +
        'IDADEEMP, UFEMP, CEPEMP, CONTATOEMP, FONEEMP, EMAILEMP, SITEEMP,' +
        ' DATABACKUP, VALIDADELIC, QTDELIC, PROGRAMABACKUP, LOGOEMP, PAST' +
        'ASERVIDOR, HOSTEMAIL, USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLE' +
        'MAIL, DATAULTIMOACESSO')
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
      
        '  SSLEMAIL = :NEW_SSLEMAIL, DATAULTIMOACESSO = :NEW_DATAULTIMOAC' +
        'ESSO'
      'WHERE IDCONF = :OLD_IDCONF'
      
        'RETURNING IDCONF, KEYGEN, RAZAOEMP, FANTASIAEMP, CNPJEMP, IEEMP,' +
        ' ENDERECOEMP, NUMEROEMP, COMPLEMENTOEMP, BAIRROEMP, IIEMUNEMP, C' +
        'IDADEEMP, UFEMP, CEPEMP, CONTATOEMP, FONEEMP, EMAILEMP, SITEEMP,' +
        ' DATABACKUP, VALIDADELIC, QTDELIC, PROGRAMABACKUP, LOGOEMP, PAST' +
        'ASERVIDOR, HOSTEMAIL, USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLE' +
        'MAIL, DATAULTIMOACESSO')
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
      '  HOSTEMAIL, USUARIOEMAIL, SENHAEMAIL, PORTAEMAIL, SSLEMAIL, '
      '  DATAULTIMOACESSO'
      'FROM CONF'
      'WHERE IDCONF = :IDCONF')
    Left = 64
    Top = 56
  end
  object dsConf: TDataSource
    DataSet = qryAux
    Left = 63
    Top = 104
  end
  object qryClie: TFDQuery
    AfterInsert = qryClieAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtClie
    SQL.Strings = (
      'select * from CLIENTE')
    Left = 112
    Top = 8
    object qryClieIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      Origin = 'IDCLIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClieRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 200
    end
    object qryClieFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object qryClieENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object qryClieNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryClieCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 150
    end
    object qryClieUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryClieBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 150
    end
    object qryClieCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 15
    end
    object qryClieCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryClieRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object qryClieIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryClieCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object qryClieFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object qryClieCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object qryClieEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object qryClieOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 10000
    end
    object qryClieCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryClieDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qryClieATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryClieDATANASCE: TSQLTimeStampField
      FieldName = 'DATANASCE'
      Origin = 'DATANASCE'
    end
    object qryClieTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object qryClieTIPOCLIE: TStringField
      FieldName = 'TIPOCLIE'
      Origin = 'TIPOCLIE'
      Size = 3
    end
  end
  object UpdtClie: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CLIENTE'
      '(IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, '
      '  CIDADE, UF, BAIRRO, CEP, CNPJ, '
      '  RG, IE, CPF, FONE, CELULAR, EMAIL, '
      '  OBS, COMPLEMENTO, DATACAD, ATIVO, DATANASCE, '
      '  TIPOPESSOA, TIPOCLIE)'
      
        'VALUES (:NEW_IDCLIE, :NEW_RAZAO, :NEW_FANTASIA, :NEW_ENDERECO, :' +
        'NEW_NUMERO, '
      '  :NEW_CIDADE, :NEW_UF, :NEW_BAIRRO, :NEW_CEP, :NEW_CNPJ, '
      
        '  :NEW_RG, :NEW_IE, :NEW_CPF, :NEW_FONE, :NEW_CELULAR, :NEW_EMAI' +
        'L, '
      
        '  :NEW_OBS, :NEW_COMPLEMENTO, :NEW_DATACAD, :NEW_ATIVO, :NEW_DAT' +
        'ANASCE, '
      '  :NEW_TIPOPESSOA, :NEW_TIPOCLIE)')
    ModifySQL.Strings = (
      'UPDATE CLIENTE'
      
        'SET IDCLIE = :NEW_IDCLIE, RAZAO = :NEW_RAZAO, FANTASIA = :NEW_FA' +
        'NTASIA, '
      
        '  ENDERECO = :NEW_ENDERECO, NUMERO = :NEW_NUMERO, CIDADE = :NEW_' +
        'CIDADE, '
      
        '  UF = :NEW_UF, BAIRRO = :NEW_BAIRRO, CEP = :NEW_CEP, CNPJ = :NE' +
        'W_CNPJ, '
      '  RG = :NEW_RG, IE = :NEW_IE, CPF = :NEW_CPF, FONE = :NEW_FONE, '
      '  CELULAR = :NEW_CELULAR, EMAIL = :NEW_EMAIL, OBS = :NEW_OBS, '
      '  COMPLEMENTO = :NEW_COMPLEMENTO, DATACAD = :NEW_DATACAD, '
      
        '  ATIVO = :NEW_ATIVO, DATANASCE = :NEW_DATANASCE, TIPOPESSOA = :' +
        'NEW_TIPOPESSOA, '
      '  TIPOCLIE = :NEW_TIPOCLIE'
      'WHERE IDCLIE = :OLD_IDCLIE')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTE'
      'WHERE IDCLIE = :OLD_IDCLIE')
    FetchRowSQL.Strings = (
      
        'SELECT IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, CIDADE, UF, BA' +
        'IRRO, '
      
        '  CEP, CNPJ, RG, IE, CPF, FONE, CELULAR, EMAIL, OBS, COMPLEMENTO' +
        ', '
      '  DATACAD, ATIVO, DATANASCE, TIPOPESSOA, TIPOCLIE'
      'FROM CLIENTE'
      'WHERE IDCLIE = :IDCLIE')
    Left = 112
    Top = 56
  end
  object dsClie: TDataSource
    DataSet = qryClie
    Left = 112
    Top = 104
  end
end
