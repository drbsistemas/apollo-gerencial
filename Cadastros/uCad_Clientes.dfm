inherited Fcad_Clientes: TFcad_Clientes
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 541
  ClientWidth = 704
  ExplicitWidth = 720
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel [0]
    Width = 646
    Height = 541
    ExplicitWidth = 646
    ExplicitHeight = 541
    inherited pnBusca: TPanel
      Width = 644
      ExplicitWidth = 644
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Raz'#227'o'
          'Fantasia'
          'Fone'
          'Celular'
          'CNPJ'
          'CPF')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Left = 476
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = cxConsultaPropertiesChange
        Style.IsFontAssigned = True
        ExplicitLeft = 476
      end
      inherited cxQtdeReg: TcxLabel
        Left = 557
        ExplicitLeft = 557
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 644
      ExplicitWidth = 644
      inherited cxNovo: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxEdita: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxVer: TcxButton
        LookAndFeel.SkinName = ''
        OnClick = cxVerClick
      end
      inherited cxApagar: TcxButton
        LookAndFeel.SkinName = ''
        OnClick = cxApagarClick
      end
      inherited cxVoltar: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxPrint: TcxButton
        LookAndFeel.SkinName = ''
        OnClick = cxPrintClick
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 490
      Width = 644
      ExplicitTop = 490
      ExplicitWidth = 644
      inherited cxCadastro: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxFechar: TcxButton
        LookAndFeel.SkinName = ''
      end
    end
    inherited grConsulta: TcxGrid
      Width = 644
      Height = 415
      ExplicitWidth = 644
      ExplicitHeight = 415
      inherited grConsultaDBTableView1: TcxGridDBTableView
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Fantasia'
          DataBinding.FieldName = 'FANTASIA'
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Fone'
          DataBinding.FieldName = 'FONE'
          Width = 100
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Celular'
          DataBinding.FieldName = 'CELULAR'
          Width = 100
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Cnpj'
          DataBinding.FieldName = 'CNPJ'
          Width = 130
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Endere'#231'o'
          DataBinding.FieldName = 'ENDERECO'
          Width = 200
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'N'#186
          DataBinding.FieldName = 'NUMERO'
          Width = 40
        end
        object grConsultaDBTableView1Column6: TcxGridDBColumn
          Caption = 'Cidade'
          DataBinding.FieldName = 'CIDADE'
          Width = 150
        end
        object grConsultaDBTableView1Column7: TcxGridDBColumn
          Caption = 'Uf'
          DataBinding.FieldName = 'UF'
        end
        object grConsultaDBTableView1Column8: TcxGridDBColumn
          Caption = 'Bairro'
          DataBinding.FieldName = 'BAIRRO'
          Width = 150
        end
        object grConsultaDBTableView1Column9: TcxGridDBColumn
          Caption = 'Obs'
          DataBinding.FieldName = 'OBS'
          Width = 1000
        end
      end
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 646
    Properties.GraphicClassName = 'TdxPNGImage'
    Style.BorderStyle = ebsFlat
    ExplicitLeft = 646
    ExplicitHeight = 541
    Height = 541
  end
  inherited pnCad: TPanel [2]
    Width = 646
    Height = 541
    BevelOuter = bvNone
    ExplicitWidth = 646
    ExplicitHeight = 541
    inherited pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 646
      Height = 51
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 646
      ExplicitHeight = 51
      inherited cxSalvar: TcxButton
        Left = 56
        Top = 1
        LookAndFeel.SkinName = ''
        ExplicitLeft = 56
        ExplicitTop = 1
      end
      inherited cxCancela: TcxButton
        Top = 1
        LookAndFeel.SkinName = ''
        ExplicitTop = 1
      end
    end
    object eRazao: TcxTextEdit
      Tag = 1
      Left = 97
      Top = 133
      Hint = 'Raz'#227'o/Nome do Cliente.'
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
      TabOrder = 7
      Width = 481
    end
    object eCodigo: TcxTextEdit
      Left = 97
      Top = 91
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
    object eEndereco: TcxTextEdit
      Tag = 1
      Left = 97
      Top = 217
      Hint = 'Endere'#231'o/Logradouro'
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
      TabOrder = 14
      Width = 233
    end
    object eBairro: TcxTextEdit
      Left = 97
      Top = 238
      Hint = 'Bairro ou Zona'
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
      TabOrder = 20
      Width = 233
    end
    object eCidade: TcxButtonEdit
      Tag = 1
      Left = 97
      Top = 260
      Hint = 'Cidade'
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
            AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
            FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
            8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
            C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
            E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
            00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
            FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
            FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
            4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
            E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
            FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
            60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
            EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
            E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
            D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
            AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Properties.MaxLength = 150
      Properties.ReadOnly = True
      Properties.OnButtonClick = eCidadePropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 26
      Width = 233
    end
    object cxLabel3: TcxLabel
      Left = 23
      Top = 93
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
      AnchorX = 98
    end
    object cxNome: TcxLabel
      Left = 17
      Top = 137
      AutoSize = False
      Caption = 'Raz'#227'o:'
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
      AnchorX = 92
    end
    object cxApelido: TcxLabel
      Left = 23
      Top = 156
      AutoSize = False
      Caption = 'Fantasia:'
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
      AnchorX = 98
    end
    object cxLabel5: TcxLabel
      Left = 23
      Top = 219
      AutoSize = False
      Caption = 'Endere'#231'o:'
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
      AnchorX = 98
    end
    object cxLabel7: TcxLabel
      Left = 23
      Top = 240
      AutoSize = False
      Caption = 'Bairro:'
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
      AnchorX = 98
    end
    object cxLabel8: TcxLabel
      Left = 52
      Top = 261
      AutoSize = False
      Caption = 'Cidade:'
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
      Width = 44
      AnchorX = 96
    end
    object cxLabel9: TcxLabel
      Left = 350
      Top = 263
      AutoSize = False
      Caption = 'Uf:'
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
      Width = 24
      AnchorX = 374
    end
    object eUf: TcxTextEdit
      Tag = 1
      Left = 373
      Top = 261
      Hint = 'Uf (Estado)'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 2
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 30
      OnExit = eUfExit
      Width = 31
    end
    object cxLabel10: TcxLabel
      Left = 411
      Top = 219
      AutoSize = False
      Caption = 'Cep:'
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
      Width = 38
      AnchorX = 449
    end
    object eCep: TcxMaskEdit
      Left = 451
      Top = 217
      Hint = 'Cep dos correios'
      ParentFont = False
      Properties.EditMask = '99.999-999;0;_'
      Properties.MaxLength = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 16
      Text = '        '
      Width = 127
    end
    object cxLabel11: TcxLabel
      Left = 23
      Top = 198
      AutoSize = False
      Caption = 'Fone:'
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
      AnchorX = 98
    end
    object eFone: TcxMaskEdit
      Tag = 1
      Left = 97
      Top = 196
      Hint = 'Telefone de contato'
      ParentFont = False
      ParentShowHint = False
      Properties.EditMask = '!\(99\)0000-0000;0;_'
      Properties.MaxLength = 0
      ShowHint = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 12
      Text = '          '
      Width = 120
    end
    object cxLabel13: TcxLabel
      Left = 54
      Top = 285
      AutoSize = False
      Caption = 'Email:'
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
      Width = 42
      AnchorX = 96
    end
    object eMail: TcxTextEdit
      Left = 97
      Top = 283
      Hint = 'Email de contato'
      ParentFont = False
      Properties.CharCase = ecLowerCase
      Properties.MaxLength = 200
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 38
      Width = 482
    end
    object cxLabel14: TcxLabel
      Left = 367
      Top = 93
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
      AnchorX = 449
    end
    object cxLabel15: TcxLabel
      Left = 23
      Top = 114
      AutoSize = False
      Caption = 'Tipo:'
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
      AnchorX = 98
    end
    object cbtpclie: TcxComboBox
      Left = 98
      Top = 112
      Hint = 'Tipo de Cadastro'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'CLIENTE'
        'FORNECEDOR'
        'VENDEDOR')
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 4
      Text = 'CLIENTE'
      Width = 150
    end
    object cxLabel16: TcxLabel
      Left = 349
      Top = 114
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
      Width = 100
      AnchorX = 449
    end
    object cbDtNascimento: TcxDateEdit
      Left = 448
      Top = 112
      Hint = 'Data de Nascimento/Cria'#231#227'o se empresa'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 6
      OnExit = cbDtNascimentoExit
      Width = 130
    end
    object cxLabel17: TcxLabel
      Left = 23
      Top = 177
      AutoSize = False
      Caption = 'Cpf:'
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
      AnchorX = 98
    end
    object eCpf: TcxMaskEdit
      Tag = 2
      Left = 98
      Top = 175
      Hint = 'Cpf (Cadastro de pessoa f'#237'sica)'
      ParentFont = False
      Properties.EditMask = '999.999.999-99;0;_'
      Properties.MaxLength = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 10
      Text = '           '
      OnExit = eCpfExit
      Width = 120
    end
    object eRg: TcxMaskEdit
      Left = 373
      Top = 175
      Hint = 'Rg (identidade)'
      ParentFont = False
      Properties.MaxLength = 20
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 11
      Text = '              '
      Width = 120
    end
    object cxLabel18: TcxLabel
      Left = 312
      Top = 177
      AutoSize = False
      Caption = 'Rg:'
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
      Width = 60
      AnchorX = 372
    end
    object cxLabel19: TcxLabel
      Left = 316
      Top = 198
      AutoSize = False
      Caption = 'Celular:'
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
      Width = 56
      AnchorX = 372
    end
    object eCelular: TcxMaskEdit
      Left = 373
      Top = 196
      Hint = 'Celular de contato'
      ParentFont = False
      Properties.EditMask = '!\(99\)0000-0000;0;_'
      Properties.MaxLength = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 13
      Text = '          '
      Width = 120
    end
    object eObs: TcxTextEdit
      Left = 97
      Top = 304
      Hint = 'Observa'#231#227'o'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 42
      Width = 482
    end
    object cxLabel20: TcxLabel
      Left = 23
      Top = 305
      AutoSize = False
      Caption = 'Observa'#231#227'o:'
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
      AnchorX = 98
    end
    object eAtivo: TcxCheckBox
      Left = 200
      Top = 91
      Hint = 'Cadastro Ativo'
      Caption = 'Ativo'
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
      Width = 54
    end
    object cxLabel21: TcxLabel
      Left = 250
      Top = 114
      AutoSize = False
      Caption = 'Pessoa:'
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
      Width = 47
      AnchorX = 297
    end
    object cbPessoa: TcxComboBox
      Left = 297
      Top = 112
      Hint = 'Tipo de Pessoa'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA')
      Properties.OnChange = cbPessoaPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 5
      Text = 'F'#205'SICA'
      Width = 98
    end
    object eDtCad: TcxDateEdit
      Left = 448
      Top = 91
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
    object eFantasia: TcxTextEdit
      Left = 97
      Top = 154
      Hint = 'Fantasia/Apelido'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 8
      Width = 481
    end
    object cxLabel4: TcxLabel
      Left = 349
      Top = 219
      AutoSize = False
      Caption = 'N'#186':'
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
      Width = 23
      AnchorX = 372
    end
    object eNum: TcxMaskEdit
      Tag = 1
      Left = 373
      Top = 217
      Hint = 'N'#250'mero'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 10
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 15
      Text = '        '
      Width = 40
    end
    object eIbge: TcxMaskEdit
      Left = 409
      Top = 262
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Style.Color = clMaroon
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 15921919
      TabOrder = 31
      Text = '        '
      Visible = False
      Width = 40
    end
    object eComplemento: TcxTextEdit
      Left = 373
      Top = 238
      Hint = 'Complemento'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 100
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 21
      Width = 205
    end
    object cxLabel22: TcxLabel
      Left = 336
      Top = 240
      AutoSize = False
      Caption = 'Compl:'
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
      Width = 38
      AnchorX = 374
    end
    object cxJuridica: TPanel
      Left = 26
      Top = 174
      Width = 552
      Height = 22
      BevelOuter = bvNone
      TabOrder = 9
      object cxLabel6: TcxLabel
        Left = 11
        Top = 3
        AutoSize = False
        Caption = 'Cnpj:'
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
        Width = 60
        AnchorX = 71
      end
      object eCnpj: TcxMaskEdit
        Tag = 2
        Left = 71
        Top = 1
        Hint = 'Cnpj'
        ParentFont = False
        Properties.EditMask = '99.999.999/9999-99;0;_'
        Properties.MaxLength = 0
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 0
        Text = '              '
        OnExit = eCnpjExit
        Width = 120
      end
      object cxLabel12: TcxLabel
        Left = 286
        Top = 3
        AutoSize = False
        Caption = 'Ie:'
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
        Width = 60
        AnchorX = 346
      end
      object eIe: TcxMaskEdit
        Left = 347
        Top = 1
        Hint = 'Inscri'#231#227'o Estadual'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 20
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 1
        Text = '              '
        Width = 120
      end
    end
  end
end
