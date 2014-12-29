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
    Left = 232
    Top = 8
  end
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 304
    Top = 9
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 304
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
    Left = 232
    Top = 56
  end
  object dsConf: TDataSource
    DataSet = qryConf
    Left = 231
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
    Left = 12
    Top = 6
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
      EditMask = '99.999-999;0;_'
      Size = 15
    end
    object qryClieCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
    end
    object qryClieRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      EditMask = '999.999.999.999;0;_'
    end
    object qryClieIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryClieCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '999.999.999-99;0;_'
    end
    object qryClieFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      EditMask = '(99) 9999-9999;0;_'
    end
    object qryClieCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '(99) 9999-9999;0;_'
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
      EditMask = '99/99/9999;1;_'
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
    Left = 12
    Top = 54
  end
  object dsClie: TDataSource
    DataSet = qryClie
    Left = 12
    Top = 102
  end
  object qryCidade: TFDQuery
    AfterInsert = qryCidadeAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtCidade
    SQL.Strings = (
      'select * from CODIBGE')
    Left = 60
    Top = 6
  end
  object UpdtCidade: TFDUpdateSQL
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
    Left = 60
    Top = 54
  end
  object dsCidade: TDataSource
    DataSet = qryCidade
    Left = 60
    Top = 102
  end
  object qryGenerico: TFDQuery
    Active = True
    AfterInsert = qryGenericoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtGenerico
    SQL.Strings = (
      'select * from GENERICA')
    Left = 104
    Top = 6
  end
  object UpdtGenerico: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO GENERICA'
      '(IDGENERICA, TABELA, DESCRICAO, VALOR, OBS)'
      
        'VALUES (:NEW_IDGENERICA, :NEW_TABELA, :NEW_DESCRICAO, :NEW_VALOR' +
        ', :NEW_OBS)')
    ModifySQL.Strings = (
      'UPDATE GENERICA'
      
        'SET IDGENERICA = :NEW_IDGENERICA, TABELA = :NEW_TABELA, DESCRICA' +
        'O = :NEW_DESCRICAO, '
      '  VALOR = :NEW_VALOR, OBS = :NEW_OBS'
      'WHERE IDGENERICA = :OLD_IDGENERICA')
    DeleteSQL.Strings = (
      'DELETE FROM GENERICA'
      'WHERE IDGENERICA = :OLD_IDGENERICA')
    FetchRowSQL.Strings = (
      'SELECT IDGENERICA, TABELA, DESCRICAO, VALOR, OBS'
      'FROM GENERICA'
      'WHERE IDGENERICA = :IDGENERICA')
    Left = 104
    Top = 54
  end
  object dsGenerico: TDataSource
    DataSet = qryGenerico
    Left = 106
    Top = 102
  end
end
