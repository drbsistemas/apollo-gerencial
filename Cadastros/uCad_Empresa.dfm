inherited FCad_Empresa: TFCad_Empresa
  Caption = 'Tela de Configura'#231#245'es'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 718
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnImg: TcxImage [0]
    Left = 644
    ExplicitLeft = 644
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel
    Width = 644
    Height = 539
    TabOrder = 1
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Raz'#227'o')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cxNovo: TcxButton
        Enabled = False
      end
      inherited cxVer: TcxButton
        OnClick = cxVerClick
      end
      inherited cxApagar: TcxButton
        Enabled = False
        OnClick = cxApagarClick
      end
      inherited cxPrint: TcxButton
        Enabled = False
      end
      inherited cxOpcoes: TcxButton
        Enabled = False
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 488
      Width = 642
      ExplicitTop = 488
      ExplicitWidth = 642
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 412
      ExplicitWidth = 642
      ExplicitHeight = 412
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsConf
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDCONF'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOEMP'
          Width = 250
        end
        object grConsultaDBTableView1Column6: TcxGridDBColumn
          Caption = 'Fone'
          DataBinding.FieldName = 'FONEEMP'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.EditMask = '(99)9999-9999;0;_'
          Width = 100
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Cnpj'
          DataBinding.FieldName = 'CNPJEMP'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.EditMask = '99.999.999/9999-99;0;_'
          Width = 120
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'E-mail'
          DataBinding.FieldName = 'EMAILEMP'
          Width = 250
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Dt. Backup'
          DataBinding.FieldName = 'DATABACKUP'
          Width = 70
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Qtde. Lic'
          DataBinding.FieldName = 'QTDELIC'
          Width = 65
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Validade Lic.'
          DataBinding.FieldName = 'VALIDADELIC'
          Width = 80
        end
      end
    end
  end
  inherited pnCad: TPanel [2]
    Width = 644
    Height = 539
    TabOrder = 0
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      ExplicitWidth = 642
    end
    object eCodigo: TcxTextEdit
      Left = 122
      Top = 106
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
    object cxLabel19: TcxLabel
      Left = 23
      Top = 107
      AutoSize = False
      Caption = 'C'#243'digo:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eAtivo: TcxCheckBox
      Left = 225
      Top = 106
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
    object cxNome: TcxLabel
      Left = 23
      Top = 128
      AutoSize = False
      Caption = 'Raz'#227'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eRazao: TcxTextEdit
      Tag = 1
      Left = 122
      Top = 127
      Hint = 'Raz'#227'o/Nome da empresa.'
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
      TabOrder = 4
      Width = 481
    end
    object cxApelido: TcxLabel
      Left = 23
      Top = 149
      AutoSize = False
      Caption = 'Fantasia:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eFantasia: TcxTextEdit
      Left = 122
      Top = 148
      Hint = 'Fantasia/Apelido.'
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
      TabOrder = 6
      Width = 481
    end
    object cxLabel3: TcxLabel
      Left = 23
      Top = 170
      AutoSize = False
      Caption = 'Cnpj:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eCnpj: TcxMaskEdit
      Left = 122
      Top = 169
      Hint = 'Cnpj'
      TabStop = False
      ParentFont = False
      Properties.EditMask = '99.999.999/9999-99;0;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 8
      Text = '              '
      Width = 120
    end
    object cxLabel4: TcxLabel
      Left = 334
      Top = 171
      AutoSize = False
      Caption = 'Ie:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
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
      AnchorX = 399
    end
    object eIe: TcxMaskEdit
      Left = 398
      Top = 169
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
      TabOrder = 9
      Text = '              '
      Width = 120
    end
    object cxLabel5: TcxLabel
      Left = 23
      Top = 191
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eEndereco: TcxTextEdit
      Tag = 1
      Left = 122
      Top = 190
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
      TabOrder = 12
      Width = 233
    end
    object cxLabel6: TcxLabel
      Left = 371
      Top = 192
      AutoSize = False
      Caption = 'N'#186':'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
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
      Width = 28
      AnchorX = 399
    end
    object eNum: TcxMaskEdit
      Tag = 1
      Left = 398
      Top = 190
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
      TabOrder = 13
      Text = '        '
      Width = 40
    end
    object cxLabel9: TcxLabel
      Left = 436
      Top = 192
      AutoSize = False
      Caption = 'Cep:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
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
      AnchorX = 474
    end
    object eCep: TcxMaskEdit
      Left = 476
      Top = 190
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
      TabOrder = 14
      Text = '        '
      Width = 127
    end
    object cxLabel7: TcxLabel
      Left = 23
      Top = 212
      AutoSize = False
      Caption = 'Bairro:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eBairro: TcxTextEdit
      Left = 122
      Top = 211
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
      TabOrder = 18
      Width = 233
    end
    object eCidade: TcxButtonEdit
      Tag = 1
      Left = 122
      Top = 232
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
      TabOrder = 22
      Width = 233
    end
    object cxLabel10: TcxLabel
      Left = 23
      Top = 234
      AutoSize = False
      Caption = 'Cidade:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object cxLabel8: TcxLabel
      Left = 370
      Top = 235
      AutoSize = False
      Caption = 'Uf:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
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
      AnchorX = 399
    end
    object eUf: TcxTextEdit
      Tag = 1
      Left = 398
      Top = 233
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
      TabOrder = 23
      Width = 31
    end
    object eIbge: TcxMaskEdit
      Left = 434
      Top = 233
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
      TabOrder = 24
      Text = '        '
      Visible = False
      Width = 40
    end
    object eComplemento: TcxTextEdit
      Left = 398
      Top = 211
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
      TabOrder = 19
      Width = 205
    end
    object cxLabel11: TcxLabel
      Left = 356
      Top = 213
      AutoSize = False
      Caption = 'Compl:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
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
      Width = 43
      AnchorX = 399
    end
    object cxLabel12: TcxLabel
      Left = 23
      Top = 255
      AutoSize = False
      Caption = 'Contato:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eContato: TcxTextEdit
      Left = 122
      Top = 254
      Hint = 'Contato na empresa.'
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
      TabOrder = 27
      Width = 481
    end
    object cxLabel13: TcxLabel
      Left = 23
      Top = 276
      AutoSize = False
      Caption = 'Fone:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eFone: TcxMaskEdit
      Tag = 1
      Left = 122
      Top = 275
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
      TabOrder = 29
      Text = '          '
      Width = 120
    end
    object cxLabel14: TcxLabel
      Left = 23
      Top = 297
      AutoSize = False
      Caption = 'Email:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eEmail: TcxTextEdit
      Left = 122
      Top = 296
      Hint = 'E-mail da empresa.'
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
      TabOrder = 31
      Width = 481
    end
    object cxLabel15: TcxLabel
      Left = 23
      Top = 320
      AutoSize = False
      Caption = 'Site:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 21
      Width = 100
      AnchorX = 123
    end
    object eSite: TcxTextEdit
      Left = 122
      Top = 317
      Hint = 'Contato na empresa.'
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
      TabOrder = 33
      Width = 481
    end
    object cxPage: TcxPageControl
      Left = -10
      Top = 342
      Width = 654
      Height = 135
      TabOrder = 35
      Properties.ActivePage = cxEmail
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 11
      Properties.TabWidth = 100
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 133
      ClientRectLeft = 2
      ClientRectRight = 652
      ClientRectTop = 22
      object cxEspecificos: TcxTabSheet
        Caption = 'Dados Espec'#237'ficos'
        ImageIndex = 0
        object cxLabel18: TcxLabel
          Left = 45
          Top = 6
          AutoSize = False
          Caption = 'Logo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 19
          Width = 79
          AnchorX = 124
        end
        object cxLabel16: TcxLabel
          Left = 18
          Top = 28
          AutoSize = False
          Caption = 'Dt. '#218'ltimo Backup:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
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
          Width = 111
          AnchorX = 129
        end
        object eDataBkp: TcxTextEdit
          Left = 130
          Top = 26
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 13366014
          TabOrder = 2
          Width = 120
        end
        object cxLabel20: TcxLabel
          Left = 251
          Top = 28
          AutoSize = False
          Caption = 'Val. Lic:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
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
          Width = 59
          AnchorX = 310
        end
        object eDataLic: TcxTextEdit
          Left = 313
          Top = 26
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 13366014
          TabOrder = 3
          Width = 120
        end
        object eQtdeLic: TcxTextEdit
          Left = 479
          Top = 26
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 13366014
          TabOrder = 4
          Width = 50
        end
        object cxLabel21: TcxLabel
          Left = 434
          Top = 28
          AutoSize = False
          Caption = 'N'#186' Lic:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
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
          AnchorX = 478
        end
        object cbLogo: TcxShellComboBox
          Left = 130
          Top = 3
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          Properties.ViewOptions = [scvoShowFiles, scvoShowHidden]
          StyleFocused.Color = 13366014
          TabOrder = 0
          Width = 400
        end
        object eBackup: TcxShellComboBox
          Left = 130
          Top = 47
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          Properties.ViewOptions = [scvoShowFiles, scvoShowHidden]
          StyleFocused.Color = 13366014
          TabOrder = 8
          Width = 400
        end
        object cxLabel22: TcxLabel
          Left = 18
          Top = 50
          AutoSize = False
          Caption = 'Prog. Backup:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
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
          Width = 111
          AnchorX = 129
        end
        object cxLabel23: TcxLabel
          Left = 18
          Top = 72
          AutoSize = False
          Caption = 'Pasta Servidor:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
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
          Width = 111
          AnchorX = 129
        end
        object ePastaServidor: TcxShellComboBox
          Left = 130
          Top = 69
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          StyleFocused.Color = 13366014
          TabOrder = 10
          Width = 400
        end
      end
      object cxEmail: TcxTabSheet
        Caption = 'Conf. de E-mail'
        ImageIndex = 0
        object eHost: TcxTextEdit
          Left = 130
          Top = 8
          Hint = 'Host de configura'#231#227'o ex (smtp.meudominio.com.br).'
          ParentFont = False
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 15921919
          TabOrder = 0
          Width = 400
        end
        object eUsuario: TcxTextEdit
          Left = 130
          Top = 30
          Hint = 'Nome de usu'#225'rio do e-mail (geralmente '#233' o pr'#243'prio e-mail).'
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          StyleFocused.Color = 15921919
          TabOrder = 1
          Width = 400
        end
        object eSenha: TcxTextEdit
          Left = 130
          Top = 52
          Hint = 'Digite a senha para o e-mail'
          ParentFont = False
          Properties.CharCase = ecLowerCase
          Properties.EchoMode = eemPassword
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 15921919
          TabOrder = 2
          Width = 130
        end
        object cbSSL: TcxComboBox
          Left = 325
          Top = 52
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SIM'
            'N'#195'O')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Text = 'SIM'
          Width = 65
        end
        object ePorta: TcxTextEdit
          Left = 470
          Top = 52
          Hint = 'Host de configura'#231#227'o ex (smtp.meudominio.com.br).'
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          StyleFocused.Color = 15921919
          TabOrder = 4
          Width = 60
        end
        object cxLabel17: TcxLabel
          Left = 27
          Top = 8
          AutoSize = False
          Caption = 'Host:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 21
          Width = 100
          AnchorX = 127
        end
        object cxLabel24: TcxLabel
          Left = 24
          Top = 30
          AutoSize = False
          Caption = 'Usu'#225'rio:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 21
          Width = 100
          AnchorX = 124
        end
        object cxLabel25: TcxLabel
          Left = 31
          Top = 52
          AutoSize = False
          Caption = 'Senha:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 21
          Width = 100
          AnchorX = 131
        end
        object cxLabel26: TcxLabel
          Left = 222
          Top = 54
          AutoSize = False
          Caption = 'SSL Ativo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 21
          Width = 100
          AnchorX = 322
        end
        object cxLabel27: TcxLabel
          Left = 368
          Top = 54
          AutoSize = False
          Caption = 'Porta Sa'#237'da:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 21
          Width = 100
          AnchorX = 468
        end
        object cxButton1: TcxButton
          Left = 536
          Top = 46
          Width = 75
          Height = 25
          Caption = 'cxButton1'
          TabOrder = 10
          OnClick = cxButton1Click
        end
      end
    end
  end
end
