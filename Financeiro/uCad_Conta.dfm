inherited Fcad_Contas: TFcad_Contas
  Caption = 'Cadastro de Contas'
  ClientHeight = 539
  ClientWidth = 790
  ExplicitWidth = 798
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel [0]
    Width = 732
    Height = 539
    ExplicitWidth = 732
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 730
      TabOrder = 22
      ExplicitWidth = 730
    end
    object eCodigo: TcxTextEdit
      Left = 117
      Top = 73
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
    object cxLabel3: TcxLabel
      Left = 43
      Top = 75
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
      AnchorX = 118
    end
    object eCodOrigem: TcxTextEdit
      Left = 117
      Top = 95
      Hint = 'C'#243'digo Interno da Origem da Movimenta'#231#227'o'
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
      Width = 97
    end
    object cxLabel4: TcxLabel
      Left = 43
      Top = 97
      AutoSize = False
      Caption = 'C'#243'd Origem:'
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
      AnchorX = 118
    end
    object eOrigem: TcxTextEdit
      Left = 214
      Top = 95
      Hint = 'Origem da Movimenta'#231#227'o'
      TabStop = False
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 3
      Width = 131
    end
    object cxLabel14: TcxLabel
      Left = 323
      Top = 75
      AutoSize = False
      Caption = 'Dt. Lancto:'
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
    object eDtLancamento: TcxDateEdit
      Left = 404
      Top = 73
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
      TabOrder = 1
      Width = 130
    end
    object cxLabel5: TcxLabel
      Left = 376
      Top = 97
      Caption = 'Tipo:'
      Style.TextColor = clBlack
      Transparent = True
    end
    object cxTipoConta: TcxComboBox
      Left = 404
      Top = 95
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'RECEBER'
        'PAGAR')
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 4
      Text = 'RECEBER'
      OnClick = cxConsultaPropertiesChange
      Width = 130
    end
    object cxLabel6: TcxLabel
      Left = 43
      Top = 119
      AutoSize = False
      Caption = 'Documento:'
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
      AnchorX = 118
    end
    object eDocumento: TcxTextEdit
      Tag = 1
      Left = 117
      Top = 117
      Hint = 'N'#250'mero do Documento que Originou a Movimenta'#231#227'o'
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
      TabOrder = 5
      Width = 228
    end
    object cxLabel7: TcxLabel
      Left = 330
      Top = 119
      AutoSize = False
      Caption = 'Status:'
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
      AnchorX = 405
    end
    object eStatus: TcxTextEdit
      Left = 404
      Top = 117
      Hint = 'Status da Movimenta'#231#227'o'
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
      TabOrder = 6
      Width = 130
    end
    object cxLabel10: TcxLabel
      Left = 28
      Top = 163
      AutoSize = False
      Caption = 'Cliente:'
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
      AnchorX = 118
    end
    object eCodClie: TcxButtonEdit
      Tag = 1
      Left = 117
      Top = 161
      Hint = '(F3) Busca Dados do Cadastro'
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
      Properties.OnButtonClick = eCodCliePropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 9
      Text = '0'
      OnExit = eCodClieExit
      OnKeyPress = eCodPlanoKeyPress
      Height = 21
      Width = 60
    end
    object eCliente: TcxTextEdit
      Left = 179
      Top = 161
      Hint = 'Descri'#231#227'o do Cadastro'
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
      TabOrder = 10
      Text = 'NENHUM'
      Width = 355
    end
    object cxLabel9: TcxLabel
      Left = 36
      Top = 185
      AutoSize = False
      Caption = 'Dt. Emiss'#227'o:'
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
      AnchorX = 118
    end
    object eDtEmissao: TcxDateEdit
      Left = 117
      Top = 183
      Hint = 'Data de Emiss'#227'o'
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 130
    end
    object cxLabel11: TcxLabel
      Left = 322
      Top = 185
      AutoSize = False
      Caption = 'Dt. Vencimento:'
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
      AnchorX = 404
    end
    object eDtVencimento: TcxDateEdit
      Left = 404
      Top = 183
      Hint = 'Data de Vencimento'
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 12
      OnExit = eDtVencimentoExit
      Width = 130
    end
    object cxLabel12: TcxLabel
      Left = 36
      Top = 207
      AutoSize = False
      Caption = 'Hist'#243'rico:'
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
      AnchorX = 118
    end
    object eHistorico: TcxTextEdit
      Left = 117
      Top = 205
      Hint = 'Hist'#243'rico de Movimenta'#231#227'o'
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
      TabOrder = 13
      Width = 417
    end
    object cxLabel13: TcxLabel
      Left = 36
      Top = 229
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
      Width = 82
      AnchorX = 118
    end
    object eObs: TcxTextEdit
      Left = 117
      Top = 227
      Hint = 'Observa'#231#227'o de Movimenta'#231#227'o'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Properties.ReadOnly = False
      Style.Color = clWhite
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
      TabOrder = 14
      Width = 417
    end
    object eValorInicial: TcxCurrencyEdit
      Tag = 1
      Left = 117
      Top = 249
      Hint = 'Valor Inicial da Movimenta'#231#227'o'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 15
      OnExit = eValorInicialExit
      Width = 75
    end
    object cxLabel15: TcxLabel
      Left = 28
      Top = 251
      AutoSize = False
      Caption = 'Vlr Inicial:'
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
      AnchorX = 118
    end
    object eValorJuros: TcxCurrencyEdit
      Left = 282
      Top = 249
      Hint = 'Valor de Juros Adicionais'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 16
      OnExit = eValorInicialExit
      Width = 75
    end
    object cxLabel16: TcxLabel
      Left = 192
      Top = 251
      AutoSize = False
      Caption = 'Vlr Juros (+):'
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
      AnchorX = 282
    end
    object cxLabel17: TcxLabel
      Left = 369
      Top = 251
      AutoSize = False
      Caption = 'Vlr Multa (+):'
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
      AnchorX = 459
    end
    object eValorMulta: TcxCurrencyEdit
      Left = 459
      Top = 249
      Hint = 'Valor de Multas Adicionais'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 17
      OnExit = eValorInicialExit
      Width = 75
    end
    object eValorDesconto: TcxCurrencyEdit
      Left = 117
      Top = 271
      Hint = 'Valor de Desconto'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 18
      OnExit = eValorInicialExit
      Width = 75
    end
    object cxLabel18: TcxLabel
      Left = 28
      Top = 273
      AutoSize = False
      Caption = 'Vlr Desc (-):'
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
      AnchorX = 118
    end
    object eValorTotal: TcxCurrencyEdit
      Left = 282
      Top = 271
      Hint = 'Valor de Total da Movimenta'#231#227'o'
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 19
      OnExit = eValorInicialExit
      Width = 75
    end
    object cxLabel20: TcxLabel
      Left = 192
      Top = 273
      AutoSize = False
      Caption = 'Vlr Total (=):'
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
      AnchorX = 282
    end
    object cxLabel21: TcxLabel
      Left = 28
      Top = 320
      AutoSize = False
      Caption = 'Vlr Pago:'
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
      AnchorX = 118
    end
    object eValorPago: TcxCurrencyEdit
      Left = 117
      Top = 318
      Hint = 'Valor Pago da Conta'
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 20
      Width = 75
    end
    object eDtPagamento: TcxDateEdit
      Left = 282
      Top = 318
      Hint = 'Data de Pagamento'
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
      TabOrder = 21
      Width = 130
    end
    object cxLabel22: TcxLabel
      Left = 201
      Top = 320
      AutoSize = False
      Caption = 'Dt. Pagamento:'
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
      AnchorX = 283
    end
    object cxLabel8: TcxLabel
      Left = 28
      Top = 141
      AutoSize = False
      Caption = 'Plano Cta:'
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
      AnchorX = 118
    end
    object eCodPlano: TcxButtonEdit
      Tag = 1
      Left = 117
      Top = 139
      Hint = '(F3) Busca Registro do Cadastro'
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
      Properties.OnButtonClick = eCodPlanoPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 7
      Text = '0'
      OnExit = eCodPlanoExit
      OnKeyPress = eCodPlanoKeyPress
      Height = 21
      Width = 60
    end
    object ePlanoCta: TcxTextEdit
      Left = 179
      Top = 139
      Hint = 'Descri'#231#227'o do Cadastro'
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
      TabOrder = 8
      Text = 'NENHUM'
      Width = 355
    end
    object cxGrid1: TcxGrid
      Left = 118
      Top = 352
      Width = 438
      Height = 186
      Hint = 'Grid de Dados'
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 43
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      RootLevelOptions.TabsForEmptyDetails = False
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = grConsultaDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = grConsultaDBTableView1CustomDrawCell
        DataController.DataSource = dsRateio
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
        OptionsView.GroupByBox = False
        object cxGridDBColumn14: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 259
        end
        object cxGridDBColumn15: TcxGridDBColumn
          Caption = 'Perc (%)'
          DataBinding.FieldName = 'VLRPERC'
          Width = 75
        end
        object cxGridDBTableView2Column1: TcxGridDBColumn
          Caption = 'Vlr. Rateio'
          DataBinding.FieldName = 'VLRRATEIO'
          Width = 75
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxLabel23: TcxLabel
      Left = 117
      Top = 300
      AutoSize = False
      Caption = 'Dados do Pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 166
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 732
    ExplicitLeft = 732
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel [2]
    Width = 732
    Height = 539
    ExplicitWidth = 732
    ExplicitHeight = 539
    object pnSelec: TPanel [0]
      Left = 1
      Top = 253
      Width = 730
      Height = 234
      Align = alBottom
      TabOrder = 4
      Visible = False
      object grConsulta2: TcxGrid
        Left = 1
        Top = 25
        Width = 728
        Height = 208
        Hint = 'Grid de Dados'
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Black'
        RootLevelOptions.TabsForEmptyDetails = False
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
          DataController.DataSource = dmFin.dsSelec
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'St'
            DataBinding.FieldName = 'STATUS'
            OnGetCellHint = cxGridDBColumn1GetCellHint
            Width = 30
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'IDCONTA'
            Width = 60
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLIE'
            Width = 300
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Dt. Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'DOCUMENTO'
            Width = 100
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Dt. Vencto'
            DataBinding.FieldName = 'DTVENCTO'
            Width = 100
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Vlr. Inicial'
            DataBinding.FieldName = 'VLRINI'
            Width = 75
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Vlr. Juros'
            DataBinding.FieldName = 'VLRJUROS'
            Width = 75
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Vlr. Multa'
            DataBinding.FieldName = 'VLRMULTA'
            Width = 75
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Vlr. Desc'
            DataBinding.FieldName = 'VLRDESC'
            Width = 75
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Vlr. Total'
            DataBinding.FieldName = 'VLRBRUTO'
            Width = 75
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Dias Atraso'
            DataBinding.FieldName = 'DIASATRASO'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object pnTop: TPanel
        Left = 1
        Top = 1
        Width = 728
        Height = 24
        Align = alTop
        TabOrder = 1
        object cxContas: TcxLabel
          Left = 29
          Top = 0
          Caption = 'Contas Selecionadas'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clGray
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clWindowFrame
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.LineOptions.InnerColor = clWindowFrame
          Properties.LineOptions.OuterColor = clWindowFrame
          Properties.ShadowedColor = clWindowFrame
          Transparent = True
        end
        object cxTotal: TcxLabel
          Left = 520
          Top = 1
          Align = alRight
          AutoSize = False
          Caption = 'Contas Selecionadas'
          ParentColor = False
          ParentFont = False
          Style.Color = clMaroon
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clGray
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clMaroon
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taLeftJustify
          Properties.LineOptions.InnerColor = clWindowFrame
          Properties.LineOptions.OuterColor = clWindowFrame
          Properties.ShadowedColor = clWindowFrame
          Transparent = True
          Height = 22
          Width = 207
        end
      end
    end
    inherited pnBusca: TPanel
      Width = 730
      ExplicitWidth = 730
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Documento'
          'Cliente'
          'Cnpj'
          'Cpf'
          'Data Emiss'#227'o'
          'Data Pagamento'
          'Data Vencimento')
        Text = 'C'#211'DIGO'
      end
      inherited eConsulta: TcxTextEdit
        ExplicitWidth = 235
        Width = 235
      end
      inherited cxLabel2: TcxLabel
        Left = 562
        Visible = False
        ExplicitLeft = 562
      end
      inherited cbAtivo: TcxComboBox
        Left = 594
        Style.IsFontAssigned = True
        Visible = False
        ExplicitLeft = 594
      end
      inherited cxCon: TcxButton
        Left = 413
        ExplicitLeft = 413
      end
      inherited cxQtdeReg: TcxLabel
        Top = 3
        ExplicitTop = 3
      end
      object cxLabel25: TcxLabel
        Left = 445
        Top = 3
        Caption = 'Status:'
        Style.TextColor = clBlack
        Transparent = True
      end
      object cxStatus: TcxComboBox
        Left = 483
        Top = 1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODOS'
          'ABERTO'
          'QUITADO'
          'CANCELADO'
          'PREVIS'#195'O')
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 8
        Text = 'TODOS'
        OnClick = cxConsultaPropertiesChange
        Width = 107
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 730
      ExplicitWidth = 730
      inherited cxVoltar: TcxButton
        Left = 529
        ExplicitLeft = 529
      end
      inherited cxPrint: TcxButton
        Left = 470
        ExplicitLeft = 470
      end
      inherited cxOpcoes: TcxButton
        Left = 411
        ExplicitLeft = 411
      end
      object cxEstornar: TcxButton
        Left = 293
        Top = 0
        Width = 60
        Height = 51
        Hint = 'Estornar Quita'#231#227'o de Contas'
        Caption = '&Estornar'
        DropDownMenu = cxPopMenu
        Kind = cxbkDropDown
        LookAndFeel.Kind = lfOffice11
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000A2A2A2CEC5C4
          C4ECBCBBBCE4BCBCBDE4BCBCBDE4BDBDBEE4BDBDBEE4BDBDBEE4BDBDBEE4BDBD
          BDE4BCBCBDE4BCBBBCE4BCBBBCE4BABABBE4BABABBE4B9B9BAE4BABABAE4B8B7
          B9E3B6B6B7E5BBBBBCE9C1C1C1EDC3C3C2EFC2C2C3EFC4C4C4F0C6C6C5F0A3A4
          A4C0575756630404040400000000000000000000000000000000C9C8CAF1E3E3
          E4FFE1E0E1FFE1E1E2FFE1E1E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1
          E2FFE1E1E2FFE1E0E1FFE1E0E1FFDFDFE0FFDFDFDFFFDFDFE0FFDDDDDDFFD5D5
          D6FFD0D1D1FFD1D2D2FFD3D4D4FFD5D7D7FFD7D7D7FFD5D6D6FFD2D3D4FFCECE
          CFFFCCCCCDFFB4B4B5D23F404048000000000000000000000000BEBEBEE4E2E2
          E2FFDFDFE0FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
          E1FFE0E0E1FFDFDFE0FFDFDFDFFFDDDDDFFFDFDFDFFFDCDCDDFFD1D2D2FFCFD0
          D0FFD6D7D7FFDADBDBFFDBDCDCFFDBDDDDFFDBDCDDFFDBDCDCFFDBDCDCFFD9DA
          DAFFD3D4D5FFCCCCCDFFD0D1D1FF474747500000000000000000C0C0C1E4E5E5
          E5FFE2E2E3FFE3E3E3FFE3E3E3FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3
          E3FFE3E3E3FFE2E2E3FFE1E1E2FFE3E3E3FFDDDDDEFFDEDEDFFFDFE0E0FFD7D8
          D8FFDDDDDEFFDCDDDFFFE3E3E2FFF1F1E7FFF4F5E9FFEDEDE6FFE0E0E0FFDCDC
          DDFFDCDDDDFFD7D7D8FFCDCDCEFFCFCFCFFE3737373B00000000C2C2C3E4E7E7
          E8FFE4E4E5FFE5E5E5FFE5E5E5FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5
          E5FFE5E5E5FFE4E4E5FFE4E4E4FFE3E3E3FFDBDBDCFFECECECFFE6E6E6FFD9DA
          DAFFDFDFE0FFF6F6E9FFFCFCECFFDEDFE3FFD3D4DFFFE9EAE7FFFFFFEEFFECEC
          E6FFDCDDDEFFDCDDDDFFD7D8D8FFCACACBFFBABABAD907070707C4C4C5E4EAEA
          EAFFE7E7E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE7E7E7FFE8E8E8FFDEDFDFFFE2E2E3FFF2F2F2FFE7E8E9FFDEDF
          DFFFFFFEECFFC7C8DDFF585DB9FF2229A5FF181F9EFF2E34A3FF767ABEFFEBEB
          E8FFF6F6EAFFDBDDDEFFDBDDDCFFD2D3D4FFCACACBFF5A5A5A62C7C6C7E4EBEB
          ECFFE8E8E9FFEAEAEAFFEAEAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFDEDFDFFFE9E8E8FFEFF0F0FFEEEEEEFFFCFC
          EAFFBFC1DBFF161DABFF00009EFF00009AFF000097FF000090FF00008EFF494F
          ACFFE7E8E6FFEEEEE6FFDBDBDDFFD8D9D9FFCCCCCEFFA7A7A7C3C8C8C8E4EEEE
          EDFFEBEBEBFFECECEDFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECEC
          ECFFECECECFFEEEEEEFFE5E5E6FFE0E0E0FFEDEDEDFFEEEFF0FFFDFCF5FFE3E3
          E8FF262EB6FF0000AAFF1920B2FF8286D1FFADAFDEFF5D63BFFF08109BFF0000
          8CFF6367B6FFFDFDEDFFE1E2E1FFDBDCDCFFD1D1D2FFC4C4C4F0CACACAE4F0F0
          F0FFEEEDEEFFEEEEEEFFEEEEEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
          EFFFEEEEEFFFF1F1F1FFE3E3E4FFE0E0E1FFEFEFEFFFEDEEEFFFFFFFFAFF9C9F
          DDFF0002B2FF0D15B7FFA4A8DEFFFFFFFFFFFFFFFFFFFFFFFFFF676CC1FF0000
          91FF191F9CFFD5D7E0FFF2F2E7FFDBDCDCFFD5D6D6FFC1C1C2F0CDCCCCE4F3F2
          F2FFEFF0F0FFF0F0F1FFF1F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1
          F1FFF0F0F1FFF3F3F3FFE5E5E5FFE1E1E2FFEFEFEFFFEFF0F0FFFFFFF9FF7479
          D6FF0000B8FF4249CBFFFFFFF9FFFFFFFEFFFEFEFEFFFFFFFFFFD8D9EAFF0309
          9AFF040C95FFBBBED6FFFAF8EAFFDBDCDCFFD5D6D6FFC0C0C0EFCECECEE4F4F4
          F5FFF2F2F2FFF2F2F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3
          F3FFF3F3F3FFF6F6F7FFE6E6E6FFE0E0E1FFEEEFEFFFEEF0F0FFFFFFF8FF797E
          DCFF0000C0FF343CCFFFEBECF2FFFFFFFEFFDEDFF3FFD5D6EFFFC2C4E3FF0109
          9DFF070F98FFBFC1D7FFF9F8E9FFDADBDBFFD2D4D4FFC2C2C2F1CFCFD0E4F6F6
          F7FFF4F4F4FFF5F5F5FFF5F5F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
          F6FFF5F5F5FFF8F8F8FFEAEAEBFFE0E0E0FFEEEEEEFFEDEDEFFFFFFFF6FFB2B5
          E9FF0007CDFF0000C8FF9195E2FFFFFFFFFFDBDCEEFF292EBAFF252CB3FF0109
          9EFF242BA3FFE0E0E1FFEAEAE2FFD8DADAFFDFE0DFFFCBCBCBEDD1D1D2E4F8F8
          F9FFF6F6F7FFF7F7F7FFF8F8F8FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8
          F8FFF7F7F7FFF8F8F8FFF3F3F4FFE0E0E0FFEAE9E9FFEEEEEFFFF7F8F1FFFAFA
          F4FF3D43DBFF2B31D6FFD8DAF2FFFFFFFEFFE9EAF4FF171EB6FF0000A3FF0C14
          A3FF9A9DCEFFFFFFEEFFE3E4E5FFEBECECFFE9E9E9FFA3A3A4BAD3D3D4E4FAFA
          FBFFF8F8F8FFFAFAF9FFFAFAFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFA
          FBFFF9F9FAFFF9F9F9FFFBFBFBFFE3E3E4FFE2E2E2FFEEF0EFFFEDEEEFFFFAFA
          F3FFDFE0F0FFE6E8F3FFFFFFF9FFFFFFFBFFE5E6F4FF151AB3FF0000A1FF0106
          9CFF9699CFFFFFFFF8FFF2F3F2FFF0EFF0FFDDDDDEFF47484850D5D5D5E4FCFC
          FDFFFAFAFAFFFBFBFCFFFCFCFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
          FDFFFCFCFCFFFAFAFBFFFBFBFCFFF1F1F2FFDCDCDDFFEBEBECFFEEEEEFFFEDEE
          F0FFFFFFF2FFFFFFF5FFF1F1F2FFFAF9F6FFEFF0F3FFA7A8DEFF9EA0D8FF9A9C
          D3FFA1A4D3FFECEDEFFFF4F4F1FFE6E5E5FFB2B3B3CF02020202D7D7D7E4FEFE
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFBFBFCFFFFFFFEFFE8E8E9FFDBDADCFFEEEEEEFFEEEF
          EFFFEEEEEFFFF0F0F0FFF1F1F1FFEFF0F1FFF3F3F2FFFFFFF9FFFFFFFAFFFFFF
          FAFFFFFFF6FFEEEEEFFFEAEAEBFFD2D1D1F72E2E2E3200000000D7D7D8E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFEFFFCFCFCFFE3E3E3FFDBDCDDFFECEC
          ECFFEFEFEFFFEEEFEFFFEFEFEFFFEFF0F0FFEFEFEFFFEDEDEEFFECEDEEFFEBEC
          EDFFEDEDEFFFE9E9EAFFD7D7D8FC4444444F0000000000000000D9D9D9E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFE8E8E8FFDDDD
          DDFFE3E3E3FFE9EAEAFFEDEDEDFFEEEFEFFFEEEFEFFFEEEFEEFFEDEEEDFFEAEA
          EAFFE3E3E4FFAFAEB0CE3333333C000000000000000000000000D9D9D9E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFDFDFCFFEFEF
          EFFFE1E1E1FFDFDFDFFFE0E0E0FFE0E0E1FFE0E2E2FFE1E0E1FFE0E0E1FFB5B6
          B6D36767687C0A0A0A0B00000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFDFFFAFAFBFFFAFA
          FAFFF8F8F8FFF0F0F0FFE8E8E8FFE3E3E3FFE2E2E3FFE4E3E4FFC2C2C2E50E0E
          0E11000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFBFFF8F8
          F9FFF6F6F6FFF5F5F5FFF4F4F5FFF2F2F3FFF0F0F0FFF1F0F1FFBDBDBDD90404
          0405000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF7F7F7FFF4F4F5FFF2F2F2FFF0F0F0FFEEEEEEFFEEEEEFFFC0C0C0DD0C0C
          0C0F000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF7F7F7FFF4F4F5FFF2F2F2FFF0F0F0FFEDEEEEFFEFEFF0FFC3C3C3DF0D0D
          0D10000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF9F9F9FFF8F8F9FFF5F5F5FFF2F2F3FFF1F1F2FFEEEEEEFFC9C9C9EC0C0C
          0C0F000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFFAFA
          FAFFF5F5F5FFEBEBECFFE9E9EAFFE6E6E6FFE4E3E5FFD7D7D8FF727272870101
          0101000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFF9F9
          F9FFE3E3E4FFE6E6E6FFEDEDECFFEFEFEFFFDFE0E0FF83838393000000000000
          0000000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFBFBFBFFF5F5
          F6FFE5E5E6FFFEFEFEFFFFFFFFFFF3F3F3FF9C9C9CAE00000000000000000000
          0000000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFFAFAFAFFF4F4
          F4FFE6E6E7FFFFFFFFFFF3F4F4FF9D9D9DB60404040400000000000000000000
          0000000000000000000000000000000000000000000000000000D9D9DAE4FFFF
          FFFFFFFFFFFFFFFFFEFFF9F9F7FFF6F6F7FFF9F9F9FFF5F6F6FFFAFAFAFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFBFFF9F9FAFFF3F3
          F3FFE7E7E8FFEFEFF0FFB4B6B6D10B0B0B0D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E2E1DCE4CBCE
          F2FFABAFE9FFB4B7EAFFC3C5D7FFDDDDD7FFD7D7D8FFD0D1D1FFEBEBECFFFFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFAFFF9F9F8FFF7F7F8FFF6F6
          F6FFD9D9DAFFB2B2B2D010101011000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F1F1EAF1C8CA
          F4FF9296E4FFB6B9EEFFD5D6E6FFEFEFE8FFE2E3E3FFE2E2E2FFF6F6F6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFDFFFBFBFBFFF9F9F9FFFCFCFCFFEBEB
          EBFFBFC0C0EE2120212400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBBBDCEE9E9
          E4ECE4E4DCE4E4E4DDE4E0E0DFE4DEDEDFE4E0E0E0E4E0E0E0E4DDDDDDE4DADA
          DBE4DADADAE4D9D9DAE4D8D8D9E4D7D7D7E4D7D7D7E4D6D6D6E4DDDDDDECB3B3
          B4D32E2D2E310000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 0
        OptionsImage.Spacing = 0
        ParentShowHint = False
        PopupMenu = cxPopMenu
        ShowHint = False
        TabOrder = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxBaixar: TcxButton
        Left = 352
        Top = 0
        Width = 60
        Height = 51
        Hint = 'Quitar Contas'
        Caption = '&Baixar'
        LookAndFeel.Kind = lfOffice11
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000A2A2A2CEC5C4
          C4ECBCBBBCE4BCBCBDE4BCBCBDE4BDBDBEE4BDBDBEE4BDBDBEE4BDBDBEE4BDBD
          BDE4BCBCBDE4BCBBBCE4BCBBBCE4BABABBE4BABABBE4B9B9BAE4B9B9BAE4B6B6
          B7E4BBBAB5E4CECEBCE4D4D4C6E5C8C9CCE5BDBFCCE5C2C3CDE8CDCDC9E7A8A8
          9AAC53534D580000000000000000000000000000000000000000C9C8CAF1E3E3
          E4FFE1E0E1FFE1E1E2FFE1E1E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1
          E2FFE1E1E2FFE1E0E1FFE1E0E1FFDFDFE0FFDFDFDFFFDEDEE0FFD9D9DAFFF2F2
          DFFFEEEEE9FFA1A5E3FF595FD6FF2E36CAFF222CC6FF262FC8FF3C44CEFF7176
          D3FFBDBFDCFFC6C5B5C93636343C000000000000000000000000BEBEBEE4E2E2
          E2FFDFDFE0FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
          E1FFE0E0E1FFDFDFE0FFDFDFDFFFDEDEDFFFDEDEDFFFDADADAFFF4F4DFFFC9CB
          E7FF454CD0FF010CC0FF020CC0FF020CC1FF0000C1FF050FC6FF0812C2FF0009
          BFFF141DC4FF8085D6FFE3E3D6F63E3E3B440000000000000000C0C0C1E4E5E5
          E5FFE2E2E3FFE3E3E3FFE3E3E3FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3
          E3FFE3E3E3FFE2E2E3FFE1E1E2FFE2E2E2FFDDDDDFFFF4F3E0FFC3C5E6FF222C
          CAFF0009C0FF1C25C9FF1019C9FF1821D0FF676CDAFF1921C3FF0B15CDFF2028
          CBFF101AC5FF0001BDFF585ECFFFE4E3D8F930302F3300000000C2C2C3E4E7E7
          E8FFE4E4E5FFE5E5E5FFE5E5E5FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5
          E5FFE5E5E5FFE4E4E5FFE4E4E4FFE2E2E4FFEBEBDEFFD5D8E5FF434AD2FF2932
          CBFF212ACCFF0F18CCFF0007CCFF9CA0EDFFFFFFFFFFA4A7D8FF020ABFFF0F19
          D2FF212ACEFF1820C7FF0002BDFF7B81D2FFC9C9B8D003030303C4C4C5E4EAEA
          EAFFE7E7E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE7E7E7FFE7E7E8FFE4E4E2FFF6F6E5FF7176D9FF2B33CBFF4950
          D5FF111ACDFF0004CDFF9094EBFFFFFFFFFFFFFFFFFFFFFFFFFFA2A5D8FF0006
          C1FF0E18D3FF212ACDFF101AC4FF131EC4FFB5B7D4FF54544F57C7C6C7E4EBEB
          ECFFE8E8E9FFEAEAEAFFEAEAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
          EAFFEAEAEAFFE9E9EAFFE9E9EAFFF3F3E4FFD0D2E3FF3A41CEFF4249D2FF4148
          D7FF050FCFFF898DEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9597
          D5FF0008C2FF1019D1FF1F28CBFF000BC0FF6A70CEFFA8A79AAFC8C8C8E4EEEE
          EDFFEBEBEBFFECECEDFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECEC
          ECFFECECECFFECECECFFEDECEDFFF8F8E6FFA0A4DCFF2E36CBFF434AD4FF3139
          D6FF9CA0EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9DA0D7FF0008BFFF1019CEFF0813C2FF3941CAFFC1C2BFE2CACACAE4F0F0
          F0FFEEEDEEFFEEEEEEFFEEEEEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
          EFFFEEEEEFFFEEEEEEFFF0EFEEFFF6F6E6FF888DD8FF2830CBFF464DD6FFAEB2
          F0FFFFFFFFFFFFFFFFFFFFFEFAFFEEEFF7FFFFFFFFFFEFF0F8FFFDFDFBFFFFFF
          FFFFFFFFFFFFA4A6DAFF1921C2FF070FC4FF2730C6FFBBBDC4E9CDCCCCE4F3F2
          F2FFEFF0F0FFF0F0F1FFF1F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1
          F1FFF0F0F1FFF0F0F0FFF1F1F0FFF6F5E7FF8488D8FF242CC9FF4D54D8FFE6E7
          FAFFFFFFFFFFF7F8F5FF575DCAFFB8BBEEFFFFFFFFFFBEC0E3FF565CCCFFF6F7
          FFFFFFFFFFFFE8E8EDFF2A31BDFF0005C3FF242DC5FFBBBCC3E6CECECEE4F4F4
          F5FFF2F2F2FFF2F2F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3
          F3FFF3F3F3FFF2F2F3FFF4F4F4FFF9F8E7FF9195D9FF2E36CCFF4047D4FF5C62
          E0FFD8D9F6FF7B7FD1FF121ACEFFD0D2FBFFFFFFFFFFD1D1E6FF0003BBFF6267
          ECFFCED0EEFF3038C3FF030DC7FF121BC5FF3B43CBFFBDBDC2E9CFCFD0E4F6F6
          F7FFF4F4F4FFF5F5F5FFF5F5F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
          F6FFF5F5F5FFF5F5F5FFF6F7F7FFFDFBEAFFB5B7DBFF3037CCFF484FD3FF3F47
          D7FF4148D9FF353BDAFF444AE1FFDCDDF8FFFFFFFFFFD5D5E7FF222AC4FF0A13
          D9FF1821D0FF1821D0FF363ED3FF353CCEFF646AD1FFB5B4ABCCD1D1D2E4F8F8
          F9FFF6F6F7FFF7F7F7FFF8F8F8FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8
          F8FFF7F7F7FFF6F6F6FFF7F7F7FFF8F6EFFFE5E5E2FF4D55D1FF333BCDFF4C53
          D7FF4249D9FF4148DEFF4349DEFFD9DAF8FFFFFFFFFFD0D1E7FF3C43C8FF3F46
          E0FF3D45DAFF4C53D9FF5158D5FF313ACDFF8D90CDFF7F7F7584D3D3D4E4FAFA
          FBFFF8F8F8FFFAFAF9FFFAFAFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFA
          FBFFF9F9FAFFF8F8F9FFF8F8F9FFF6F6F8FFF9F9E6FFA1A4D9FF262FCBFF484F
          D3FF4B52D8FF4048D8FF4048DBFFE3E4FBFFFFFFFFFFDADBE8FF3D44C5FF484F
          DFFF4C52D7FF4F56D5FF353CCEFF4E56CCFFCDCDCCF71E1E1E1FD5D5D5E4FCFC
          FDFFFAFAFAFFFBFBFCFFFCFCFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
          FDFFFCFCFCFFFAFAFBFFF9F9FAFFFBFBFCFFF5F6F2FFEDEDDEFF757AD5FF232B
          C9FF4950D3FF444BD5FF434AD6FFCCCEF5FFF5F6FEFFC6C8E6FF3E45C5FF464D
          D9FF4C53D4FF383FCEFF3038CBFFB4B6D0FF7A7A717E00000000D7D7D7E4FEFE
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFBFBFCFFFAFAFAFFFCFCFDFFF7F7EDFFE8E9DCFF7379
          D3FF2831CBFF333BCDFF454CD2FF545AD7FF5D64DAFF545AD7FF4A51D3FF3F46
          D0FF2C34CCFF3E46CCFFADAFD1FF98988BA20000000000000000D7D7D8E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFFBFBFBFFF9F9FCFFF6F6EDFFEBEA
          DCFF9FA2D5FF4F56D0FF323BCCFF232CC9FF1E27C8FF252DCBFF3039CDFF3C44
          CCFF6C72CFFFC5C7D3FF8F8E8398000000000000000000000000D9D9D9E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFAFFFBFBFDFFF5F5
          F1FFF6F5E2FFDFDFDBFFB0B3D5FF8C90D1FF8085D0FF8387D0FF9A9DD3FFC3C6
          D4FDAFAFA3C04343404600000000000000000000000000000000D9D9D9E4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF9F9F8FFFAFA
          FAFFF6F5F7FFF4F4EDFFF7F6E6FFF2F2E1FFF1F1E1FFF0F0DFFFD6D6C6EB3A3A
          3741000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFAFFF8F8
          F8FFF6F6F6FFF5F5F5FFF4F4F5FFF2F2F1FFF1F0F0FFF2F2F0FFBCBCBCD80000
          0000000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFBFFF9F9
          F9FFF6F6F6FFF4F4F4FFF1F1F2FFEFEFEFFFEDEDEDFFEDEDEEFFC1C1C1DE0D0D
          0D10000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF7F7F7FFF4F4F5FFF2F2F2FFF0F0F0FFEEEEEEFFEEEEEFFFC0C0C0DD0C0C
          0C0F000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF7F7F7FFF4F4F5FFF2F2F2FFF0F0F0FFEDEEEEFFEFEFF0FFC3C3C3DF0D0D
          0D10000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFF9F9
          F9FFF9F9F9FFF8F8F9FFF5F5F5FFF2F2F3FFF1F1F2FFEEEEEEFFC9C9C9EC0C0C
          0C0F000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFFAFA
          FAFFF5F5F5FFEBEBECFFE9E9EAFFE6E6E6FFE4E3E5FFD7D7D8FF727272870101
          0101000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFF9F9
          F9FFE3E3E4FFE6E6E6FFEDEDECFFEFEFEFFFDFE0E0FF83838393000000000000
          0000000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFBFBFBFFF5F5
          F6FFE5E5E6FFFEFEFEFFFFFFFFFFF3F3F3FF9C9C9CAE00000000000000000000
          0000000000000000000000000000000000000000000000000000DADADAE4FFFF
          FFFFFDFDFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFFAFAFAFFF4F4
          F4FFE6E6E7FFFFFFFFFFF3F4F4FF9D9D9DB60404040400000000000000000000
          0000000000000000000000000000000000000000000000000000D9D9DAE4FFFF
          FFFFFFFFFFFFFFFFFEFFF9F9F7FFF6F6F7FFF9F9F9FFF5F6F6FFFAFAFAFFFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFBFFF9F9FAFFF3F3
          F3FFE7E7E8FFEFEFF0FFB4B6B6D10B0B0B0D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E2E1DCE4CBCE
          F2FFABAFE9FFB4B7EAFFC3C5D7FFDDDDD7FFD7D7D8FFD0D1D1FFEBEBECFFFFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFAFFF9F9F8FFF7F7F8FFF6F6
          F6FFD9D9DAFFB2B2B2D010101011000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F1F1EAF1C8CA
          F4FF9296E4FFB6B9EEFFD5D6E6FFEFEFE8FFE2E3E3FFE2E2E2FFF6F6F6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFDFFFBFBFBFFF9F9F9FFFCFCFCFFEBEB
          EBFFBFC0C0EE2120212400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBBBDCEE9E9
          E4ECE4E4DCE4E4E4DDE4E0E0DFE4DEDEDFE4E0E0E0E4E0E0E0E4DDDDDDE4DADA
          DBE4DADADAE4D9D9DAE4D8D8D9E4D7D7D7E4D7D7D7E4D6D6D6E4DDDDDDECB3B3
          B4D32E2D2E310000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 0
        OptionsImage.Spacing = 0
        ParentShowHint = False
        PopupMenu = cxPopMenu
        ShowHint = False
        TabOrder = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxBaixarClick
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 487
      Width = 730
      ExplicitTop = 487
      ExplicitWidth = 730
    end
    inherited grConsulta: TcxGrid
      Width = 730
      Height = 177
      ExplicitWidth = 730
      ExplicitHeight = 177
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsConta
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          Caption = 'St'
          DataBinding.FieldName = 'STATUSCONTA'
          OnGetCellHint = grConsultaDBTableView1Campo1GetCellHint
          Width = 30
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'IDCONTA'
          Width = 60
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'RAZAO'
          Width = 300
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Dt. Emiss'#227'o'
          DataBinding.FieldName = 'DTEMISSAO'
          Width = 100
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 100
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Dt. Vencto'
          DataBinding.FieldName = 'DTVENCTO'
          Width = 100
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Vlr. Inicial'
          DataBinding.FieldName = 'VLRINI'
          Width = 75
        end
        object grConsultaDBTableView1Column6: TcxGridDBColumn
          Caption = 'Vlr. Juros'
          DataBinding.FieldName = 'VLRJUROS'
          Width = 75
        end
        object grConsultaDBTableView1Column7: TcxGridDBColumn
          Caption = 'Vlr. Multa'
          DataBinding.FieldName = 'VLRMULTA'
          Width = 75
        end
        object grConsultaDBTableView1Column8: TcxGridDBColumn
          Caption = 'Vlr. Desc'
          DataBinding.FieldName = 'VLRDESC'
          Width = 75
        end
        object grConsultaDBTableView1Column9: TcxGridDBColumn
          Caption = 'Vlr. Total'
          DataBinding.FieldName = 'VLRBRUTO'
          Width = 75
        end
        object grConsultaDBTableView1Column10: TcxGridDBColumn
          Caption = 'Dt. Baixa'
          DataBinding.FieldName = 'DTBAIXA'
          Width = 100
        end
        object grConsultaDBTableView1Column11: TcxGridDBColumn
          Caption = 'Vlr. Pago'
          DataBinding.FieldName = 'VLRPAGO'
          Width = 75
        end
        object grConsultaDBTableView1Column12: TcxGridDBColumn
          Caption = 'Origem'
          DataBinding.FieldName = 'ORIGEM'
          Width = 75
        end
        object grConsultaDBTableView1Column13: TcxGridDBColumn
          Caption = 'C'#243'd. Origem'
          DataBinding.FieldName = 'IDORIGEM'
          Width = 75
        end
      end
    end
  end
  inherited cxPopMenu: TRxPopupMenu
    Alignment = paCenter
    Left = 632
  end
  object cdsRateio: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IDCONTA'
        DataType = ftInteger
      end
      item
        Name = 'IDPLANO'
        DataType = ftInteger
      end
      item
        Name = 'VLRPERC'
        DataType = ftFloat
      end
      item
        Name = 'VLRRATEIO'
        DataType = ftFloat
      end
      item
        Name = 'IDCCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 570
    Top = 317
    object cdsRateioIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object cdsRateioIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
    end
    object cdsRateioIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
    end
    object cdsRateioVLRPERC: TFloatField
      FieldName = 'VLRPERC'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsRateioVLRRATEIO: TFloatField
      FieldName = 'VLRRATEIO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsRateioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object dsRateio: TDataSource
    DataSet = cdsRateio
    Left = 570
    Top = 361
  end
end
