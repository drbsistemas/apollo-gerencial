inherited Fcad_Endereco: TFcad_Endereco
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Endere'#231'os'
  ClientHeight = 541
  ClientWidth = 712
  FormStyle = fsNormal
  Visible = False
  WindowState = wsNormal
  ExplicitWidth = 718
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Top = 23
    Width = 654
    Height = 518
    ExplicitLeft = -6
    ExplicitTop = 26
    ExplicitHeight = 516
    inherited pnMenu: TPanel
      Width = 652
      TabOrder = 11
    end
    object cxLabel5: TcxLabel
      Left = 53
      Top = 189
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
      AnchorX = 128
    end
    object eEndereco: TcxTextEdit
      Tag = 1
      Left = 127
      Top = 187
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
      TabOrder = 5
      Width = 233
    end
    object cxLabel4: TcxLabel
      Left = 384
      Top = 189
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
      Top = 187
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
      TabOrder = 6
      Text = '        '
      Width = 40
    end
    object cxLabel10: TcxLabel
      Left = 90
      Top = 233
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
      AnchorX = 128
    end
    object eCep: TcxMaskEdit
      Left = 127
      Top = 231
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
      TabOrder = 8
      Text = '        '
      Width = 127
    end
    object cxLabel22: TcxLabel
      Left = 72
      Top = 254
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
      Height = 19
      Width = 56
      AnchorX = 128
    end
    object eCidade: TcxTextEdit
      Left = 127
      Top = 253
      Hint = 'Nome da Cidade'
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
      TabOrder = 9
      Width = 233
    end
    object eBairro: TcxTextEdit
      Left = 127
      Top = 209
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
      TabOrder = 7
      Width = 233
    end
    object cxLabel7: TcxLabel
      Left = 53
      Top = 211
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
      AnchorX = 128
    end
    object cxLabel9: TcxLabel
      Left = 385
      Top = 255
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
      Left = 408
      Top = 253
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
      TabOrder = 10
      Width = 31
    end
    object cxApelido: TcxLabel
      Left = 53
      Top = 122
      AutoSize = False
      Caption = 'Nome Local:'
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
      AnchorX = 128
    end
    object eNomeLocal: TcxTextEdit
      Tag = 1
      Left = 127
      Top = 120
      Hint = 'Nome do Local'
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
      TabOrder = 2
      Width = 321
    end
    object cxLabel20: TcxLabel
      Left = 71
      Top = 145
      AutoSize = False
      Caption = 'Contato:'
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
      Width = 57
      AnchorX = 128
    end
    object eContato: TcxTextEdit
      Tag = 1
      Left = 127
      Top = 142
      Hint = 'Nome do Contato'
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
      TabOrder = 3
      Width = 205
    end
    object cxLabel11: TcxLabel
      Left = 53
      Top = 167
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
      AnchorX = 128
    end
    object eFone: TcxMaskEdit
      Left = 127
      Top = 165
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
      TabOrder = 4
      Text = '          '
      Width = 120
    end
    object eCodigo: TcxTextEdit
      Left = 127
      Top = 97
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
      TabOrder = 0
      Width = 97
    end
    object cxLabel6: TcxLabel
      Left = 53
      Top = 99
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
      AnchorX = 128
    end
    object eAtivo: TcxCheckBox
      Left = 230
      Top = 97
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
      TabOrder = 1
      Width = 54
    end
  end
  inherited pnCon: TPanel
    Top = 23
    Width = 654
    Height = 518
    inherited pnBusca: TPanel
      Width = 652
      Height = 24
      ExplicitHeight = 24
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Nome Local'
          'Contato'
          'Endere'#231'o'
          'Fone')
        Text = 'C'#211'DIGO'
      end
      inherited cxLabel2: TcxLabel
        Left = 444
        ExplicitLeft = 444
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 652
      inherited cxApagar: TcxButton
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
      Top = 467
      Width = 652
    end
    inherited grConsulta: TcxGrid
      Top = 77
      Width = 652
      Height = 390
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsEndereco
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDEND'
          Width = 55
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Nome Local'
          DataBinding.FieldName = 'LOCALEND'
          Width = 250
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Fone'
          DataBinding.FieldName = 'FONEEND'
          Width = 120
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Endere'#231'o'
          DataBinding.FieldName = 'ENDERECOEND'
          Width = 250
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'N'#186
          DataBinding.FieldName = 'NUMEROEND'
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Cidade'
          DataBinding.FieldName = 'CIDADEEND'
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Uf'
          DataBinding.FieldName = 'UFEND'
        end
      end
    end
  end
  inherited pnImg: TcxImage
    Left = 654
    Top = 23
    Height = 518
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 0
    Width = 712
    Height = 23
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 710
    object cxLabel3: TcxLabel
      Left = -18
      Top = 3
      AutoSize = False
      Caption = 'Cliente:'
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
      AnchorX = 57
    end
    object eCodCliente: TcxTextEdit
      Left = 59
      Top = 1
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
      Width = 50
    end
    object eCliente: TcxTextEdit
      Left = 110
      Top = 1
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
      TabOrder = 2
      Width = 360
    end
  end
end
