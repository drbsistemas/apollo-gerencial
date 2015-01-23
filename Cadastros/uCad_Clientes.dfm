inherited Fcad_Clientes: TFcad_Clientes
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 541
  ClientWidth = 907
  ExplicitWidth = 915
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnImg: TcxImage [0]
    Left = 849
    Properties.GraphicClassName = 'TdxPNGImage'
    Style.BorderStyle = ebsFlat
    ExplicitLeft = 849
    ExplicitHeight = 541
    Height = 541
  end
  inherited pnCad: TPanel [1]
    Width = 849
    Height = 541
    BevelOuter = bvNone
    TabOrder = 0
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
    object cxPage: TcxPageControl
      Left = 0
      Top = 316
      Width = 849
      Height = 225
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxDados
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      ClientRectBottom = 225
      ClientRectRight = 849
      ClientRectTop = 20
      object cxDados: TcxTabSheet
        Caption = 'Dados Para Venda'
        ImageIndex = 0
        object cxLabel24: TcxLabel
          Left = 32
          Top = 14
          AutoSize = False
          Caption = 'Vendedor:'
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
          Width = 100
          AnchorX = 132
        end
        object eCodVend: TcxButtonEdit
          Left = 131
          Top = 12
          Hint = '(F3) Busca os Dados de Cadastro'
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
          Properties.OnButtonClick = eCodVendPropertiesButtonClick
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          Text = '0'
          OnExit = eCodVendExit
          OnKeyPress = eCodVendKeyPress
          Height = 21
          Width = 60
        end
        object eVendedor: TcxTextEdit
          Left = 191
          Top = 12
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
          TabOrder = 1
          Text = 'NENHUM'
          Width = 300
        end
        object cxLabel25: TcxLabel
          Left = 32
          Top = 36
          AutoSize = False
          Caption = 'Cond. Pagto:'
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
          Width = 100
          AnchorX = 132
        end
        object eCodCPagto: TcxButtonEdit
          Left = 131
          Top = 34
          Hint = '(F3) Busca os Dados de Cadastro'
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
          Properties.OnButtonClick = eCodCPagtoPropertiesButtonClick
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 2
          Text = '0'
          OnExit = eCodCPagtoExit
          OnKeyPress = eCodVendKeyPress
          Height = 21
          Width = 60
        end
        object eCPagto: TcxTextEdit
          Left = 191
          Top = 34
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
          TabOrder = 3
          Text = 'NENHUM'
          Width = 300
        end
        object cxLabel26: TcxLabel
          Left = 32
          Top = 58
          AutoSize = False
          Caption = 'Transportadora:'
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
          Width = 100
          AnchorX = 132
        end
        object eCodTransp: TcxButtonEdit
          Left = 131
          Top = 56
          Hint = '(F3) Busca os Dados de Cadastro'
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
          Properties.OnButtonClick = eCodTranspPropertiesButtonClick
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 4
          Text = '0'
          OnExit = eCodTranspExit
          OnKeyPress = eCodVendKeyPress
          Height = 21
          Width = 60
        end
        object eTransportadora: TcxTextEdit
          Left = 191
          Top = 56
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
          TabOrder = 5
          Text = 'NENHUM'
          Width = 300
        end
        object cxLabel27: TcxLabel
          Left = 32
          Top = 80
          AutoSize = False
          Caption = 'Cr'#233'dito:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 100
          AnchorX = 132
        end
        object eCredito: TcxCurrencyEdit
          Left = 131
          Top = 78
          Hint = 'Cr'#233'dito Financeiro do Cliente (se houver)'
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
          Width = 70
        end
        object eLimite: TcxCurrencyEdit
          Left = 290
          Top = 78
          Hint = 'Limite Financiero do Cliente'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 7
          Width = 70
        end
        object cxLabel28: TcxLabel
          Left = 207
          Top = 80
          AutoSize = False
          Caption = 'Limite Financ:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 83
          AnchorX = 290
        end
        object cxBloqueado: TcxCheckBox
          Left = 366
          Top = 78
          Hint = 'Bloquear Cliente para Compras'
          Caption = 'Bloqueado'
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
          TabOrder = 8
          Width = 80
        end
      end
      object cxPessoal: TcxTabSheet
        Caption = 'Dados Pessoais'
        ImageIndex = 1
        object cxREsidencia: TcxComboBox
          Left = 131
          Top = 12
          Hint = 'Tipo de Resid'#234'ncia'
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'PR'#211'PRIA'
            'ALUGADA'
            'CEDIDA'
            'OUTRO')
          Properties.OnChange = cbPessoaPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          Text = 'PR'#211'PRIA'
          Width = 98
        end
        object cxLabel29: TcxLabel
          Left = 60
          Top = 14
          AutoSize = False
          Caption = 'Resid'#234'ncia:'
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
          Width = 71
          AnchorX = 131
        end
        object cxLabel30: TcxLabel
          Left = 248
          Top = 14
          AutoSize = False
          Caption = 'Aluguel:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 83
          AnchorX = 331
        end
        object eAluguel: TcxCurrencyEdit
          Left = 331
          Top = 12
          Hint = 'Valor do Aluguel'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 1
          Width = 70
        end
        object cxLabel31: TcxLabel
          Left = 431
          Top = 14
          AutoSize = False
          Caption = 'Tempo de Moradia:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 111
          AnchorX = 542
        end
        object cxLabel32: TcxLabel
          Left = 56
          Top = 36
          AutoSize = False
          Caption = 'Empresa:'
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
          AnchorX = 131
        end
        object eEmpresa: TcxTextEdit
          Left = 131
          Top = 34
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
          TabOrder = 3
          Width = 270
        end
        object cxLabel33: TcxLabel
          Left = 418
          Top = 36
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
          AnchorX = 493
        end
        object eFoneEmpresa: TcxMaskEdit
          Left = 492
          Top = 34
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
        object cxLabel34: TcxLabel
          Left = 56
          Top = 58
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
          AnchorX = 131
        end
        object eEnderecoEmpresa: TcxTextEdit
          Left = 131
          Top = 56
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
          Width = 270
        end
        object cxLabel35: TcxLabel
          Left = 401
          Top = 58
          AutoSize = False
          Caption = 'Cidade/UF:'
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
          Width = 58
          AnchorX = 459
        end
        object eCidadeEmpresa: TcxTextEdit
          Left = 457
          Top = 56
          Hint = 'Cidade e UF da Empresa'
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
          TabOrder = 6
          Width = 155
        end
        object cxLabel36: TcxLabel
          Left = 73
          Top = 80
          AutoSize = False
          Caption = 'Profiss'#227'o:'
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
          Width = 58
          AnchorX = 131
        end
        object eProfissao: TcxTextEdit
          Left = 131
          Top = 78
          Hint = 'Profiss'#227'o/Cargo'
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
          TabOrder = 7
          Width = 150
        end
        object cxLabel37: TcxLabel
          Left = 247
          Top = 80
          AutoSize = False
          Caption = 'Sal'#225'rio:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 83
          AnchorX = 330
        end
        object eSalario: TcxCurrencyEdit
          Left = 331
          Top = 78
          Hint = 'Valor do Aluguel'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 8
          Width = 70
        end
        object cxLabel38: TcxLabel
          Left = 35
          Top = 102
          AutoSize = False
          Caption = 'Outras Rendas:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 96
          AnchorX = 131
        end
        object eOutrasRendas: TcxCurrencyEdit
          Left = 132
          Top = 100
          Hint = 'Valor do Aluguel'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 9
          Width = 70
        end
        object cxLabel39: TcxLabel
          Left = 212
          Top = 102
          AutoSize = False
          Caption = 'Descri'#231#227'o:'
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
          AnchorX = 287
        end
        object eDescricaoRenda: TcxTextEdit
          Left = 287
          Top = 100
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
          TabOrder = 10
          Width = 325
        end
        object eTempoMoradia: TcxTextEdit
          Left = 542
          Top = 12
          Hint = 'Tempo de Moradia'
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
          TabOrder = 2
          Width = 70
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Dados Conjuge'
        ImageIndex = 2
        object cxLabel40: TcxLabel
          Left = 56
          Top = 40
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
          AnchorX = 131
        end
        object eNomeConjuge: TcxTextEdit
          Left = 131
          Top = 38
          Hint = 'Nome do Conjuge'
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
          TabOrder = 1
          Width = 270
        end
        object cxLabel41: TcxLabel
          Left = 56
          Top = 62
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
          AnchorX = 131
        end
        object eCpfConjuge: TcxMaskEdit
          Left = 131
          Top = 60
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
          TabOrder = 3
          Text = '           '
          OnExit = eCpfExit
          Width = 120
        end
        object eRgConjuge: TcxMaskEdit
          Left = 281
          Top = 60
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
          TabOrder = 4
          Text = '              '
          Width = 120
        end
        object cxLabel: TcxLabel
          Left = 220
          Top = 62
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
          AnchorX = 280
        end
        object cxLabel43: TcxLabel
          Left = 31
          Top = 18
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
          AnchorX = 131
        end
        object eDataNasceConjuge: TcxDateEdit
          Left = 132
          Top = 16
          Hint = 'Data de Nascimento Conjuge'
          EditValue = 0d
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          OnExit = cbDtNascimentoExit
          Width = 130
        end
        object cxLabel44: TcxLabel
          Left = 458
          Top = 62
          AutoSize = False
          Caption = 'Sal'#225'rio:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
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
          Width = 83
          AnchorX = 541
        end
        object eSalarioConjuge: TcxCurrencyEdit
          Left = 543
          Top = 60
          Hint = 'Valor do Aluguel'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 5
          Width = 70
        end
        object cxLabel45: TcxLabel
          Left = 56
          Top = 106
          AutoSize = False
          Caption = 'Empresa:'
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
          AnchorX = 131
        end
        object eEmpresaConjuge: TcxTextEdit
          Left = 131
          Top = 105
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
          Width = 270
        end
        object cxLabel46: TcxLabel
          Left = 412
          Top = 106
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
          AnchorX = 487
        end
        object eFoneEmpresaConjuge: TcxMaskEdit
          Left = 493
          Top = 104
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
          TabOrder = 8
          Text = '          '
          Width = 120
        end
        object cxLabel42: TcxLabel
          Left = 89
          Top = 82
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
        object eEmailConjuge: TcxTextEdit
          Left = 131
          Top = 82
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
          TabOrder = 6
          Width = 482
        end
        object cxLabel47: TcxLabel
          Left = 416
          Top = 40
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
          AnchorX = 491
        end
        object eFoneConjuge: TcxMaskEdit
          Left = 493
          Top = 38
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
          TabOrder = 2
          Text = '          '
          Width = 120
        end
      end
    end
    object pnDados: TPanel
      Left = 0
      Top = 51
      Width = 849
      Height = 265
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object eRazao: TcxTextEdit
        Tag = 1
        Left = 132
        Top = 55
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
        TabOrder = 0
        Width = 481
      end
      object eCodigo: TcxTextEdit
        Left = 132
        Top = 11
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
        Top = 143
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
        TabOrder = 2
        Width = 233
      end
      object eBairro: TcxTextEdit
        Left = 132
        Top = 165
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
        TabOrder = 3
        Width = 233
      end
      object eCidade: TcxButtonEdit
        Tag = 1
        Left = 132
        Top = 188
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
        TabOrder = 4
        Width = 233
      end
      object cxLabel3: TcxLabel
        Left = 58
        Top = 13
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
        Left = 56
        Top = 57
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
        AnchorX = 131
      end
      object cxApelido: TcxLabel
        Left = 58
        Top = 79
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
        Top = 145
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
        Top = 167
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
        Top = 189
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
        Top = 191
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
        Top = 189
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
        TabOrder = 12
        OnExit = eUfExit
        Width = 31
      end
      object cxLabel10: TcxLabel
        Left = 446
        Top = 145
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
        Top = 143
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
        OnExit = eCepExit
        Width = 127
      end
      object cxLabel11: TcxLabel
        Left = 58
        Top = 123
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
        Top = 121
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
        TabOrder = 16
        Text = '          '
        Width = 120
      end
      object cxLabel13: TcxLabel
        Left = 89
        Top = 213
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
        Top = 211
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
        TabOrder = 18
        Width = 482
      end
      object cxLabel14: TcxLabel
        Left = 402
        Top = 13
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
        Top = 35
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
        Left = 132
        Top = 33
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
        TabOrder = 21
        Text = 'CLIENTE'
        Width = 150
      end
      object cxLabel16: TcxLabel
        Left = 384
        Top = 35
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
        Top = 33
        Hint = 'Data de Nascimento/Cria'#231#227'o se empresa'
        EditValue = 0d
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 23
        OnExit = cbDtNascimentoExit
        Width = 130
      end
      object cxLabel17: TcxLabel
        Left = 58
        Top = 101
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
        Left = 132
        Top = 99
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
        TabOrder = 25
        Text = '           '
        OnExit = eCpfExit
        Width = 120
      end
      object eRg: TcxMaskEdit
        Left = 408
        Top = 99
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
        TabOrder = 26
        Text = '              '
        Width = 120
      end
      object cxLabel18: TcxLabel
        Left = 347
        Top = 101
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
        Top = 123
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
        Top = 121
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
        TabOrder = 29
        Text = '          '
        Width = 120
      end
      object eObs: TcxTextEdit
        Left = 132
        Top = 233
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
        TabOrder = 30
        Width = 482
      end
      object cxLabel20: TcxLabel
        Left = 58
        Top = 234
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
        Top = 11
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
        TabOrder = 32
        Width = 54
      end
      object cxLabel21: TcxLabel
        Left = 285
        Top = 35
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
        Top = 33
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
        TabOrder = 34
        Text = 'F'#205'SICA'
        Width = 98
      end
      object eDtCad: TcxDateEdit
        Left = 483
        Top = 11
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
        TabOrder = 35
        Width = 130
      end
      object eFantasia: TcxTextEdit
        Left = 132
        Top = 77
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
        TabOrder = 36
        Width = 481
      end
      object cxLabel4: TcxLabel
        Left = 384
        Top = 145
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
        Top = 143
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
        TabOrder = 38
        Text = '        '
        Width = 40
      end
      object eIbge: TcxMaskEdit
        Left = 444
        Top = 190
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
        TabOrder = 39
        Text = '        '
        Visible = False
        Width = 40
      end
      object eComplemento: TcxTextEdit
        Left = 408
        Top = 165
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
        TabOrder = 40
        Width = 205
      end
      object cxLabel22: TcxLabel
        Left = 371
        Top = 167
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
        Top = 98
        Width = 552
        Height = 22
        BevelOuter = bvNone
        TabOrder = 42
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
      object cxAlerta: TcxCheckBox
        Left = 616
        Top = 233
        Hint = 'Mensagem de Alerta para cliente com observa'#231#227'o'
        Caption = 'Usar Como Alerta'
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
        TabOrder = 43
        Width = 113
      end
    end
  end
  inherited pnCon: TPanel [2]
    Width = 849
    Height = 541
    TabOrder = 1
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
        TabOrder = 4
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
        TabOrder = 3
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
        DataController.DataSource = dsClie
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
  object qryClie: TFDQuery
    AfterInsert = qryClieAfterInsert
    CachedUpdates = True
    Connection = dmCon.FdCon
    Transaction = dmCon.FdSalva
    UpdateTransaction = dmCon.FdSalva
    UpdateObject = UpdtClie
    SQL.Strings = (
      'Select'
      'A.*,'
      'B.RAZAO NOMEVEND,'
      'C.RAZAO NOMETRANS,'
      'D.DESCRICAO'
      'from cliente A'
      'left join CLIENTE B on A.idvendedor = B.idclie'
      'left join CLIENTE C on A.idtransp = B.idclie'
      'left join CPAGTO D on A.idcpagto = D.idcpagto')
    Left = 788
    Top = 13
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
    object qryClieIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      Origin = 'IDVENDEDOR'
    end
    object qryClieIDCPAGTO: TIntegerField
      FieldName = 'IDCPAGTO'
      Origin = 'IDCPAGTO'
    end
    object qryClieIDTRANSP: TIntegerField
      FieldName = 'IDTRANSP'
      Origin = 'IDTRANSP'
    end
    object qryClieCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
    end
    object qryClieLIMITEFINANCEIRO: TFloatField
      FieldName = 'LIMITEFINANCEIRO'
      Origin = 'LIMITEFINANCEIRO'
    end
    object qryClieBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object qryClieALERTACLIE: TIntegerField
      FieldName = 'ALERTACLIE'
      Origin = 'ALERTACLIE'
    end
    object qryClieTIPORESID: TStringField
      FieldName = 'TIPORESID'
      Origin = 'TIPORESID'
      Size = 30
    end
    object qryClieALUGUEL: TFloatField
      FieldName = 'ALUGUEL'
      Origin = 'ALUGUEL'
    end
    object qryClieTEMPORESID: TStringField
      FieldName = 'TEMPORESID'
      Origin = 'TEMPORESID'
      Size = 50
    end
    object qryClieRAZAOTRABALHO: TStringField
      FieldName = 'RAZAOTRABALHO'
      Origin = 'RAZAOTRABALHO'
      Size = 100
    end
    object qryClieFONETRABALHO: TStringField
      FieldName = 'FONETRABALHO'
      Origin = 'FONETRABALHO'
    end
    object qryClieENDTRABALHO: TStringField
      FieldName = 'ENDTRABALHO'
      Origin = 'ENDTRABALHO'
      Size = 50
    end
    object qryClieCIDADETRABALHO: TStringField
      FieldName = 'CIDADETRABALHO'
      Origin = 'CIDADETRABALHO'
      Size = 50
    end
    object qryCliePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 50
    end
    object qryClieSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
    end
    object qryClieOUTRASRENDAS: TFloatField
      FieldName = 'OUTRASRENDAS'
      Origin = 'OUTRASRENDAS'
    end
    object qryClieRENDADESCRICAO: TStringField
      FieldName = 'RENDADESCRICAO'
      Origin = 'RENDADESCRICAO'
      Size = 50
    end
    object qryClieNOMECONJ: TStringField
      FieldName = 'NOMECONJ'
      Origin = 'NOMECONJ'
      Size = 100
    end
    object qryClieCPFCONJ: TStringField
      FieldName = 'CPFCONJ'
      Origin = 'CPFCONJ'
      Size = 30
    end
    object qryClieRGCONJ: TStringField
      FieldName = 'RGCONJ'
      Origin = 'RGCONJ'
      Size = 30
    end
    object qryClieDATANASCCONJ: TSQLTimeStampField
      FieldName = 'DATANASCCONJ'
      Origin = 'DATANASCCONJ'
    end
    object qryClieSALARIOCONJ: TFloatField
      FieldName = 'SALARIOCONJ'
      Origin = 'SALARIOCONJ'
    end
    object qryClieTRABALHOCONJ: TStringField
      FieldName = 'TRABALHOCONJ'
      Origin = 'TRABALHOCONJ'
      Size = 100
    end
    object qryClieFONETRABCONJ: TStringField
      FieldName = 'FONETRABCONJ'
      Origin = 'FONETRABCONJ'
      Size = 30
    end
    object qryClieEMAILCONJ: TStringField
      FieldName = 'EMAILCONJ'
      Origin = 'EMAILCONJ'
      Size = 100
    end
    object qryClieFONECONJ: TStringField
      FieldName = 'FONECONJ'
      Origin = 'FONECONJ'
      Size = 30
    end
    object qryClieNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object qryClieNOMETRANS: TStringField
      FieldName = 'NOMETRANS'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object qryClieDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object UpdtClie: TFDUpdateSQL
    Connection = dmCon.FdCon
    InsertSQL.Strings = (
      'INSERT INTO CLIENTE'
      '(IDCLIE, FANTASIA, ENDERECO, NUMERO, CIDADE, '
      '  UF, BAIRRO, CEP, CNPJ, RG, IE, '
      '  CPF, FONE, CELULAR, EMAIL, OBS, '
      '  COMPLEMENTO, DATACAD, ATIVO, DATANASCE, '
      '  TIPOPESSOA, TIPOCLIE, IDVENDEDOR, IDCPAGTO, '
      '  IDTRANSP, CREDITO, LIMITEFINANCEIRO, BLOQUEADO, '
      '  ALERTACLIE, TIPORESID, ALUGUEL, TEMPORESID, '
      '  RAZAOTRABALHO, FONETRABALHO, ENDTRABALHO, '
      '  CIDADETRABALHO, PROFISSAO, SALARIO, OUTRASRENDAS, '
      '  RENDADESCRICAO, NOMECONJ, CPFCONJ, RGCONJ, '
      '  DATANASCCONJ, SALARIOCONJ, TRABALHOCONJ, '
      '  FONETRABCONJ, EMAILCONJ, FONECONJ)'
      
        'VALUES (:NEW_IDCLIE, :NEW_FANTASIA, :NEW_ENDERECO, :NEW_NUMERO, ' +
        ':NEW_CIDADE, '
      '  :NEW_UF, :NEW_BAIRRO, :NEW_CEP, :NEW_CNPJ, :NEW_RG, :NEW_IE, '
      '  :NEW_CPF, :NEW_FONE, :NEW_CELULAR, :NEW_EMAIL, :NEW_OBS, '
      '  :NEW_COMPLEMENTO, :NEW_DATACAD, :NEW_ATIVO, :NEW_DATANASCE, '
      
        '  :NEW_TIPOPESSOA, :NEW_TIPOCLIE, :NEW_IDVENDEDOR, :NEW_IDCPAGTO' +
        ', '
      
        '  :NEW_IDTRANSP, :NEW_CREDITO, :NEW_LIMITEFINANCEIRO, :NEW_BLOQU' +
        'EADO, '
      
        '  :NEW_ALERTACLIE, :NEW_TIPORESID, :NEW_ALUGUEL, :NEW_TEMPORESID' +
        ', '
      '  :NEW_RAZAOTRABALHO, :NEW_FONETRABALHO, :NEW_ENDTRABALHO, '
      
        '  :NEW_CIDADETRABALHO, :NEW_PROFISSAO, :NEW_SALARIO, :NEW_OUTRAS' +
        'RENDAS, '
      
        '  :NEW_RENDADESCRICAO, :NEW_NOMECONJ, :NEW_CPFCONJ, :NEW_RGCONJ,' +
        ' '
      '  :NEW_DATANASCCONJ, :NEW_SALARIOCONJ, :NEW_TRABALHOCONJ, '
      '  :NEW_FONETRABCONJ, :NEW_EMAILCONJ, :NEW_FONECONJ)'
      
        'RETURNING IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, CIDADE, UF,' +
        ' BAIRRO, CEP, CNPJ, RG, IE, CPF, FONE, CELULAR, EMAIL, OBS, COMP' +
        'LEMENTO, DATACAD, ATIVO, DATANASCE, TIPOPESSOA, TIPOCLIE, IDVEND' +
        'EDOR, IDCPAGTO, IDTRANSP, CREDITO, LIMITEFINANCEIRO, BLOQUEADO, ' +
        'ALERTACLIE, TIPORESID, ALUGUEL, TEMPORESID, RAZAOTRABALHO, FONET' +
        'RABALHO, ENDTRABALHO, CIDADETRABALHO, PROFISSAO, SALARIO, OUTRAS' +
        'RENDAS, RENDADESCRICAO, NOMECONJ, CPFCONJ, RGCONJ, DATANASCCONJ,' +
        ' SALARIOCONJ, TRABALHOCONJ, FONETRABCONJ, EMAILCONJ, FONECONJ')
    ModifySQL.Strings = (
      'UPDATE CLIENTE'
      
        'SET IDCLIE = :NEW_IDCLIE, FANTASIA = :NEW_FANTASIA, ENDERECO = :' +
        'NEW_ENDERECO, '
      '  NUMERO = :NEW_NUMERO, CIDADE = :NEW_CIDADE, UF = :NEW_UF, '
      '  BAIRRO = :NEW_BAIRRO, CEP = :NEW_CEP, CNPJ = :NEW_CNPJ, '
      '  RG = :NEW_RG, IE = :NEW_IE, CPF = :NEW_CPF, FONE = :NEW_FONE, '
      '  CELULAR = :NEW_CELULAR, EMAIL = :NEW_EMAIL, OBS = :NEW_OBS, '
      '  COMPLEMENTO = :NEW_COMPLEMENTO, DATACAD = :NEW_DATACAD, '
      
        '  ATIVO = :NEW_ATIVO, DATANASCE = :NEW_DATANASCE, TIPOPESSOA = :' +
        'NEW_TIPOPESSOA, '
      '  TIPOCLIE = :NEW_TIPOCLIE, IDVENDEDOR = :NEW_IDVENDEDOR, '
      
        '  IDCPAGTO = :NEW_IDCPAGTO, IDTRANSP = :NEW_IDTRANSP, CREDITO = ' +
        ':NEW_CREDITO, '
      
        '  LIMITEFINANCEIRO = :NEW_LIMITEFINANCEIRO, BLOQUEADO = :NEW_BLO' +
        'QUEADO, '
      '  ALERTACLIE = :NEW_ALERTACLIE, TIPORESID = :NEW_TIPORESID, '
      
        '  ALUGUEL = :NEW_ALUGUEL, TEMPORESID = :NEW_TEMPORESID, RAZAOTRA' +
        'BALHO = :NEW_RAZAOTRABALHO, '
      
        '  FONETRABALHO = :NEW_FONETRABALHO, ENDTRABALHO = :NEW_ENDTRABAL' +
        'HO, '
      
        '  CIDADETRABALHO = :NEW_CIDADETRABALHO, PROFISSAO = :NEW_PROFISS' +
        'AO, '
      '  SALARIO = :NEW_SALARIO, OUTRASRENDAS = :NEW_OUTRASRENDAS, '
      
        '  RENDADESCRICAO = :NEW_RENDADESCRICAO, NOMECONJ = :NEW_NOMECONJ' +
        ', '
      
        '  CPFCONJ = :NEW_CPFCONJ, RGCONJ = :NEW_RGCONJ, DATANASCCONJ = :' +
        'NEW_DATANASCCONJ, '
      
        '  SALARIOCONJ = :NEW_SALARIOCONJ, TRABALHOCONJ = :NEW_TRABALHOCO' +
        'NJ, '
      '  FONETRABCONJ = :NEW_FONETRABCONJ, EMAILCONJ = :NEW_EMAILCONJ, '
      '  FONECONJ = :NEW_FONECONJ'
      'WHERE IDCLIE = :OLD_IDCLIE'
      
        'RETURNING IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, CIDADE, UF,' +
        ' BAIRRO, CEP, CNPJ, RG, IE, CPF, FONE, CELULAR, EMAIL, OBS, COMP' +
        'LEMENTO, DATACAD, ATIVO, DATANASCE, TIPOPESSOA, TIPOCLIE, IDVEND' +
        'EDOR, IDCPAGTO, IDTRANSP, CREDITO, LIMITEFINANCEIRO, BLOQUEADO, ' +
        'ALERTACLIE, TIPORESID, ALUGUEL, TEMPORESID, RAZAOTRABALHO, FONET' +
        'RABALHO, ENDTRABALHO, CIDADETRABALHO, PROFISSAO, SALARIO, OUTRAS' +
        'RENDAS, RENDADESCRICAO, NOMECONJ, CPFCONJ, RGCONJ, DATANASCCONJ,' +
        ' SALARIOCONJ, TRABALHOCONJ, FONETRABCONJ, EMAILCONJ, FONECONJ')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTE'
      'WHERE IDCLIE = :OLD_IDCLIE')
    FetchRowSQL.Strings = (
      
        'SELECT IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, CIDADE, UF, BA' +
        'IRRO, '
      
        '  CEP, CNPJ, RG, IE, CPF, FONE, CELULAR, EMAIL, OBS, COMPLEMENTO' +
        ', '
      '  DATACAD, ATIVO, DATANASCE, TIPOPESSOA, TIPOCLIE, IDVENDEDOR, '
      '  IDCPAGTO, IDTRANSP, CREDITO, LIMITEFINANCEIRO, BLOQUEADO, '
      '  ALERTACLIE, TIPORESID, ALUGUEL, TEMPORESID, RAZAOTRABALHO, '
      
        '  FONETRABALHO, ENDTRABALHO, CIDADETRABALHO, PROFISSAO, SALARIO,' +
        ' '
      '  OUTRASRENDAS, RENDADESCRICAO, NOMECONJ, CPFCONJ, RGCONJ, '
      
        '  DATANASCCONJ, SALARIOCONJ, TRABALHOCONJ, FONETRABCONJ, EMAILCO' +
        'NJ, '
      '  FONECONJ'
      'FROM CLIENTE'
      'WHERE IDCLIE = :IDCLIE')
    Left = 788
    Top = 57
  end
  object dsClie: TDataSource
    DataSet = qryClie
    Left = 788
    Top = 102
  end
end
