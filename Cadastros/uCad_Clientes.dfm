inherited Fcad_Clientes: TFcad_Clientes
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 541
  ClientWidth = 907
  ExplicitWidth = 915
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 849
    Height = 541
    BevelOuter = bvNone
    ExplicitWidth = 849
    ExplicitHeight = 541
    inherited pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 849
      Height = 51
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 849
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
      Left = 132
      Top = 135
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
      Left = 132
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
      Left = 132
      Top = 223
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
      Left = 132
      Top = 245
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
      TabOrder = 17
      Width = 233
    end
    object eCidade: TcxButtonEdit
      Tag = 1
      Left = 132
      Top = 268
      Hint = 'Cidade'
      ParentFont = False
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
      Left = 58
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
      AnchorX = 133
    end
    object cxNome: TcxLabel
      Left = 52
      Top = 139
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
      AnchorX = 127
    end
    object cxApelido: TcxLabel
      Left = 58
      Top = 159
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
      AnchorX = 133
    end
    object cxLabel5: TcxLabel
      Left = 58
      Top = 225
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
      AnchorX = 133
    end
    object cxLabel7: TcxLabel
      Left = 58
      Top = 247
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
      AnchorX = 133
    end
    object cxLabel8: TcxLabel
      Left = 87
      Top = 269
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
      AnchorX = 131
    end
    object cxLabel9: TcxLabel
      Left = 385
      Top = 271
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
      AnchorX = 409
    end
    object eUf: TcxTextEdit
      Tag = 1
      Left = 408
      Top = 269
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
      Left = 446
      Top = 225
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
      AnchorX = 484
    end
    object eCep: TcxMaskEdit
      Left = 486
      Top = 223
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
      Left = 58
      Top = 203
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
      AnchorX = 133
    end
    object eFone: TcxMaskEdit
      Tag = 1
      Left = 132
      Top = 201
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
      Left = 89
      Top = 293
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
      AnchorX = 131
    end
    object eMail: TcxTextEdit
      Left = 132
      Top = 291
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
      Left = 402
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
      AnchorX = 484
    end
    object cxLabel15: TcxLabel
      Left = 58
      Top = 115
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
      AnchorX = 133
    end
    object cbtpclie: TcxComboBox
      Left = 133
      Top = 113
      Hint = 'Tipo de Cadastro'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'CLIENTE'
        'FORNECEDOR'
        'VENDEDOR'
        'TRANSPORTADORA')
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
      Left = 384
      Top = 115
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
      AnchorX = 484
    end
    object cbDtNascimento: TcxDateEdit
      Left = 483
      Top = 113
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
      Left = 58
      Top = 181
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
      AnchorX = 133
    end
    object eCpf: TcxMaskEdit
      Tag = 2
      Left = 133
      Top = 179
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
      Left = 408
      Top = 179
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
      Left = 347
      Top = 181
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
      AnchorX = 407
    end
    object cxLabel19: TcxLabel
      Left = 351
      Top = 203
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
      AnchorX = 407
    end
    object eCelular: TcxMaskEdit
      Left = 408
      Top = 201
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
      Left = 132
      Top = 313
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
      Left = 58
      Top = 314
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
      AnchorX = 133
    end
    object eAtivo: TcxCheckBox
      Left = 235
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
      Left = 285
      Top = 115
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
      AnchorX = 332
    end
    object cbPessoa: TcxComboBox
      Left = 332
      Top = 113
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
      Left = 483
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
      Left = 132
      Top = 157
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
      Left = 384
      Top = 225
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
      AnchorX = 407
    end
    object eNum: TcxMaskEdit
      Tag = 1
      Left = 408
      Top = 223
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
      Left = 444
      Top = 270
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
      Left = 408
      Top = 245
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
      TabOrder = 18
      Width = 205
    end
    object cxLabel22: TcxLabel
      Left = 371
      Top = 247
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
      AnchorX = 409
    end
    object cxJuridica: TPanel
      Left = 61
      Top = 178
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
  inherited pnCon: TPanel
    Width = 849
    Height = 541
    ExplicitWidth = 849
    ExplicitHeight = 541
    inherited pnBotaoCad: TPanel [0]
      Width = 847
      ExplicitWidth = 847
      inherited cxNovo: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxEdita: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxVer: TcxButton
        LookAndFeel.SkinName = ''
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
    inherited pnBusca: TPanel [1]
      Width = 847
      ExplicitWidth = 847
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
      inherited cxLabel2: TcxLabel
        Left = 626
        ExplicitLeft = 626
      end
      inherited cbAtivo: TcxComboBox
        Left = 659
        Properties.OnChange = cxConsultaPropertiesChange
        Style.IsFontAssigned = True
        ExplicitLeft = 659
      end
      inherited cxQtdeReg: TcxLabel
        Left = 740
        ExplicitLeft = 740
      end
      object cxTipoClie: TcxComboBox
        Left = 473
        Top = 1
        Hint = 'Tipo de Cadastro'
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'CLIENTE'
          'FORNECEDOR'
          'VENDEDOR'
          'TRANSPORTADORA')
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 7
        Text = 'CLIENTE'
        OnClick = cxConsultaPropertiesChange
        Width = 150
      end
      object cxLabel23: TcxLabel
        Left = 445
        Top = 3
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
        Width = 29
        AnchorX = 474
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 490
      Width = 847
      ExplicitTop = 490
      ExplicitWidth = 847
      inherited cxCadastro: TcxButton
        Left = 364
        LookAndFeel.SkinName = ''
        ExplicitLeft = 364
      end
      inherited cxFechar: TcxButton
        Left = 423
        LookAndFeel.SkinName = ''
        ExplicitLeft = 423
      end
    end
    inherited grConsulta: TcxGrid
      Width = 847
      Height = 414
      ExplicitWidth = 847
      ExplicitHeight = 414
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
  inherited pnImg: TcxImage
    Left = 849
    Properties.GraphicClassName = 'TdxPNGImage'
    Style.BorderStyle = ebsFlat
    ExplicitLeft = 849
    ExplicitHeight = 541
    Height = 541
  end
end
