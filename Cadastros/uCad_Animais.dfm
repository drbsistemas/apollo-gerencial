inherited Fcad_Animais: TFcad_Animais
  Caption = 'Tela de Animais'
  ClientHeight = 539
  ClientWidth = 762
  ExplicitWidth = 770
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnImg: TcxImage [0]
    Left = 704
    ExplicitLeft = 704
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel [1]
    Width = 704
    Height = 539
    TabOrder = 1
    ExplicitWidth = 704
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 702
      ExplicitWidth = 702
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Nome'
          'Propriet'#225'rio'
          'Rga'
          'N'#186' Pedigree')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 702
      ExplicitWidth = 702
      inherited cxApagar: TcxButton
        OnClick = cxApagarClick
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 488
      Width = 702
      ExplicitTop = 488
      ExplicitWidth = 702
    end
    inherited grConsulta: TcxGrid
      Width = 702
      Height = 412
      ExplicitWidth = 702
      ExplicitHeight = 412
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsAnimais
        DataController.DetailKeyFieldNames = 'IDANIMAL'
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDANIMAL'
          Width = 60
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          DataBinding.FieldName = 'NOME'
          Width = 150
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Ra'#231'a'
          DataBinding.FieldName = 'RACA'
          Width = 80
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Esp'#233'cie'
          DataBinding.FieldName = 'ESPECIE'
          Width = 80
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Cor'
          DataBinding.FieldName = 'COR'
          Width = 80
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Sexo'
          DataBinding.FieldName = 'SEXO'
          Width = 50
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Propriet'#225'rio'
          DataBinding.FieldName = 'RAZAO'
          Width = 200
        end
        object grConsultaDBTableView1Column6: TcxGridDBColumn
          Caption = 'Rga'
          DataBinding.FieldName = 'RGA'
          Width = 120
        end
        object grConsultaDBTableView1Column7: TcxGridDBColumn
          Caption = 'N'#186' Pedigree'
          DataBinding.FieldName = 'NPEDIGREE'
          Width = 120
        end
      end
    end
  end
  inherited pnCad: TPanel [2]
    Width = 704
    Height = 539
    TabOrder = 0
    ExplicitWidth = 704
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 702
      ExplicitWidth = 702
    end
    object cxPage: TcxPageControl
      Left = 1
      Top = 301
      Width = 702
      Height = 237
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = cxDados
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 11
      Properties.TabWidth = 100
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      ClientRectBottom = 231
      ClientRectLeft = 2
      ClientRectRight = 696
      ClientRectTop = 27
      object cxDados: TcxTabSheet
        Caption = 'Dados'
        ImageIndex = 0
        object eObs: TcxMemo
          Left = 132
          Top = 10
          Hint = 'Observa'#231#245'es Adicionais'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 1
          Height = 167
          Width = 400
        end
        object cxLabel29: TcxLabel
          Left = 18
          Top = 10
          AutoSize = False
          Caption = 'Observa'#231#245'es:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 131
        end
      end
      object cxVacinas: TcxTabSheet
        Caption = 'Dados Estoque'
        ImageIndex = 1
        object eEstoqueDisp: TcxCurrencyEdit
          Left = 131
          Top = 3
          Hint = 'Estoque Dispon'#237'vel para Vendas'
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          Width = 75
        end
        object cxLabel23: TcxLabel
          Left = 18
          Top = 5
          AutoSize = False
          Caption = 'Est. Dispon'#237'vel:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 131
        end
        object eEstoqueTotal: TcxCurrencyEdit
          Left = 131
          Top = 25
          Hint = 'Estoque F'#237'sico do Produto'
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 6
          Width = 75
        end
        object cxLabel24: TcxLabel
          Left = 18
          Top = 27
          AutoSize = False
          Caption = 'Est. F'#237'sico:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 131
        end
        object eQtdeMin: TcxCurrencyEdit
          Left = 299
          Top = 3
          Hint = 'Quantidade M'#237'nima para Ter em Estoque'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 1
          Width = 75
        end
        object cxLabel25: TcxLabel
          Left = 219
          Top = 5
          AutoSize = False
          Caption = 'Qtde M'#237'nima:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 80
          AnchorX = 299
        end
        object cxLabel26: TcxLabel
          Left = 219
          Top = 27
          AutoSize = False
          Caption = 'Qtde M'#225'xima:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 80
          AnchorX = 299
        end
        object eQtdeMax: TcxCurrencyEdit
          Left = 299
          Top = 25
          Hint = 'Quantidade M'#225'xima para Ter em Estoque'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 7
          Width = 75
        end
        object cxLabel27: TcxLabel
          Left = 377
          Top = 5
          AutoSize = False
          Caption = 'Peso L'#237'quido:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 467
        end
        object ePesoL: TcxCurrencyEdit
          Left = 467
          Top = 3
          Hint = 'Peso Liquido do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 2
          Width = 75
        end
        object ePesoB: TcxCurrencyEdit
          Left = 467
          Top = 25
          Hint = 'Peso Bruto do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 8
          Width = 75
        end
        object cxLabel28: TcxLabel
          Left = 377
          Top = 27
          AutoSize = False
          Caption = 'Peso Bruto:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 467
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 51
      Width = 702
      Height = 250
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxLabel3: TcxLabel
        Left = 59
        Top = 25
        AutoSize = False
        Caption = 'C'#243'digo:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 75
        AnchorX = 134
      end
      object eCodigo: TcxTextEdit
        Left = 134
        Top = 23
        Hint = 'C'#243'digo Interno do Sistema'
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 97
      end
      object eAtivo: TcxCheckBox
        Left = 237
        Top = 23
        Hint = 'Cadastro Ativo'
        Caption = 'Ativo/Vivo'
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 77
      end
      object cxLabel14: TcxLabel
        Left = 323
        Top = 25
        AutoSize = False
        Caption = 'Dt. Cadastro:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 82
        AnchorX = 405
      end
      object eDtCad: TcxDateEdit
        Left = 404
        Top = 23
        Hint = 'Data do Cadastro no Sistema'
        Enabled = False
        ParentFont = False
        Properties.DateButtons = [btnClear, btnToday]
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 130
      end
      object cxLabel6: TcxLabel
        Left = 279
        Top = 47
        AutoSize = False
        Caption = 'Idade:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 55
        AnchorX = 334
      end
      object eIdade: TcxTextEdit
        Left = 334
        Top = 45
        Hint = 'Idade do Animal'
        TabStop = False
        ParentFont = False
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 200
        Properties.ReadOnly = True
        ShowHint = True
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 8
        Width = 200
      end
      object cxNome: TcxLabel
        Left = 59
        Top = 92
        AutoSize = False
        Caption = 'Nome:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 75
        AnchorX = 134
      end
      object eNome: TcxTextEdit
        Tag = 1
        Left = 134
        Top = 90
        Hint = 'Nome do Animal'
        ParentFont = False
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 200
        ShowHint = True
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 14
        Width = 400
      end
      object cxLabel16: TcxLabel
        Left = 69
        Top = 47
        AutoSize = False
        Caption = 'Dt. Nasc:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 65
        AnchorX = 134
      end
      object eDtNascimento: TcxDateEdit
        Left = 134
        Top = 45
        Hint = 'Data de Nascimento'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 7
        OnExit = eDtNascimentoExit
        Width = 130
      end
      object eDtAtualizado: TcxDateEdit
        Left = 404
        Top = 178
        Hint = 'Data da '#218'ltima Atualiza'#231#227'o do Cadastro'
        Enabled = False
        ParentFont = False
        Properties.DateButtons = [btnClear, btnToday]
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 35
        Width = 130
      end
      object cxLabel12: TcxLabel
        Left = 302
        Top = 178
        AutoSize = False
        Caption = 'Dt. Atualiza'#231#227'o:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 103
        AnchorX = 405
      end
      object cxLabel5: TcxLabel
        Left = 38
        Top = 158
        AutoSize = False
        Caption = 'RGA/IDentifica'#231#227'o:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 96
        AnchorX = 134
      end
      object eRga: TcxTextEdit
        Left = 134
        Top = 156
        Hint = 'C'#243'digo de Identifica'#231#227'o/RGA'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 150
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 25
        Width = 130
      end
      object ePedigree: TcxTextEdit
        Left = 404
        Top = 156
        Hint = 'N'#186' do Pedigree'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 150
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 27
        Width = 130
      end
      object cxLabel4: TcxLabel
        Left = 309
        Top = 158
        AutoSize = False
        Caption = 'N'#186' Pedigree:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 96
        AnchorX = 405
      end
      object cbSexo: TcxComboBox
        Left = 404
        Top = 112
        Hint = 'Sexo do Animal'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'MACHO'
          'FEM'#202'A')
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 17
        Text = 'MACHO'
        Width = 130
      end
      object cxLabelSexo: TcxLabel
        Left = 329
        Top = 114
        AutoSize = False
        Caption = 'Sexo'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 75
        AnchorX = 404
      end
      object cxImage: TcxImage
        Left = 535
        Top = 24
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
          000000800806000000C33E61CB000000206348524D00007A25000080830000F9
          FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
          7300000B0C00000B0C013F4022C800001B1A49444154785EED9D69B01D55B986
          0F4388030878714041401008C315A712907B155404C48B5E04820650CB2B01C2
          99E27F710034202A01244C2624500C29902ACB2A3444120DA290508504415113
          2C15D472424086C07D9FAEFDEEFAF6DAABF7DEE7E4EC6D2ADD3F9EEAEED5ABD7
          B7D6F7BD6BE8DDDDE70CBDF8E28B3515269B58531DB28935D5219B58531DB289
          35D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58
          531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935
          D5219B58531DB28935D5219B58531DB2891BCB8A152B863EF7B9CFC1B6E79C73
          CEDBC491E203293ACFF628F11EB11BD79C77DE79434F3FFD74C7729577B327B6
          93FDB276937EC925970C3DF7DC73599F75239BB8B1AC5CB9928A6DAF0A1E2786
          C57817C6C4A775CD0108E099679EC9965B4501946D0DC79B9C00962F5FBEAD2A
          768A2AF8598100CECEF1F9CF7F3E1E8FEA9AF173CF3DF7A0279F7C325B6E9504
          006E2B5B13D3BDBF4909E0A9A79EDA62DEBC79C7A86204BF08724A2E9D3431A2
          EBE6FCF0873F7C6DAEECC6C8D26C7C15707BD9C6B6C7F44D46002FBCF00241DA
          5D951A555087D32077428D29B6BA76EE57BEF295E310525AF61D77DCD1E284CD
          99B49D65C76C3719013CFFFCF35B7CF5AB5F3D56951A4F03FC852F7C214B9A4F
          0CEBFA39F7DC734FCB28A0B2872EB8E082CA0920DDA6908E00F04FF457AF6413
          27CBFAF5EBB753003F23461CD018EC2F7EF18B6DC4F3BE468D9A7BF3CD371FBC
          61C38666D9EBD6AD1BD2B9AC13364762C03B89C00218C8084040D6AC593374E7
          9D770EFDE8473F1A4A176B9ABB19FE87154C6809FA97BEF4A5B3B5C06B83F454
          086AD8B87AFBB1CF3EFB6C310D7057B070E1C2AC033657CA82CEB1F1F1C004A0
          800C7DE31BDF6856E0C20B2F6CB9655BBD7A75530069D0757B5770FEF9E7B7E0
          740B01D4D3C765E758AD038AF2111CF6AA340274025FC4FD814D01A86CC18205
          CD0AB05DB264C996EAF93B8BB7DC70C30D1F5090E6104407DD81FEF297BF7CB6
          16774D74A7506C49B7103C224840233A7FCA65975D7684D61487AB3C7E287A8F
          CA2EB655423E8EC787EAF840F1CA1883818D00A900149019DAFF9860DE2E7ED4
          71AF77F063C035ACB7413A244298830854FEDC1CB25355B8B5C6CF67097E647B
          FDBF4B00D3659CDECE6A7F4C1473BE7B7EECF10EBCA68BB3D59B5B200D2C04F2
          732D84D1A089ECB4A03AB46CBD5F463CEFFC4E2B3B1789F93AA5B335319F89E7
          9D274D737AC939FFBACA1DD321975E7AE960A6008C48005BCBE871AAD867A99C
          8343F00958ECF904D581BFE8A28B0ABEF6B5AFB56C5321701DE2A11CF0DAA093
          10AA441001F0C3D95CF9F030D667B99875239B58060F6914B4FF92E1B6E07BD8
          77CF2798EEE90EF8D7BFFEF5362C0448451047829C104CAC8BF7ED30A7A7E7E2
          B657269ADF709DC99DCFE1BCF13AEF9B86081805C674DBBC772E66DDC8269671
          D75D77BD46C6E6C8F8882BDAADE7C7C06B65DF8645001E0D521150B68580BD32
          216CEEA4023012010FD34E5DB76EDDF45CDC3A914DCCC1F0AFB98695E8DC58A9
          34F804CFC1A7573BF0175F7C71731BB10880FC51045E17A44288A3C2E6863B94
          851EF7A3DF8D45A08E39BE6CD9B219FC649E8B5F19D9C41C1AFEB7510066C9D8
          A88D533982417008525CF079D8774FCF05DF02B0083C1D9489200AC1DB280A93
          4B9B081B7B7D27BA955D763E0A241543430073E5C30F3CF3CC332DCF50BA914D
          CCF1F39FFF7C07F5FE3364AC58F13BF85498C0B8F7BBE77BE82F0BFEFCF9F35B
          8E3D0A44118045602144314451A46965386FBA4DD3223E9F239EEF96B78CDC75
          B66D2C8C28842802C56654BE99F9AF7FFD6B9B5CFCCAC82626148A5ABD7AF5CE
          52D9993236ECE0BBE20EBE87FE18FC1864829EC3E7E348001601E5C6112182ED
          B89F3BCE919E8FD7783FA639DDFB65384FEEDAB2EB7DCEE7D37CA930A2183C22
          3032CB3FA748002F73CC7A219B9840615BDE7FFFFDAF97CA9A02A01254860AE6
          821F05E020A7818FE444E091204E0BA920BC353E37596259BDD208D8B0023422
          9F8CC837A3A2D857DAB0CE0FE7AEEB95288828044460212000D5FF5409603BE2
          D5885B2E9E2D641313286CAB071E7860571939536A1BC6A80540E5A824CE73B0
          26DBFB2394A1327160E148D9198962883878AEC3C610CBEA046DA66E723E432F
          6D38E3AAABAEFAE4C2850B4FB9FEFAEB672E5AB468968E4FD3C2F974E59D433E
          B5631431E4CA8BB673F5B018521110070B40D72180ED89979852016CFDE0830F
          EE262367C9D870ECFD08C095F6D0DD4900DE8FE74C1480CA1B91033F75DF7DF7
          BD0FD897034672028869E9798ED3F3312D6E637A07861B813C5B413E75D5AA55
          C7FCE217BF78D7134F3CF196679F7DF6C0E79E7BEE800D1B36ECAFBBA603B47F
          A016656F5EBF7EFDC1F7DC73CF9137DD74D34C957F262384DA321C6D79BF937D
          0B01DB160271A0436A64C637A7C9DE8E8AD73431A50298A645E06E32520800A3
          18A7225488CA51F1DCF0DF0B31F0A072862FB9E492331E7FFCF177C8363F70EC
          ADFDB74B38B365AB709CC516F753386772E7CB48F3734C1BE5740277F62DB7DC
          72E2AF7FFDEB4315E4FD55B77DC4BE624680E398C6FE3EBA459BF1D8638FBDFD
          7BDFFBDEFFA89DB311927D176D7ADFE9268E061601B1A04322005D739A468057
          CA1602206EB978B6904D4CA0A06D1E7AE8A1DD1180D4C65CD7D6FB5D6907DFE4
          021E711EE7E77A9537BA64C99259384CB6EDCC7D95F671357ED48E1A14B48F60
          D1E315F87735EAE3C003227D93D84BEC99403AE763FE7D24E8B7DD76DB6D27C8
          9723F221C16BFA308745405D2C028F0216807CD737014C4B05E0DE4F6562C5E3
          08D04D00318FF7B9566522808FA987E1BCC291EC33B7E604609B93252D23962D
          870FCBD1C3DFFFFEF78F7BFAE9A70F505D08A6834EDDF6106F10BB88D78BD789
          9D1BB04F3AE777176F14B4A910015BDD5DBD5736CF54BB0A1174C202B008E228
          A0B5597F05A029A06D04B000A8902B69273AA09134F0C6D71804B078F1E29335
          87EE26DB38F17512C01B248A93D4E829174024964BF069E34F7EF293F7AB0E04
          0C08208124A8D4EDD5E23F04732F0BB0570438DE41709E7C886257816828A728
          6FDDBA758768CA63B1D875748B02A06E1E05FA2E008F001A6EDA46002AE4212A
          3A330D7424E68BD04804A0D5F44C09E035B28D637794005E73EDB5D79ED8C949
          B9F226422C8BE0AB8DC35ABCBD4FF63D8C137802C80BAB0495006F2B5E2A5E22
          F8112685DFE739FF7281280810ED6264B010DEF4DBDFFEF69DEA1CB3D5BED291
          201D012C004600ADCD0A016811385801B842B969A01BCEEB6BBD25C8D75C73CD
          8912008DE1878D97697F4789E2A3B23B463E13AF4BCBEF15AE8D501E2BF53BEF
          BCF383B25D04483084D3E3771204927A115C9C5DDC76F1FA9A7A6093F0891B3E
          DC5A2008C4C0BD3A6D43488C24AC1DF6D2DDC4616AFB1CC497AB13A402200E1E
          01D4B10623005457360250D99C935362C3D20612E4ABAFBEFA44DD56D1C370F2
          7409E015DFFAD6B7B20288E46C7522BD1EE4D0D11B6FBCF1648D3A0CD1CCF304
          895ECB704EE00924412F9CAC85215F436DA5BB949D54A73D55C6FEE24DF2CFCE
          BAF59B7EF7DD77F3C10CBEE4D68CEB081042A07DAF128C068C2E7BAD5CB9F268
          169CB16DB1BDA900E214303001944D01AE702F387FDA3020C8BAEF4700F4B462
          289500B6D3A870BC1A3C16F3FAFAB4FC5E49EBA1F6709B79866ED7DE2ABB9EEB
          99BFA90BC33C3DB9702EAFAA6B61FA52F9E51DE79C73CE2C0581DBE4116DC708
          48E3079A4FEADC112AF7D5EAE1D1A79483B8190D984E5840EEA136EF2BA19FAA
          761622C881CF2D00E21005D0F73540EE361026128CD81870305D96CA1FBBF2CA
          2BDB04A051E178CE399FEDA6B663D9A96D13F380CB51FBC6962D5BC6D0EFD53D
          3D942011ACE650CF6BF1EAA97B29B89F90F3E7EABA517E236950FC3AC7BED247
          048FD0CF12EF9460B64038BAC5F56840FB581F20024682DD1F7EF8E143D5CEE2
          17C3B47E403AC14F47008D68831B0130EC4AE402D10BB14186F2E4D8B12BAEB8
          823540530012C3761A158EE79C6D9A8DB1ED7DCA91A0997B67FFE52F7F395036
          3DEC538766F0C5901686BC17F956F9835E3EE6802B082D38BD718E9161AEAE3B
          4A2BFEADD5367C4B79F89736B298647DB1EB860D1BF6E43698A920B633820FE8
          800317401C017202B0537BC1F9DD20239115024847008D0A4D01183B6422F663
          1E5F0F0AD4D877BEF39D0FCB1EC1E7968D399A61BF197C02A7F5C10CF5FC6298
          27D065C85F0549DA6765FF084611CA6B601130D21477086BD6AC79B7EA53FCF2
          E8F6C52DC14F053090358005601150895C253B411EE340C606C9C6D882050B5A
          04C00820511CCF39DBB56DDB37399B9198176C9FB6AD5DBBF660D923F8389205
          1F7375117C50EFDF51BD78B61C3EDA08E84429DEE8BDEDB6DBF831C83EF67480
          D85868BEF6EF7FFFFBBEEAD1A7ABAD6D4F12ED27200EEA1485001801FAB606F0
          0F415265F3598003E18A45A7A6CEEEE4786FDD30827CF9E5977714806D9BD43E
          E46C465C6F509B18FE4F97E3B9DF67D1476FC476D391F45ADDABBF5F0BBB96D7
          E2268AAEE755FA598F3EFA28E5DBCF8800B1B11ED8496B845D162F5E7C22A340
          6CA771F02D0095BBE908A09BE38DAF73396E1443712A00A60004C039DB36A9FD
          4E389FAF01CA90B046B5C83C59F32F0B317E7CE236AD39F4C3FDF7DF5FBC1525
          3F34BF7D9C2C1A45C67EF0831FA4A300BE66BD51DC1EAE58B1E24809659CFAA5
          C1070B40532665F65F00AA4CF371B08DC7CA4D240826D7A83201685AC80AC0B6
          4DCEA629B32B078EDF72CB2D1F922D1662F4FE3627EA1E9DCFB2C66220270BA3
          88168347AA8D4D8189380AECB87AF5EA43958F77229AED747D81743A631440DF
          D70016401C055CB918845E880DA22CA3F96CEC9BDFFC66DB1480003817F3A6F6
          7BA9077952DBF434DDDAF1B32FBD8FB93FF6FE2DF8327AD1A2456D6F451BD603
          39727941F658E0E5DEE1C3DFAC055EA111E720F2323DC5361B07DF02D0143698
          1140C3655300108310491D6F7C3E0620364A8E6B1300238046854200D136A4F6
          73364D6A1B288F85D9DD77DFFD6ED9E2768C0044076EA1BA6CA5F9FF68F2C540
          1A075CFEF16D5F730B697E7AB6EAF309058CDE9EFA9B36BF5C0BD2FD94778E02
          DC14406C3BFB049F78285F2180BE8D0016801AD3320298B200C4639F370E801B
          636463ECB2CB2E6B1B01248AE3D5D04200C6B6A37D486DB2EF3C39BB04F6C73F
          FEF17FCB16733F36A303B79400A75D7AE9A5C7A40270808D0510213D5E034100
          4C37D86A8E368269E0A50F3CF0C00CE52D04E0B61AD79BE00F5C0018B4085CB1
          3400BD900B04E5AA3159013002702EB56DFB26670B621E5F679B0CED5A941D2E
          5B2CC270600CC8565A954FBBF5D65BDFAB3540CB14E0A097051F38677C9D7CC9
          DB40272B600820DE6A16F6C4F4FBEEBB6F7FE523C045A78BED76BDA3002EBAE8
          A2FE4F01325408005C9118849CD3E37E2406213648363A0A803CD119D13E44BB
          691A449B40796ADBF8B5D75E7BB4E67AFFDE1F03C2310F75DE2E01343F8C7150
          09B27D92230AC1D732925C7FFDF5C7C81EEB8D28384000D37EFAD39FF2473647
          29C30270BBBDEFF255E6E004E006DB81310039E7A7C7CEEBEB5C8E1B241B1DA7
          003B2467DFA4F623D12E65356C8ECE9F3FFFA4E79F7F9E3540CB0250E0D0973D
          FEF8E3BB2988B3F181C80AC081715B8C05601120A4356BD6BC4DE5B206A08DA9
          00B6FEEE77BF5B2C3A5D7E5AB6B78D32073305D0F8B4C1310813C10104370664
          634CF36D9B00248AA600A2ED89D621B5497B70A0F64F7FECB1C7B80DA4CDA900
          8A07364B972EFD908257AC033A05DFB87CB000E4C7516ED99E7CF2497E73F00F
          4E51005B3212E936F123CA5B3C6BB00DDB89C78D32FB3B023CF8E0835901D899
          766C7474EC6D391C84B4416502882380F1F5B11EDD705EDB757014D89155AB56
          EDD768771400534021803FFEF18FFBEABAD371781480EB91E27ADA06FEC38EE6
          F743549E9F34A602D8E2F7BFFFFD4ECAFF19E52F1E2B479F475CAE0530901120
          6DB81D6AA2A3A3E363BAC9394A764A4700CE39AF89E545CAEC469B7660C389E3
          0B162C605E261851000CC9DC1DF0C8F6753FFBD9CFF881A6707A0C8CCB8DF81C
          F91AC11FD3D0FE412D2AFD9E01534EBAE618BAFDF6DBDF425E5D53D48DEBA32D
          97095100031901A200C08D8DCEEF859C93D8CA4E570190D7D746FBDE96E1BCB6
          E9E0036D53F9B31F79E4117A66EA03EE0E7850C36B61BB6B417884F2F2B71278
          0FA0A51E11DB51D9FC358FD16F7FFBDB1FD63A8357C018FE1154DB4FCEFFFCE7
          3FA75D78E18527D1D62800B694657B315D79F9726AF02300B8B1398777227512
          65020DD7FCD722007E08B2009C2FB56F72B622D1266D31389B45D7A2458B0E57
          90A20F080E4EA5B7D26B795B79CF5FFEF29787EACEE43456EAAA174F078B1742
          1A6517FB2A7354E77989E5FFEEBAEB2E7E69E46113EF17FA7133ED6B09D61D77
          DCB10F62A13E168071DBC1C7E4E9BB00D21100ECC45E1D9FE2EB1C10374C36DA
          04104700E7CBD9F73647CCE36B2987B6D8D9B44FCE3FEBDE7BEF8D7FAAD6D380
          1FD7320A14EFF8CBE1FB6B357F846E214F569067AB4C7CC4B78073B4063AF3CA
          2BAF3C65C58A1547FFF5AF7F3D88FC82770CE9FD04AAED71F3EF7EF7BBE9BA9E
          BFC3D07CE690063EE258580003B90DB4512A90066022F83A07C2D0F87E09C044
          9B6E8F1DAE1ECB9FBB3BE937BFF90DC3BEFD4090081641F33B7C04931EBDB7E6
          F4FD9E78E28983D6AF5FFF4EF9EAB05FFDEA578728E86FD548E2CFC780A13FBE
          66D6D2FB79DE20C1F0B7018BBFB5BC49098011408E691300E444E0FD98EE7DE3
          00A6C1E82680D4B671B9D1BEF139C8D9B4B301E72B087375DD515AF5377BA7C0
          17D487A9A0F922A740043CDA2D237E53D0F68EA128827FD34D37BD5976E9F92D
          8F9BEDEF88EB6DFA2E80DC08006541E846BC2606A2D198AC00B4306C13C044EC
          FBBCF3469BD1E1D010C1F8E2C58B0F0EEB014F05D489DB429CCD54E1AF7DE8E1
          FE8E003826F0FEC2C98F9ADB82BF74E9D23D64AFF8035CD88E75711DDDEEB80D
          F5EDFF1A80114086062280F9F3E77714806D4FC47ECC07D16674380168C07A60
          F4D65B6F3D84B780E503FC41D00A9F08A60316728C06BCCB479099DF11045B46
          080442E0FD9899F614C1FFC31FFE507C2F70F3CD37EF253BFCF91D16932D7501
          D731B6197C8EADAE1B8C0064AC393CC54AA5CECD393C871BE3B2408D691340BC
          0B486DE7EC7723B5EB360141082002E6E4A374EEE50F3FFC70F40B6B02EA4760
          E9D904B9F894AD010B46D2192DFC8CA1080CDF0828605B2E5CB8F01D2A1F3B45
          F023B14EAE67C4E96C959FAF8C073302A495B2331D88F43887CFBB0C3784AD6C
          741D01A27D883621B595DA35BEDE6D029C9FA2B6F3B77AB9E53B60C992255B3D
          F2C823D13F0416A733B41368C331F56F069E3FB1CFFF3E921DFEB2FA471BE26A
          FE7F0513EBE3FAB9AEF1D879280301F4750D502600933AB7177CADCB6C34262B
          00AD0B9A23406A3F577619F13A93D86F06C1FB0DB8A71F57D0666ABBF775D75D
          B7CDAA55ABF8E1267E07C814619ADF09EAAE6068D9B2655BCE9B376F175D7FAC
          AE27E86DFF592512EB04B9BA1ACAEBAB00722340243AD34EEEE6F4482C4B36C6
          2EBEF8E2AE0230B9F2621D72E99158961DCFB603FC65CE3105F23471B8A6BB19
          2A77270962FACA952BB736CB972FDFE6820B2ED841E7F7D435FCA9778453BC16
          AEE38EFF5329D6A91710806C0D5E007660EAD4188074DFC710CB32B281004E88
          02600DE02920778DCB8BE46CA7797C6D2CCB41E801E66DA6064686331560FEF7
          E1296256834F912E083A7F5FB9F8CBEA8D6BBB12EB04B1CE292A7FD31200A40E
          EF1404D3687C3102E8F688FBED42002FBCF0C2B69A164E501D3A0AA0CC46A773
          69590E40375497784C6019D68B9F851B704CFA84831EF7C1F5CCD517FE6D0230
          B182BD929661B0A1F3A7AF5FBF9EDBAAA21EDADF99B44EF6274AAE9C0841E804
          024844B0D1E4EAD10B0315402F15B5835367F7E278902DFEFEDEC73597EE07EC
          9396CB1B49ED39ADD3718E1894321C7CB639D2FC132157A71CCE2F7B831740AE
          A29D9CCDBE89795242F9FC3BD902F649CFD94C71F9A9BD74DB09DBEAC4C606B9
          8C5C7D72C46B06220005A26D0488FB9325571EDB94F4BCAFE917D1F620C9D5A5
          135C3370014CA6A2BD10CBF67E24CDDF0FA29DD47E27181122312DCD9B12EDDB
          6E9A96E23C6C65633053806859D1A6959A2CB1CC58767A1CF3C7E37E12EBD02B
          BD043D92DAF27E6E1BF399CD4A00E9718ACFA7D7C7E3A920DAEC37B697DA8FC7
          29F17A0BA0AFCF029802520144D2CAE58E637A7A9D8F274A5A6E2C2BA6A5945D
          9BE2B2FA4999DDF4B80C04306FDEBCFE8D006BD7AEED2A0088158D8DF0364D8B
          E4D2CA28BB3E961F715A9AAF537A595ABF88B6BC9F925E63FA2D806D1E7DF4D1
          5D64A8F85933351EC955386E73E9263DEE442CC7C7313D1E3B4F9A2F3DCF7E59
          BAF707416AAF17FBDC2A6B0A98A52980C7D0532E80E92AF855E79F7FFEA764A8
          EDD1A589CE8BFBB934EF4F256999A99D5E8E73FB83C475CAD9EF5427C565FC8A
          2BAEE095F3B6770D3B914D4CA0A0976CD8B061FBC58B17179F45E52AB0293399
          604EE69AA9A2CC763701AC5CB9F250C5CA6F1D4DAD00C4760F3DF4D07FCA104F
          B63A4E039B225325827FA730CA60FE3FF7DC733FFDE73FFF99EF0DFA3202F066
          CB0E1A0576BEEEBAEB3E82DA64345B999AC1421C148FB1152B56BC47312AFBD6
          B0946C620202A0409ECDBFF66F7FFBDB3E7CD98AD15C856A064723F8E337DC70
          C3FF6AEEE7CD637F6BC82270CA04404114C88B8D18D8F54F7FFAD381975F7E39
          2F3CF0564CE9A2B0A63F34025F3C245BBA74E94774EBC77707BC89CCDBC9AC01
          7807714A05C06BCC7CC4C83D26AF3BBFF1A9A79EDA6FD9B265479F77DE799F41
          040D31349FDED5F4057C0CC31A853F79EFBDF7F2276D083EDF24F0EE046F2533
          5DF734FF43363183A781F871241F3EECFD8F7FFCE3CDAB57AF3EFCF6DB6F3F4E
          EB8313AEBAEAAA99575F7DF5CC6BAEB9A68D985E9627429E484C8B79D2FD9827
          9E4FCFE5D272E7BB11AF4DD372E46C94E5775EB8F1C61B8F5FBE7CF9B16BD7AE
          3D4CB7E5FCFF227F7C42EFE7DB8309F57EC82666F028C0DD002AE36307569C54
          804F9FFCEDDB0C2D14F7E73B396D2785AF4DCBE854E664EC95D99928BD5E3F51
          3BB9FCF837F83A7E6B48A764F1E7DE3FE502000A455D4C057CF0C0973018E7D3
          2786212A947E135733F5E0673A5EFCD690053AC16F7E6ED62BD9C40EA02E8B00
          A30C3BCC3D54C4FF16ADA67F30D7E367FCCD28CCA2CF3D7FC2C1876C62171001
          C630CA9D0153028B4394C8A840C5803F80503335D8A70CF5F8197FD3015BBE35
          14B97875249BD80318F3688010181110038B441459D31FF02F41C7DF041EFF4F
          68CE4FC926F608462D04144865F8BDA0A6BFE067FCBD518137D9C4496031D40C
          865C0C264536B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA43
          36B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64
          136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336
          B1A63A64136BAAC28B43FF0FCDD6B6DDD4B6639E0000000049454E44AE426082}
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Properties.Stretch = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Transparent = True
        Height = 128
        Width = 130
      end
      object eFoto: TcxTextEdit
        Left = 561
        Top = -3
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Style.Color = clMaroon
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 0
        Visible = False
        Width = 60
      end
      object cxSalvaFoto: TcxButton
        Left = 535
        Top = 149
        Width = 67
        Height = 39
        Hint = 'Salva a Foto do Produto'
        LookAndFeel.Kind = lfOffice11
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000191A2B323235637531368DAF252CA8D91820B0E71820AFE61820AFE61820
          B0E7252CA8D931368DAF32356375191A2B320000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F213F4B2A30
          94BD262EC5FF0912BEFF0D17BFFF161FC2FF1D26C5FF1C25C5FF1C25C5FF1D26
          C5FF161FC2FF0D17BFFF0912BEFF262EC4FF2A3094BD1F213F4B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000101016183B3F89A51821C1FF0E18
          BFFF111AC2FF1C25C6FF1E27C6FF1D26C7FF1C25C7FF1C25C7FF1C25C7FF1C25
          C7FF1D26C7FF1E27C6FF1C25C5FF111AC1FF0E18C0FF1821C1FF3B3F88A51010
          1618000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000181A3C4A2A32B3E6040DBCFF1821C3FF1D26
          C6FF1D26C7FF1C25C9FF1C25CAFF1C25C9FF1D26CCFF1C25CCFF1C25CAFF1C25
          CBFF1C25CAFF1C25CAFF1C25C9FF1D26C7FF1D26C6FF1821C2FF030DBBFF2B33
          B3E61A1B3C4A0000000000000000000000000000000000000000000000000000
          000000000000000000002F31444B1D26C0FD1720C2FF1B23C5FF1D26C7FF1C25
          C9FF1C25CAFF1C25CCFF1D26CCFF1A23CCFF0711C9FF161FCEFF1F28CFFF1C25
          CDFF1C25CCFF1C25CCFF1C25CBFF1C25CAFF1C25C8FF1D26C6FF1D26C5FF0914
          BFFF131CBDFD3133444B00000000000000000000000000000000000000000000
          0000000000001B1D3944131CBDFB4349CEFF3039CBFF1720C6FF1C25CAFF1C25
          CBFF1C25CDFF1E27CEFF1720CEFF0A14D1FF5258D0FF2329B1FF131CD1FF1C26
          D1FF1C25CFFF1C25CFFF1C25CDFF1C25CCFF1C25CBFF1C25C9FF1C25C8FF1D26
          C6FF111AC1FF0D17BAFB1D1E3944000000000000000000000000000000000000
          000010101213252EB4E93239C9FF545AD5FF2832CBFF1720C9FF1C25CCFF1C25
          CEFF1E27CFFF1720D0FF0001CAFF6E73E3FFFFFFFDFF6A6FB6FF0004B9FF1D26
          DAFF1C25D1FF1C25D1FF1C25D1FF1C25CEFF1C25CDFF1C25CCFF1C25CAFF1C25
          C7FF1D26C6FF0711BEFF252EB3E9101012130000000000000000000000000000
          00003C408EAD1F27C3FF545AD4FF4D54D4FF2D35CFFF1720CBFF1C25CEFF1E27
          D0FF1720D1FF0002CDFF6D73E1FFFFFFFFFFFFFFFFFFDDDDE9FF1B22A6FF1019
          D6FF1E27D9FF1C25D4FF1C25D3FF1C25D1FF1C25D0FF1C25CEFF1C25CCFF1C25
          CAFF1C25C7FF1E27C6FF0009BAFF3F448EAD0000000000000000000000002526
          3B44161FC1FF4A51D1FF4C52D3FF4E55D6FF323AD1FF161FCCFF1E27D0FF161F
          D1FF0001CDFF7277E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8286C0FF0002
          B5FF1F27E1FF1D25D7FF1C25D6FF1C25D3FF1C25D1FF1C25CFFF1C25CEFF1C25
          CBFF1C25C9FF1D26C6FF1720C3FF0914BCFF26273C4400000000000000003B41
          9CC0262EC7FF4F56D4FF484FD4FF4F55D7FF3A42D5FF1A23CFFF151ED1FF0002
          CEFF757AE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF252C
          A7FF060FCEFF1F27DBFF1D25D7FF1C25D6FF1C25D4FF1C25D1FF1C25CFFF1C25
          CDFF1C25CBFF1C25C8FF1D26C5FF010DBCFF3D429BC0000000001D1D272B262E
          C4FE4148CFFF4B52D3FF4950D5FF4D54D8FF474DD9FF141DD1FF0000CCFF7B80
          E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9E
          CAFF0005ACFF1B24E0FF1D25D7FF1D25D7FF1C25D6FF1C25D3FF1C25D1FF1C25
          CEFF1C25CCFF1C25CAFF1D26C6FF101AC0FF1A23BFFE1E1E272B393C67781E28
          C4FF5057D4FF4950D4FF4950D6FF4C53D8FF474DDAFF0A15D0FF797FE4FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FCFF494EADFF000AC5FF2028DFFF1D25D7FF1D25D7FF1C25D5FF1C25D2FF1C25
          D0FF1C25CEFF1C25CAFF1C25C8FF1D26C5FF030DBCFF3C3E6878343990B23138
          C9FF5057D4FF4950D5FF4B52D7FF4148D8FF2D36D6FF969BE9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCCDE0FF060DA5FF131CDAFF1E26D9FF1D25D7FF1C25D7FF1C25D3FF1C25
          D1FF1C25CFFF1C25CBFF1C25C9FF1E27C6FF0B15BEFF363B90B2272FA8D94349
          CEFF4D53D3FF4A51D5FF454CD7FF333BD4FF9CA1E9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7175BAFF0002B7FF1E26E0FF1D25D6FF1D25D7FF1C25D5FF1C25
          D1FF1C25CFFF1C25CCFF1C25CAFF1C25C6FF161FC2FF252BA8D92028B2E74D53
          D2FF4B52D4FF464DD4FF3C43D6FFA7ACEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFACAFEEFF373BDBFFE7E7FBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE8E8EFFF2228A5FF0A13D2FF2028DDFF1D25D7FF1C25D6FF1C25
          D2FF1C25D0FF1C25CCFF1C25CAFF1C25C6FF1D26C4FF181FAEE7232BB2E64C54
          D2FF4A51D3FF454CD5FF373FD4FFCBCEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9FA2ECFF060FD3FF0000D0FF797EE8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFAAAED0FF0005A9FF1921DEFF1D26D8FF1C25D6FF1C25
          D2FF1C25D0FF1C25CCFF1C25CAFF1C25C6FF1C25C4FF1821AEE6232BB2E64D55
          D2FF4A51D3FF4A51D6FF3840D4FF646AE0FFFCFCFEFFFFFFFFFFFFFFFFFFFFFF
          FFFF9B9FEAFF0006D2FF0C15D6FF121BD7FF0F18D7FFDBDDF9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4F55AEFF0004BDFF1E27E0FF1C25D5FF1C25
          D2FF1C25D0FF1C25CCFF1C25CAFF1C25C6FF1C25C4FF1820AEE62028B2E74D54
          D2FF4A51D3FF4950D5FF484FD7FF3139D5FFADB0EFFFFFFFFFFFFFFFFFFF9297
          E9FF2F37DAFF272FDAFF1921D7FF1C24D8FF0008D3FF595FE3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E1EAFF1C24A3FF0C15D4FF1F28DBFF1C25
          D1FF1C25CFFF1C25CDFF1D26CAFF1922C5FF1922C3FF1821AFE7272EA9D9444A
          CFFF4D54D4FF4950D5FF4A51D7FF363DD6FF5E64E0FFEDEEFCFF979AEBFF2D34
          DAFF464CDFFF5257E1FF383FDCFF1C24D8FF121BD7FF0009D3FFACAFF1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A6CDFF0003A9FF1821DCFF1D26
          D3FF1C25CEFF1B24CCFF161FC8FF1A23C6FF2C35C8FF2B33A9D9343990B23139
          C9FF5057D4FF4950D5FF4950D7FF484FD9FF454CDAFF585DE0FF3D45DDFF474C
          DFFF4B51DFFF4B51DFFF5157E1FF454CDFFF2F36DCFF050ED5FF1C24D7FFEAEA
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D62B2FF0003B4FF1B24
          D9FF151ECCFF1922CBFF2730CCFF474FD1FF3A42CAFF373C90B2393B67781E26
          C3FF5057D3FF4950D4FF4950D6FF4A51D8FF484FDAFF3B43D9FF474EDEFF4B51
          DFFF4A50DFFF4A50DFFF4A50DFFF4E54E0FF4F55E1FF444BDFFF0F18D6FF7B7F
          E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9EFFF252CA2FF0C15
          C6FF333CD8FF3E45D3FF4C53D4FF565CD4FF232CC3FF393C67781D1D272B252D
          C3FE4048CEFF4B52D3FF4950D5FF4950D7FF4950D9FF4950DBFF4950DDFF4950
          DFFF4A50DFFF4A50DFFF4A50DFFF4A50DFFF4B51DFFF5055E0FF4B50DFFF343C
          DBFFC2C3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C1DDFF121A
          A1FF444BD7FF5158D9FF4B52D2FF4249CEFF2931C3FE1C1D272B000000003B41
          9CC0262EC6FF4F56D4FF4850D3FF4950D6FF4950D8FF4950DAFF4950DBFF4950
          DDFF4950DFFF4A50DFFF4A50DFFF4A50DFFF4A50DFFF4A50DFFF4C51DFFF3940
          DCFF4E54E0FFF3F3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF888A
          C3FF1C24ABFF4950D7FF4F56D3FF2A32C6FF3D429CC000000000000000002526
          3B44161FC0FF4B51D1FF4B52D3FF4950D5FF4950D6FF4950D8FF4950DAFF4950
          DBFF4950DCFF4950DEFF4950DFFF4A50DFFF4A50DFFF4A50DFFF4A50DFFF4D52
          E0FF2E36DAFF7B81E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF555BC5FF3C43CFFF4D54D2FF1A24C0FF24263B4400000000000000000000
          00003C408EAD1E26C3FF5359D3FF4950D3FF4950D5FF4950D7FF4950D8FF4950
          D9FF4950DBFF4950DCFF4950DCFF4950DEFF4950DFFF4950DFFF4950DFFF4A50
          DEFF464DDDFF2F37D7FFA7ABEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969B
          E6FF464DD6FF4E55D2FF222BC4FF3D428EAD0000000000000000000000000000
          000010101213252EB4E93038C8FF5158D3FF484FD3FF4950D5FF4950D6FF4950
          D7FF4950D9FF4950DAFF4950DBFF4950DBFF4950DCFF4950DCFF4950DCFF4950
          DBFF4A51DBFF3F46D8FF343CD5FFCACCF4FFFFFFFFFFFDFDFEFF8186E0FF2A33
          CCFF4C52D2FF353DC9FF2830B4E9101012130000000000000000000000000000
          0000000000001B1D3944121BBCFB3E46CCFF5158D3FF4950D3FF4950D4FF4950
          D6FF4950D7FF4950D8FF4950D8FF4950D9FF4950D9FF4950D9FF4950D9FF4950
          DAFF4950D8FF4C53D8FF373FD3FF575DDAFFDADBF6FF8388E0FF2A33CBFF4E54
          D2FF434ACDFF151EBBFB1B1D3844000000000000000000000000000000000000
          000000000000000000002F30434B1820BEFD333BC9FF5259D3FF4B52D3FF484F
          D3FF4950D4FF4950D5FF4950D6FF4950D7FF4950D7FF4950D7FF4950D7FF4950
          D7FF4950D7FF4950D6FF4A51D6FF4148D2FF4148D1FF3D45CFFF5056D3FF373E
          C9FF1C24BEFD2F31434B00000000000000000000000000000000000000000000
          000000000000000000000000000017193C4A2C33B3E6232CC5FF4A51D1FF4F56
          D3FF4A51D2FF4950D3FF4950D4FF4950D5FF4950D5FF4950D5FF4950D5FF4950
          D5FF4950D5FF4950D4FF4950D3FF4A51D2FF474ED1FF4B52D1FF2730C5FF2E36
          B3E617193C4A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F101618383C87A5252DC4FF333B
          C9FF4249CEFF5056D3FF5056D3FF4D53D3FF4A51D3FF4A51D3FF4A51D3FF4A51
          D3FF4C53D3FF4F56D3FF5057D2FF4249CEFF353DCAFF2830C5FF383D87A50F10
          1618000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001D1F3E4B292F
          94BD333BC7FF262EC4FF343CCAFF434BCFFF4E54D1FF4D54D2FF4D54D2FF4E54
          D2FF444CCFFF363DCAFF2730C5FF343CC7FF2A3094BD1D1F3E4B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000018192B322F32627531368DAF2A31A9D92129B2E7252CB2E6262DB2E6222A
          B2E72B32A9D931368CAF3032627518192B320000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 0
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        TabStop = False
        OnClick = cxSalvaFotoClick
      end
      object cxApagaFoto: TcxButton
        Left = 600
        Top = 149
        Width = 65
        Height = 39
        Hint = 'Limpa a Foto do Produto'
        Cancel = True
        LookAndFeel.Kind = lfOffice11
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F1F1F32414243754E5051AF4F5253D9484B4DE74A4D4EE64A4C4EE6484A
          4DE74F5153D94E5051AF414243751F1F1F320000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000292A2A4B4C4F
          4FBD5B5D5FFF45484BFF4A4D4FFF515357FF585A5DFF575A5CFF575A5CFF585A
          5DFF515457FF4A4D4FFF45474AFF5A5C5FFF4C4D4FBD292A2A4B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000012121218535556A5505254FF4A4D
          50FF4F5154FF595B5EFF5B5D60FF5C5E61FF5C5E61FF5D5F61FF5D5F61FF5C5E
          61FF5C5E61FF5B5D60FF585A5EFF4E5054FF4A4C4FFF4F5254FF535555A51212
          1218000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002324244A57585BE6414447FF545659FF5A5C
          5FFF5C5E60FF5E6063FF5F6163FF606265FF616366FF626466FF626466FF6163
          66FF606265FF5F6263FF5E6063FF5B5D61FF5A5C5FFF535658FF414446FF5758
          5BE62425254A0000000000000000000000000000000000000000000000000000
          000000000000000000003636364B525456FD525457FF58595DFF5C5E61FF5E60
          62FF626466FF636567FF636567FF656769FF66686AFF66686AFF66686AFF6668
          6AFF656769FF646568FF636567FF606264FF5E6163FF5C5E61FF585A5DFF474A
          4CFF494B4EFD3737384B00000000000000000000000000000000000000000000
          000000000000242525444A4D50FB727477FF686A6DFF5B5D5FFF616365FF5355
          57FF525456FF6A6C6EFF6B6D6FFF6A6C6EFF6B6D6FFF6B6D6FFF6B6D6FFF6B6C
          6FFF6A6C6EFF696B6DFF68696BFF55585AFF4E5052FF616365FF5E6063FF595B
          5FFF4D5052FF45474AFB25262744000000000000000000000000000000000000
          000011111113545659E965686AFF828587FF67696BFF5B5D5FFF505254FFA0A1
          A2FF848588FF47494CFF737577FF707274FF707173FF707274FF707274FF6F70
          73FF707173FF6C6E70FF575A5CFF9C9E9FFF8C8D90FF404144FF636566FF5D5F
          62FF595B5EFF45484AFF525457E9111111130000000000000000000000000000
          0000565758AD56585BFF828485FF818384FF6A6D6EFF48494CFF959799FFFFFF
          FFFFFFFFFFFF737578FF47494CFF7A7D7EFF77797AFF757778FF757778FF7677
          78FF737576FF5B5D5FFF929395FFFFFFFFFFFFFFFFFF808084FF3B3C40FF6264
          66FF5E6063FF595A5EFF3C4043FF585A5AAD0000000000000000000000002B2C
          2C444E5053FF7A7B7FFF7F8082FF848586FF5F6163FF929394FFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8FF737377FF4E5052FF818284FF7C7D7FFF7A7C7DFF787A
          7BFF636566FF979899FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF7F8083FF3F41
          44FF606265FF5C5E61FF525558FF434549FF2D2D2E4400000000000000005A5B
          5DC05D5F62FF7F8183FF7D7F81FF77797AFFAEAFAFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAFAFBFF737477FF4F5155FF898B8CFF818384FF6A6B
          6EFF9C9C9EFFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8B
          8EFF4D4F52FF5E6063FF595B5EFF404245FF5A5C5DC0000000002020202B5A5C
          5EFE727477FF7E8082FF808183FF797A7CFFB1B1B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F7FF727377FF56585AFF777879FFA1A2
          A3FFFBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B
          9DFF545758FF5F6163FF5B5D61FF4D5052FF505155FE2121212B484849785658
          5AFF808183FF7E8082FF818385FF86888AFF797A7DFF9D9E9FFFFAFAFAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9FAFF6B6C6FFF868789FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFF929395FF5759
          5CFF66686AFF616365FF5D5F61FF585A5DFF404245FF494A4A78515354B26567
          6AFF818285FF7F8183FF838486FF88898BFF8E8F90FF6F7172FF97999AFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F7FFF1F1F2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF979899FF5A5C5EFF6C6E
          70FF696B6DFF626566FF5E6062FF5B5C60FF474A4DFF515355B2515355D97375
          78FF7F8183FF818283FF848587FF888A8BFF8D8F90FF919293FF696B6CFF9B9C
          9EFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFF9C9C9EFF626465FF727375FF6F70
          72FF696B6DFF646668FF5F6163FF5B5D60FF515356FF4D4F52D94F5253E77B7D
          7FFF7E8082FF818385FF858688FF898A8CFF8D8E90FF959797FF8F9091FF686A
          6BFFA3A4A4FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A2A3FF686A6CFF78797BFF757778FF6F71
          73FF6A6C6EFF656769FF606264FF5B5D60FF57585CFF48494CE7525456E67B7D
          7FFF7E8082FF818384FF858788FF898B8DFF8D8E90FF919294FF9A9A9CFF8D8E
          8FFF6D6E6FFF9FA0A1FFF6F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEEEEFFF88888AFF767778FF808283FF797B7CFF747677FF6F71
          73FF6A6C6EFF656769FF606265FF5B5D60FF56595BFF494B4EE6525557E67C7D
          80FF7E8081FF818384FF858788FF898B8DFF8D8E90FF919294FF969799FF9C9D
          9FFF7D7E7EFF9B9B9CFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEFEFF0FF6C6C70FF565659FF88898AFF7B7C7EFF747677FF6F71
          73FF6A6C6EFF656769FF606265FF5B5D60FF56595BFF484B4DE64F5253E77C7D
          80FF7E8082FF818385FF858688FF898A8CFF8C8D8FFF919294FF939596FF898B
          8CFFB3B4B4FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8FF737478FF4E4F53FF808182FF767778FF6E6F
          72FF696B6DFF656769FF616364FF595B5EFF545559FF48494CE7515355D97375
          78FF7F8182FF818283FF848587FF88898BFF8C8E8FFF909192FF828485FFADAD
          AFFFFCFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FF727377FF4D4F50FF797A7BFF6F70
          73FF686A6DFF636567FF5B5D5FFF595B5EFF626466FF535457D9525254B26566
          6AFF808284FF7F8183FF828485FF87888AFF898B8DFF7C7E7FFFAAABACFFFCFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F9F9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFBFF747477FF46484BFF7073
          74FF656769FF5F6163FF66686AFF797A7DFF6B6D6FFF525456B2484849785558
          5BFF7F8084FF7E7F82FF828485FF868789FF787A7CFFA5A7A8FFFBFBFBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFAAAAABFFABACACFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF727476FF4648
          4CFF747577FF7A7B7DFF808183FF838487FF585A5CFF474848782020202B585B
          5DFE717376FF7D7F81FF7F8184FF797A7CFFAEAFB0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFB1B2B2FF8D8E8FFF8D8F8FFFB6B6
          B6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8485
          88FF707173FF868789FF7D7E81FF727476FF5B5D5FFE2020202B00000000595B
          5CC05C5E60FF7F8083FF7D7E80FF757779FFB2B2B3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFDFFADAEB0FF87898AFF999A9BFF98999BFF8788
          8AFFB1B2B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B2
          B3FF737576FF7D7E80FF7E7F82FF5E6061FF5A5B5DC000000000000000002B2C
          2C444C5052FF797B7EFF7E7F81FF7F8183FF717374FFABADAEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFBFCFFAAAAABFF818384FF939496FF949697FF949697FF9294
          95FF818284FFAEAEAFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFA8A9AAFF7274
          75FF7F8183FF7C7D80FF7A7B7EFF505254FF2B2C2C4400000000000000000000
          0000555658AD55585AFF818385FF7D7F82FF7E8082FF6E7073FFACADAEFFFFFF
          FFFFFFFFFFFFA6A6A8FF7C7C7FFF8F9091FF919293FF909192FF909192FF9091
          92FF8D8F90FF7B7D7EFFA9AAABFFFFFFFFFFFFFFFFFFA8A9AAFF6E7072FF7E7F
          81FF7C7E80FF808184FF575B5CFF555758AD0000000000000000000000000000
          000011111113535557E9636668FF7F8184FF7D7E81FF7E8081FF717375FFB3B4
          B5FFAEAFB1FF78797BFF898B8DFF8B8D8EFF8C8D8EFF8C8D8EFF8C8D8EFF8B8D
          8DFF8B8D8EFF888A8CFF77797BFFB0B0B2FFB1B3B3FF707274FF7E7F81FF7C7E
          80FF7F8083FF66676AFF545659E9101111130000000000000000000000000000
          00000000000024242544484B4EFB707273FF808183FF7D7F80FF7F8082FF7577
          79FF787A7BFF858688FF87888AFF87888AFF88898BFF888A8BFF888A8BFF8889
          8BFF87888AFF868789FF848587FF77787AFF767779FF7E7F82FF7C7E80FF7E7F
          83FF717375FF4A4D4FFB24242544000000000000000000000000000000000000
          000000000000000000003636364B4D4F52FD66676AFF808184FF7D7F81FF7C7D
          80FF7F8082FF818385FF818385FF838486FF848587FF848687FF848687FF8485
          87FF838486FF818385FF818384FF7F8082FF7C7D80FF7C7E80FF808183FF676A
          6CFF4E5153FD3536364B00000000000000000000000000000000000000000000
          00000000000000000000000000002323244A57585BE6595B5EFF7A7B7DFF7F80
          83FF7D7F81FF7E7F81FF7E8082FF7F8182FF808284FF818284FF818284FF8082
          84FF7F8182FF7E7F81FF7D7E80FF7C7E80FF7E7F82FF7A7B7DFF5B5D5FFF585A
          5CE62223234A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000011111218505253A5575A5DFF6567
          6AFF727477FF7E8082FF7F8183FF7E7F82FF7D7F81FF7D7E81FF7D7E81FF7D7E
          81FF7D7F82FF7E8082FF7E7F82FF727477FF66696BFF5A5C5EFF515253A51111
          1118000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002728294B4A4C
          4EBD636567FF595D5FFF66696BFF737578FF7C7D80FF7B7D7FFF7B7D80FF7C7D
          80FF747578FF67696CFF5A5D5FFF636668FF4B4C4EBD2728284B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E323F4041754D4F50AF525356D94F5052E7525456E6525557E64F52
          54E7535457D94E4F50AF3F4040751E1E1E320000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 0
        OptionsImage.Spacing = 0
        TabOrder = 23
        TabStop = False
        OnClick = cxApagaFotoClick
      end
      object cxLabel7: TcxLabel
        Left = 44
        Top = 178
        AutoSize = False
        Caption = 'Peso Atual:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 90
        AnchorX = 134
      end
      object ePesoAtual: TcxCurrencyEdit
        Left = 134
        Top = 178
        Hint = 'Peso Atual'
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '###,###,##0.000'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 31
        Width = 75
      end
      object eCor: TcxTextEdit
        Left = 404
        Top = 134
        Hint = 'Cor(es) do Animal'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 150
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 21
        Width = 130
      end
      object cxLabel9: TcxLabel
        Left = 305
        Top = 136
        AutoSize = False
        Caption = 'Cor:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 96
        AnchorX = 401
      end
      object cxLabel10: TcxLabel
        Left = 44
        Top = 69
        AutoSize = False
        Caption = 'Propriet'#225'rio:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 90
        AnchorX = 134
      end
      object eCodFornec: TcxButtonEdit
        Tag = 1
        Left = 134
        Top = 67
        Hint = '(F3) Busca Propriet'#225'rio'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD6D6D7ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E4E5959596BDBEBFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7979798C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEA9B9B9CC2C2C3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9E9E9FC2C2
              C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8ECECEDEDEDEDF2F2F2FF
              FFFFFFFFFFF3F3F39F9FA0C4C4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DCDCDDD7D7D8E6E6E6E9E9E8E1E2E2DCDCDEDADBDB9E9E9FDBDBDCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8E4E4E4FEFEFEFFFFFFFDFDFDFEFEFDFE
              FEFEC0C1C2DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEFD7D8D8
              FEFEFEFCFCFCF9F9F9F9F9F9F6F6F6F2F2F2F4F4F4E5E5E5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD3D3D4E5E6E6F8F8F8F9F9F9FEFEFEFCFCFCF6F6F6ED
              EDECEAEAEAD5D6D6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D3E5E5E5
              F2F2F2F9F9F9FCFCFCFBFBFBF7F7F7ECECEDE1E1E1D8D9D9ECECEDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD0D0D1DEDDDEF3F3F3FAFAFAFAFAFAFAFAFAF8F8F8F1
              F1F2E1E1E2D3D3D3EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8D0D1D1
              FFFFFFFBFBFBFAFAFAF9F9FAF8F8F8FEFEFEE4E4E5C4C5C6FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9FABCBDBEF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCECECFE3E3E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
              C1C1C2DFDFE0F5F4F5F9F9F9EEEEEED4D4D5CFD0D1FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F6D7D8D9D0D0D1D2D2D3CFCFD0E7
              E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodFornecPropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 11
        Text = '0'
        OnExit = eCodFornecExit
        OnKeyPress = eCodFornecKeyPress
        Height = 21
        Width = 60
      end
      object eFornec: TcxTextEdit
        Left = 194
        Top = 68
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 13366014
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 12
        Text = 'NENHUM'
        Width = 340
      end
      object cxLabel11: TcxLabel
        Left = 44
        Top = 114
        AutoSize = False
        Caption = 'Ra'#231'a:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 90
        AnchorX = 134
      end
      object eCodRaca: TcxButtonEdit
        Tag = 1
        Left = 134
        Top = 112
        Hint = '(F3) Busca pela Ra'#231'a'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD6D6D7ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E4E5959596BDBEBFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7979798C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEA9B9B9CC2C2C3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9E9E9FC2C2
              C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8ECECEDEDEDEDF2F2F2FF
              FFFFFFFFFFF3F3F39F9FA0C4C4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DCDCDDD7D7D8E6E6E6E9E9E8E1E2E2DCDCDEDADBDB9E9E9FDBDBDCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8E4E4E4FEFEFEFFFFFFFDFDFDFEFEFDFE
              FEFEC0C1C2DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEFD7D8D8
              FEFEFEFCFCFCF9F9F9F9F9F9F6F6F6F2F2F2F4F4F4E5E5E5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD3D3D4E5E6E6F8F8F8F9F9F9FEFEFEFCFCFCF6F6F6ED
              EDECEAEAEAD5D6D6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D3E5E5E5
              F2F2F2F9F9F9FCFCFCFBFBFBF7F7F7ECECEDE1E1E1D8D9D9ECECEDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD0D0D1DEDDDEF3F3F3FAFAFAFAFAFAFAFAFAF8F8F8F1
              F1F2E1E1E2D3D3D3EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8D0D1D1
              FFFFFFFBFBFBFAFAFAF9F9FAF8F8F8FEFEFEE4E4E5C4C5C6FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9FABCBDBEF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCECECFE3E3E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
              C1C1C2DFDFE0F5F4F5F9F9F9EEEEEED4D4D5CFD0D1FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F6D7D8D9D0D0D1D2D2D3CFCFD0E7
              E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodRacaPropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 15
        Text = '0'
        OnExit = eCodRacaExit
        OnKeyPress = eCodFornecKeyPress
        Height = 21
        Width = 60
      end
      object eRaca: TcxTextEdit
        Left = 194
        Top = 112
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 13366014
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 16
        Text = 'NENHUM'
        Width = 150
      end
      object cxLabel13: TcxLabel
        Left = 44
        Top = 136
        AutoSize = False
        Caption = 'Esp'#233'cie:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 90
        AnchorX = 134
      end
      object eCodEspecie: TcxButtonEdit
        Left = 134
        Top = 134
        Hint = '(F3) Busca de Especie'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD6D6D7ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E4E5959596BDBEBFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7979798C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEA9B9B9CC2C2C3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9E9E9FC2C2
              C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8ECECEDEDEDEDF2F2F2FF
              FFFFFFFFFFF3F3F39F9FA0C4C4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DCDCDDD7D7D8E6E6E6E9E9E8E1E2E2DCDCDEDADBDB9E9E9FDBDBDCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8E4E4E4FEFEFEFFFFFFFDFDFDFEFEFDFE
              FEFEC0C1C2DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEFD7D8D8
              FEFEFEFCFCFCF9F9F9F9F9F9F6F6F6F2F2F2F4F4F4E5E5E5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD3D3D4E5E6E6F8F8F8F9F9F9FEFEFEFCFCFCF6F6F6ED
              EDECEAEAEAD5D6D6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D3E5E5E5
              F2F2F2F9F9F9FCFCFCFBFBFBF7F7F7ECECEDE1E1E1D8D9D9ECECEDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD0D0D1DEDDDEF3F3F3FAFAFAFAFAFAFAFAFAF8F8F8F1
              F1F2E1E1E2D3D3D3EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D8D0D1D1
              FFFFFFFBFBFBFAFAFAF9F9FAF8F8F8FEFEFEE4E4E5C4C5C6FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9FABCBDBEF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFCECECFE3E3E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
              C1C1C2DFDFE0F5F4F5F9F9F9EEEEEED4D4D5CFD0D1FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F6D7D8D9D0D0D1D2D2D3CFCFD0E7
              E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodEspeciePropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 19
        Text = '0'
        OnExit = eCodEspecieExit
        OnKeyPress = eCodFornecKeyPress
        Height = 21
        Width = 60
      end
      object eEspecie: TcxTextEdit
        Left = 194
        Top = 134
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 13366014
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 20
        Text = 'NENHUM'
        Width = 150
      end
    end
  end
  object eFile2: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg *.jpeg)|*.jpg;*.jpeg'
    FilterIndex = 6
    Left = 602
    Top = 250
  end
  object UCControls1: TUCControls
    GroupName = 'Cadastro de Animais'
    UserControl = FPrinc.UserControl1
    Components = ''
    NotAllowed = naDisabled
    Left = 553
    Top = 259
  end
end
