object dmCad: TdmCad
  OldCreateOrder = False
  Height = 355
  Width = 395
  object qryConf: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtConf
    SQL.Strings = (
      'select * from CONF')
    Left = 258
    Top = 5
  end
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 304
    Top = 5
  end
  object dsAux: TDataSource
    DataSet = qryAux
    Left = 304
    Top = 49
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
    Left = 258
    Top = 49
  end
  object dsConf: TDataSource
    DataSet = qryConf
    Left = 257
    Top = 94
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
    Top = 5
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
    Top = 49
  end
  object dsClie: TDataSource
    DataSet = qryClie
    Left = 12
    Top = 94
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
    Left = 58
    Top = 5
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
    Left = 58
    Top = 49
  end
  object dsCidade: TDataSource
    DataSet = qryCidade
    Left = 58
    Top = 94
  end
  object qryGenerico: TFDQuery
    AfterInsert = qryGenericoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtGenerico
    SQL.Strings = (
      'select * from GENERICA')
    Left = 102
    Top = 5
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
    Left = 102
    Top = 49
  end
  object dsGenerico: TDataSource
    DataSet = qryGenerico
    Left = 102
    Top = 94
  end
  object qryProd: TFDQuery
    AfterInsert = qryProdAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtProd
    SQL.Strings = (
      'SELECT A.*, '
      'B.DESCRICAO GRUPO, '
      'C.DESCRICAO SUBGRUPO, '
      'D.RAZAO,'
      'E.DESCRICAO NOMELOCAL'
      'FROM PRODUTO A'
      
        'LEFT JOIN GENERICA B ON A.idgrupo=B.IDGENERICA AND  b.TABELA='#39'GR' +
        'UPOS'#39
      
        'LEFT JOIN GENERICA C ON A.idSUBgrupo=B.IDGENERICA AND C.TABELA='#39 +
        'SUBGRUPO'#39
      
        'LEFT JOIN GENERICA E ON A.idLocal=E.IDGENERICA AND C.TABELA='#39'LOC' +
        'ALIZACAO'#39
      'LEFT JOIN CLIENTE D ON A.IDFORNEC=D.IDCLIE')
    Left = 142
    Top = 5
  end
  object UpdtProd: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO PRODUTO'
      '(IDPROD, NOMEPROD, REFPROD, MARCAPROD, IDGRUPO, '
      '  IDFORNEC, IDSUBGRUPO, ESTOQUEPEDIDO, ESTOQUEORCAMENTO, '
      '  ESTOQUEDISP, ESTOQUETOTAL, ESTOQUEMIN, ESTOQUEMAX, '
      '  DTCADASTRO, DTVALIDADE, PESOBRUTO, PESOLIQ, '
      '  ATIVOPROD, UNPROD, FOTOPROD, NCMPROD, '
      '  PRECOCOMRPA, CUSTOCOMPRA, CUSTOTOTAL, MARGEMLUCRO, '
      '  PRECOVENDA, PERCCOMISSAO, DTATUALIZADO, CODBAR, '
      '  OBS, IDLOCAL)'
      
        'VALUES (:NEW_IDPROD, :NEW_NOMEPROD, :NEW_REFPROD, :NEW_MARCAPROD' +
        ', :NEW_IDGRUPO, '
      
        '  :NEW_IDFORNEC, :NEW_IDSUBGRUPO, :NEW_ESTOQUEPEDIDO, :NEW_ESTOQ' +
        'UEORCAMENTO, '
      
        '  :NEW_ESTOQUEDISP, :NEW_ESTOQUETOTAL, :NEW_ESTOQUEMIN, :NEW_EST' +
        'OQUEMAX, '
      
        '  :NEW_DTCADASTRO, :NEW_DTVALIDADE, :NEW_PESOBRUTO, :NEW_PESOLIQ' +
        ', '
      '  :NEW_ATIVOPROD, :NEW_UNPROD, :NEW_FOTOPROD, :NEW_NCMPROD, '
      
        '  :NEW_PRECOCOMRPA, :NEW_CUSTOCOMPRA, :NEW_CUSTOTOTAL, :NEW_MARG' +
        'EMLUCRO, '
      
        '  :NEW_PRECOVENDA, :NEW_PERCCOMISSAO, :NEW_DTATUALIZADO, :NEW_CO' +
        'DBAR, '
      '  :NEW_OBS, :NEW_IDLOCAL)'
      
        'RETURNING IDPROD, NOMEPROD, REFPROD, MARCAPROD, IDGRUPO, IDFORNE' +
        'C, IDSUBGRUPO, ESTOQUEPEDIDO, ESTOQUEORCAMENTO, ESTOQUEDISP, EST' +
        'OQUETOTAL, ESTOQUEMIN, ESTOQUEMAX, DTCADASTRO, DTVALIDADE, PESOB' +
        'RUTO, PESOLIQ, ATIVOPROD, UNPROD, FOTOPROD, NCMPROD, PRECOCOMRPA' +
        ', CUSTOCOMPRA, CUSTOTOTAL, MARGEMLUCRO, PRECOVENDA, PERCCOMISSAO' +
        ', DTATUALIZADO, CODBAR, OBS, IDLOCAL')
    ModifySQL.Strings = (
      'UPDATE PRODUTO'
      
        'SET IDPROD = :NEW_IDPROD, NOMEPROD = :NEW_NOMEPROD, REFPROD = :N' +
        'EW_REFPROD, '
      
        '  MARCAPROD = :NEW_MARCAPROD, IDGRUPO = :NEW_IDGRUPO, IDFORNEC =' +
        ' :NEW_IDFORNEC, '
      
        '  IDSUBGRUPO = :NEW_IDSUBGRUPO, ESTOQUEPEDIDO = :NEW_ESTOQUEPEDI' +
        'DO, '
      
        '  ESTOQUEORCAMENTO = :NEW_ESTOQUEORCAMENTO, ESTOQUEDISP = :NEW_E' +
        'STOQUEDISP, '
      
        '  ESTOQUETOTAL = :NEW_ESTOQUETOTAL, ESTOQUEMIN = :NEW_ESTOQUEMIN' +
        ', '
      '  ESTOQUEMAX = :NEW_ESTOQUEMAX, DTCADASTRO = :NEW_DTCADASTRO, '
      '  DTVALIDADE = :NEW_DTVALIDADE, PESOBRUTO = :NEW_PESOBRUTO, '
      
        '  PESOLIQ = :NEW_PESOLIQ, ATIVOPROD = :NEW_ATIVOPROD, UNPROD = :' +
        'NEW_UNPROD, '
      
        '  FOTOPROD = :NEW_FOTOPROD, NCMPROD = :NEW_NCMPROD, PRECOCOMRPA ' +
        '= :NEW_PRECOCOMRPA, '
      '  CUSTOCOMPRA = :NEW_CUSTOCOMPRA, CUSTOTOTAL = :NEW_CUSTOTOTAL, '
      '  MARGEMLUCRO = :NEW_MARGEMLUCRO, PRECOVENDA = :NEW_PRECOVENDA, '
      
        '  PERCCOMISSAO = :NEW_PERCCOMISSAO, DTATUALIZADO = :NEW_DTATUALI' +
        'ZADO, '
      '  CODBAR = :NEW_CODBAR, OBS = :NEW_OBS, IDLOCAL = :NEW_IDLOCAL'
      'WHERE IDPROD = :OLD_IDPROD'
      
        'RETURNING IDPROD, NOMEPROD, REFPROD, MARCAPROD, IDGRUPO, IDFORNE' +
        'C, IDSUBGRUPO, ESTOQUEPEDIDO, ESTOQUEORCAMENTO, ESTOQUEDISP, EST' +
        'OQUETOTAL, ESTOQUEMIN, ESTOQUEMAX, DTCADASTRO, DTVALIDADE, PESOB' +
        'RUTO, PESOLIQ, ATIVOPROD, UNPROD, FOTOPROD, NCMPROD, PRECOCOMRPA' +
        ', CUSTOCOMPRA, CUSTOTOTAL, MARGEMLUCRO, PRECOVENDA, PERCCOMISSAO' +
        ', DTATUALIZADO, CODBAR, OBS, IDLOCAL')
    DeleteSQL.Strings = (
      'DELETE FROM PRODUTO'
      'WHERE IDPROD = :OLD_IDPROD')
    FetchRowSQL.Strings = (
      
        'SELECT IDPROD, NOMEPROD, REFPROD, MARCAPROD, IDGRUPO, IDFORNEC, ' +
        'IDSUBGRUPO, '
      '  ESTOQUEPEDIDO, ESTOQUEORCAMENTO, ESTOQUEDISP, ESTOQUETOTAL, '
      '  ESTOQUEMIN, ESTOQUEMAX, DTCADASTRO, DTVALIDADE, PESOBRUTO, '
      '  PESOLIQ, ATIVOPROD, UNPROD, FOTOPROD, NCMPROD, PRECOCOMRPA, '
      
        '  CUSTOCOMPRA, CUSTOTOTAL, MARGEMLUCRO, PRECOVENDA, PERCCOMISSAO' +
        ', '
      '  DTATUALIZADO, CODBAR, OBS, IDLOCAL'
      'FROM PRODUTO'
      'WHERE IDPROD = :IDPROD')
    Left = 142
    Top = 49
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 142
    Top = 94
  end
  object qryEstoque: TFDQuery
    AfterInsert = qryEstoqueAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtEstoque
    SQL.Strings = (
      
        'select A.* , B.NOMEPROD, B.MARCAPROD, B.ESTOQUEDISP, B.ESTOQUETO' +
        'TAL, B.UNPROD'
      'from Estoque A'
      'left join Produto B on A.IDPROD = B.IDPROD')
    Left = 182
    Top = 5
  end
  object UpdtEstoque: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO ESTOQUE'
      '(IDESTOQUE, IDPROD, ESTOQUEANTES, ENTRADA, '
      '  SAIDA, SALDO, CUSTO, ORIGEM, DOCUMENTO, '
      '  "DATA", DESCRICAO, USUARIO, IDCLIE)'
      
        'VALUES (:NEW_IDESTOQUE, :NEW_IDPROD, :NEW_ESTOQUEANTES, :NEW_ENT' +
        'RADA, '
      
        '  :NEW_SAIDA, :NEW_SALDO, :NEW_CUSTO, :NEW_ORIGEM, :NEW_DOCUMENT' +
        'O, '
      '  :NEW_DATA, :NEW_DESCRICAO, :NEW_USUARIO, :NEW_IDCLIE)'
      
        'RETURNING IDESTOQUE, IDPROD, ESTOQUEANTES, ENTRADA, SAIDA, SALDO' +
        ', CUSTO, ORIGEM, DOCUMENTO, "DATA", DESCRICAO, USUARIO, IDCLIE')
    ModifySQL.Strings = (
      'UPDATE ESTOQUE'
      
        'SET IDESTOQUE = :NEW_IDESTOQUE, IDPROD = :NEW_IDPROD, ESTOQUEANT' +
        'ES = :NEW_ESTOQUEANTES, '
      
        '  ENTRADA = :NEW_ENTRADA, SAIDA = :NEW_SAIDA, SALDO = :NEW_SALDO' +
        ', '
      
        '  CUSTO = :NEW_CUSTO, ORIGEM = :NEW_ORIGEM, DOCUMENTO = :NEW_DOC' +
        'UMENTO, '
      
        '  "DATA" = :NEW_DATA, DESCRICAO = :NEW_DESCRICAO, USUARIO = :NEW' +
        '_USUARIO, '
      '  IDCLIE = :NEW_IDCLIE'
      'WHERE IDESTOQUE = :OLD_IDESTOQUE'
      
        'RETURNING IDESTOQUE, IDPROD, ESTOQUEANTES, ENTRADA, SAIDA, SALDO' +
        ', CUSTO, ORIGEM, DOCUMENTO, "DATA", DESCRICAO, USUARIO, IDCLIE')
    DeleteSQL.Strings = (
      'DELETE FROM ESTOQUE'
      'WHERE IDESTOQUE = :OLD_IDESTOQUE')
    FetchRowSQL.Strings = (
      
        'SELECT IDESTOQUE, IDPROD, ESTOQUEANTES, ENTRADA, SAIDA, SALDO, C' +
        'USTO, '
      '  ORIGEM, DOCUMENTO, "DATA" AS "DATA", DESCRICAO, USUARIO, '
      '  IDCLIE'
      'FROM ESTOQUE'
      'WHERE IDESTOQUE = :IDESTOQUE')
    Left = 182
    Top = 49
  end
  object dsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 182
    Top = 94
  end
  object qryAnimais: TFDQuery
    AfterInsert = qryAnimaisAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtAnimais
    SQL.Strings = (
      'SELECT A.*, '
      'B.DESCRICAO RACA,'
      'C.DESCRICAO ESPECIE,'
      'D.RAZAO'
      'FROM ANIMAIS A'
      
        'LEFT JOIN GENERICA B ON A.IDRACA=B.IDGENERICA AND  b.TABELA='#39'RAC' +
        'A'#39
      
        'LEFT JOIN GENERICA C ON A.IDESPECIE=B.IDGENERICA AND C.TABELA='#39'E' +
        'SPECIE'#39
      'LEFT JOIN CLIENTE D ON A.IDCLIE=D.IDCLIE')
    Left = 11
    Top = 152
  end
  object UpdtAnimais: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO ANIMAIS'
      '(IDANIMAL, IDCLIE, DATACAD, DATAATUALIZACAO, '
      '  NOME, COR, SEXO, DATANASCE, RGA, '
      '  NPEDIGREE, IDESPECIE, IDRACA, ATIVO, '
      '  USUARIO, HISTORICO, FOTO, PESOATUAL)'
      
        'VALUES (:NEW_IDANIMAL, :NEW_IDCLIE, :NEW_DATACAD, :NEW_DATAATUAL' +
        'IZACAO, '
      '  :NEW_NOME, :NEW_COR, :NEW_SEXO, :NEW_DATANASCE, :NEW_RGA, '
      '  :NEW_NPEDIGREE, :NEW_IDESPECIE, :NEW_IDRACA, :NEW_ATIVO, '
      '  :NEW_USUARIO, :NEW_HISTORICO, :NEW_FOTO, :NEW_PESOATUAL)'
      
        'RETURNING IDANIMAL, IDCLIE, DATACAD, DATAATUALIZACAO, NOME, COR,' +
        ' SEXO, DATANASCE, RGA, NPEDIGREE, IDESPECIE, IDRACA, ATIVO, USUA' +
        'RIO, HISTORICO, FOTO, PESOATUAL')
    ModifySQL.Strings = (
      'UPDATE ANIMAIS'
      
        'SET IDANIMAL = :NEW_IDANIMAL, IDCLIE = :NEW_IDCLIE, DATACAD = :N' +
        'EW_DATACAD, '
      '  DATAATUALIZACAO = :NEW_DATAATUALIZACAO, NOME = :NEW_NOME, '
      '  COR = :NEW_COR, SEXO = :NEW_SEXO, DATANASCE = :NEW_DATANASCE, '
      
        '  RGA = :NEW_RGA, NPEDIGREE = :NEW_NPEDIGREE, IDESPECIE = :NEW_I' +
        'DESPECIE, '
      
        '  IDRACA = :NEW_IDRACA, ATIVO = :NEW_ATIVO, USUARIO = :NEW_USUAR' +
        'IO, '
      
        '  HISTORICO = :NEW_HISTORICO, FOTO = :NEW_FOTO, PESOATUAL = :NEW' +
        '_PESOATUAL'
      
        'WHERE IDANIMAL = :OLD_IDANIMAL AND IDCLIE = :OLD_IDCLIE AND DATA' +
        'CAD = :OLD_DATACAD AND '
      
        '  DATAATUALIZACAO = :OLD_DATAATUALIZACAO AND NOME = :OLD_NOME AN' +
        'D '
      
        '  COR = :OLD_COR AND SEXO = :OLD_SEXO AND DATANASCE = :OLD_DATAN' +
        'ASCE AND '
      
        '  RGA = :OLD_RGA AND NPEDIGREE = :OLD_NPEDIGREE AND IDESPECIE = ' +
        ':OLD_IDESPECIE AND '
      
        '  IDRACA = :OLD_IDRACA AND ATIVO = :OLD_ATIVO AND USUARIO = :OLD' +
        '_USUARIO AND '
      
        '  HISTORICO = :OLD_HISTORICO AND FOTO = :OLD_FOTO AND PESOATUAL ' +
        '= :OLD_PESOATUAL'
      
        'RETURNING IDANIMAL, IDCLIE, DATACAD, DATAATUALIZACAO, NOME, COR,' +
        ' SEXO, DATANASCE, RGA, NPEDIGREE, IDESPECIE, IDRACA, ATIVO, USUA' +
        'RIO, HISTORICO, FOTO, PESOATUAL')
    DeleteSQL.Strings = (
      'DELETE FROM ANIMAIS'
      
        'WHERE IDANIMAL = :OLD_IDANIMAL AND IDCLIE = :OLD_IDCLIE AND DATA' +
        'CAD = :OLD_DATACAD AND '
      
        '  DATAATUALIZACAO = :OLD_DATAATUALIZACAO AND NOME = :OLD_NOME AN' +
        'D '
      
        '  COR = :OLD_COR AND SEXO = :OLD_SEXO AND DATANASCE = :OLD_DATAN' +
        'ASCE AND '
      
        '  RGA = :OLD_RGA AND NPEDIGREE = :OLD_NPEDIGREE AND IDESPECIE = ' +
        ':OLD_IDESPECIE AND '
      
        '  IDRACA = :OLD_IDRACA AND ATIVO = :OLD_ATIVO AND USUARIO = :OLD' +
        '_USUARIO AND '
      
        '  HISTORICO = :OLD_HISTORICO AND FOTO = :OLD_FOTO AND PESOATUAL ' +
        '= :OLD_PESOATUAL')
    FetchRowSQL.Strings = (
      
        'SELECT IDANIMAL, IDCLIE, DATACAD, DATAATUALIZACAO, NOME, COR, SE' +
        'XO, '
      '  DATANASCE, RGA, NPEDIGREE, IDESPECIE, IDRACA, ATIVO, USUARIO, '
      '  HISTORICO, FOTO, PESOATUAL'
      'FROM ANIMAIS'
      
        'WHERE IDANIMAL = :IDANIMAL AND IDCLIE = :IDCLIE AND DATACAD = :D' +
        'ATACAD AND '
      '  DATAATUALIZACAO = :DATAATUALIZACAO AND NOME = :NOME AND '
      '  COR = :COR AND SEXO = :SEXO AND DATANASCE = :DATANASCE AND '
      
        '  RGA = :RGA AND NPEDIGREE = :NPEDIGREE AND IDESPECIE = :IDESPEC' +
        'IE AND '
      
        '  IDRACA = :IDRACA AND ATIVO = :ATIVO AND USUARIO = :USUARIO AND' +
        ' '
      
        '  HISTORICO = :HISTORICO AND FOTO = :FOTO AND PESOATUAL = :PESOA' +
        'TUAL')
    Left = 11
    Top = 196
  end
  object dsAnimais: TDataSource
    DataSet = qryAnimais
    Left = 11
    Top = 240
  end
  object qryAux2: TFDQuery
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    Left = 344
    Top = 5
  end
  object dsAux2: TDataSource
    DataSet = qryAux2
    Left = 344
    Top = 49
  end
  object qryBalanco: TFDQuery
    AfterInsert = qryBalancoAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtBalanco
    SQL.Strings = (
      'select A.*, B.REFPROD, B.NOMEPROD from BALANCO A '
      'LEFT JOIN PRODUTO B on A.IDPROD=B.IDPROD')
    Left = 53
    Top = 152
  end
  object UpdtBalanco: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO BALANCO'
      '(IDBALANCO, IDPROD, IDSEQ, "DATA", STATUS, '
      '  ESTOQUETOTAL, ESTOQUECONT, ESTOQUEDIF)'
      
        'VALUES (:NEW_IDBALANCO, :NEW_IDPROD, :NEW_IDSEQ, :NEW_DATA, :NEW' +
        '_STATUS, '
      '  :NEW_ESTOQUETOTAL, :NEW_ESTOQUECONT, :NEW_ESTOQUEDIF)'
      
        'RETURNING IDBALANCO, IDPROD, IDSEQ, "DATA", STATUS, ESTOQUETOTAL' +
        ', ESTOQUECONT, ESTOQUEDIF')
    ModifySQL.Strings = (
      'UPDATE BALANCO'
      
        'SET IDBALANCO = :NEW_IDBALANCO, IDPROD = :NEW_IDPROD, IDSEQ = :N' +
        'EW_IDSEQ, '
      
        '  "DATA" = :NEW_DATA, STATUS = :NEW_STATUS, ESTOQUETOTAL = :NEW_' +
        'ESTOQUETOTAL, '
      '  ESTOQUECONT = :NEW_ESTOQUECONT, ESTOQUEDIF = :NEW_ESTOQUEDIF'
      'WHERE IDBALANCO = :OLD_IDBALANCO'
      
        'RETURNING IDBALANCO, IDPROD, IDSEQ, "DATA", STATUS, ESTOQUETOTAL' +
        ', ESTOQUECONT, ESTOQUEDIF')
    DeleteSQL.Strings = (
      'DELETE FROM BALANCO'
      'WHERE IDBALANCO = :OLD_IDBALANCO')
    FetchRowSQL.Strings = (
      
        'SELECT IDBALANCO, IDPROD, IDSEQ, "DATA" AS "DATA", STATUS, ESTOQ' +
        'UETOTAL, '
      '  ESTOQUECONT, ESTOQUEDIF'
      'FROM BALANCO'
      'WHERE IDBALANCO = :IDBALANCO')
    Left = 53
    Top = 196
  end
  object dsBalanco: TDataSource
    DataSet = qryBalanco
    Left = 53
    Top = 240
  end
end
