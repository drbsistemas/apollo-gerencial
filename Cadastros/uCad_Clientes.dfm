inherited Fcad_Clientes: TFcad_Clientes
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 540
  ClientWidth = 910
  ExplicitWidth = 918
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnImg: TcxImage
    Left = 852
    Properties.GraphicClassName = 'TdxPNGImage'
    Style.BorderStyle = ebsFlat
    ExplicitLeft = 852
    ExplicitHeight = 540
    Height = 540
  end
  inherited pnCon: TPanel
    Width = 852
    Height = 540
    TabOrder = 1
    ExplicitWidth = 852
    ExplicitHeight = 540
    inherited pnBotaoCad: TPanel [0]
      Width = 850
      ExplicitWidth = 850
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
      inherited cxOpcoes: TcxButton
        DropDownMenu = cxPopMenu
        Kind = cxbkDropDown
        PopupMenu = nil
      end
    end
    inherited pnBusca: TPanel [1]
      Width = 850
      ExplicitWidth = 850
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
        Left = 652
        ExplicitLeft = 652
      end
      inherited cbAtivo: TcxComboBox
        Left = 685
        Properties.OnChange = cxConsultaPropertiesChange
        Style.IsFontAssigned = True
        TabOrder = 4
        ExplicitLeft = 685
      end
      inherited cxQtdeReg: TcxLabel
        Left = 766
        ExplicitLeft = 766
      end
      object cxTipoClie: TcxComboBox
        Left = 499
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
        Left = 471
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
        AnchorX = 500
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 488
      Width = 850
      ExplicitTop = 488
      ExplicitWidth = 850
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
      Width = 850
      Height = 412
      ExplicitWidth = 850
      ExplicitHeight = 412
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
  inherited pnCad: TPanel
    Width = 852
    Height = 540
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 852
    ExplicitHeight = 540
    inherited pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 852
      Height = 51
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 852
      ExplicitHeight = 51
      inherited cxSalvar: TcxButton
        Left = 56
        Top = 1
        LookAndFeel.SkinName = ''
        ExplicitLeft = 56
        ExplicitTop = 1
      end
      inherited cxCancela: TcxButton
        Left = 136
        Top = 1
        LookAndFeel.SkinName = ''
        ExplicitLeft = 136
        ExplicitTop = 1
      end
    end
    object cxPage: TcxPageControl
      Left = 0
      Top = 316
      Width = 852
      Height = 224
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxDados
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      ClientRectBottom = 224
      ClientRectRight = 852
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
      Width = 852
      Height = 265
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object eRazao: TcxTextEdit
        Tag = 1
        Left = 131
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
        TabOrder = 6
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
        TabOrder = 0
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
        TabOrder = 13
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
        TabOrder = 16
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
        TabOrder = 18
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
        TabOrder = 19
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
        TabOrder = 15
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
        TabOrder = 11
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
        TabOrder = 20
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
        TabOrder = 3
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
        TabOrder = 5
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
        TabOrder = 9
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
        TabOrder = 10
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
        TabOrder = 12
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
        TabOrder = 21
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
        TabOrder = 1
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
        TabOrder = 4
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
        TabOrder = 2
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
        TabOrder = 7
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
        TabOrder = 14
        Text = '        '
        Width = 40
      end
      object eIbge: TcxMaskEdit
        Left = 444
        Top = 189
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
        TabOrder = 42
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
        TabOrder = 17
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
        Left = 62
        Top = 98
        Width = 552
        Height = 22
        BevelOuter = bvNone
        TabOrder = 8
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
        TabOrder = 44
        Width = 113
      end
      object cxEndereco: TcxButton
        Left = 619
        Top = 143
        Width = 60
        Height = 89
        Hint = 
          'Cadastro de outros endere'#231'os do cliente Ativo apenas durante edi' +
          #231#245'es)'
        Caption = '&Endere'#231'os'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = ''
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000181818197474
          7483838383997B7C7C8B7A7B7B897978798679797984767777817576767F7474
          747C7373737B7272727A7676767D76767682727373857677778A797A7A8C7B7C
          7C8E7B7C7C8F7C7D7D907C7D7D907B7C7C8F7B7C7C8F7C7C7C8E7C7C7C8E7B7B
          7B8D7A7A7A8C7A7A7A8B7878788978787889828383965758586247474748B9B9
          B9E6D3D4D4FFDDDEDEFFDADBDBFFDBDBDCFFD9DBDBFFD9DADAFFD9D9D9FFD9D9
          D9FFDADBDBFFD1D3D3F3C3C4C4E1B2B3B3CAA4A5A5BB999A9AAC8E8E8EA28888
          889A868686958182829284848494898A8A988E8E8E9F949494A5999999AA9D9D
          9DB0A4A5A5B5A3A4A4B8A5A5A5B9AAABABC1969797A530313134030303047B7B
          7B9FDFE0E1FFE3E4E4FFE3E3E3FFE3E5E5FFE4E5E5FFE5E5E5FFE4E5E5FFE4E5
          E5FFE4E6E6FFE2E3E3FDDADADAF2CCCCCCE1BBBCBCD0A5A5A5B58D8D8DA17979
          79876565656F5050505B3D3D3D43313131372121212511121214030303030000
          0000000000000000000000000000000000000000000000000000000000009091
          91B6DFE0E0FFE3E3E3FFE2E3E3FFE4E4E4FFE4E5E5FFE6E7E7FFE7E7E7FFE7E8
          E8FFE8E9E9FFEAEBEBFFEAEBEBFFEBECECFFECEDECFFEBECECFFEDEFEFFFEDEF
          EFFFEBECECFFECEDEDFFEBEBEBFFE6E6E7FFDCDCDDF0C8C8C8DFB7B8B8CEA8A9
          A9BC8D8D8EA77B7B7B8A666667785152525C3D3D3E492727273000000000A6A6
          A7C7DDDEDDFFE3E4E4FFE3E4E4FFE4E5E5FFE5E6E6FFE7E7E7FFE7E7E7FFE8E9
          E9FFE9E9E9FFE9EAEAFFEAEBEBFFEBECECFFEBECECFFECEDEDFFEDEDEDFFEDEE
          EEFFEFEFEFFFEFEFEFFFEFEFEFFFF1F2F2FFF0F1F0FFF1F2F2FFF1F2F2FFEFF0
          F0FFF2F3F3FFEEEEEEFFECEDEDFFECEDEDFFE8E9EAFFD0D0D0E403030304AAAA
          ABD3E4E5E5FFE3E4E4FFE4E4E4FFE5E6E6FFE5E6E6FFE9E9E9FFF0F1F1FFF2F2
          F2FFF1F2F2FFF2F2F2FFF2F2F2FFF0F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEE
          EEFFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFEFF0F0FFEFEFEFFFEFEFEFFFEEEFEFFFEFF0F0FFDBDCDCEE0D0D0D12B5B6
          B6E0E6E7E7FFE3E4E4FFE4E5E5FFE6E6E6FFE9EAEAFFE0E1E1FFCCCDCDFFD2D3
          D4FFD8D7D8FFDDDEDEFFDFE0E0FFE8E8E9FFECEDEDFFEFEFEEFFF2F2F2FFF9F9
          F9FFF6F6F5FFF0F0F0FFF0F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F1
          F1FFF0F1F1FFF0F0F0FFEFEFEFFFEEEFEFFFEFEFEFFFC6C7C7D91A1A191FC8C8
          C9EEE3E4E4FFE4E5E5FFE5E6E6FFE6E7E7FFEBEBEBFFDFE0E0FFC4C5C6FFC2C3
          C4FFC8C9CAFFC2C3C3FFC3C4C4FFC8C8C8FFC1C2C3FFC9C8C9FFCFD0D0FFC2C3
          C4FFD6D7D6FFF7F6F6FFF2F2F2FFF2F3F3FFF2F3F3FFF2F3F3FFF2F2F2FFF2F2
          F2FFF1F2F2FFF1F1F1FFF0F1F1FFF0F0F0FFEEEEEEFFB4B5B5BF2121212CD5D5
          D6FBE7E7E8FFE5E5E5FFE6E6E6FFE6E7E7FFEDEDEDFFDBDBDBFFCACBCCFFD2D3
          D3FFD7D7D8FFCCCCCDFFC5C5C6FFD6D7D7FFEFEFEFFFEAEAEBFFE7E7E7FFD8D8
          D9FFE0E1E1FFF6F6F6FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF2F3F3FFF2F2F2FFF1F1F1FFF0F1F1FFF0F0F0FFA5A5A5B22E2E2E38D2D2
          D2FFE9EAEAFFE5E6E6FFE6E7E7FFE7E7E7FFEFF0F0FFCFD0D1FFBCBDBEFFC9CA
          CAFFCACBCDFFCACACCFFCCCCCDFFDADBDBFFEDEEEEFFF3F4F4FFF5F6F5FFF9FA
          FAFFF7F8F8FFF3F3F3FFF4F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F5F5FFF4F4
          F4FFF4F4F4FFF3F3F3FFF2F3F3FFF1F2F2FFF1F1F1FF9393939E3F3F3F46D2D3
          D3FFE8E9E9FFE6E6E6FFE6E7E7FFE7E8E8FFEEEEEEFFD4D5D6FFCBCCCCFFCCCC
          CDFFCECECFFFCDCDCFFFD9DAD9FFC5C6C6FFB9BABAFFB5B7B8FFD9DADAFFFAFA
          FAFFF4F4F4FFF5F5F5FFF5F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F6F6FFF5F5
          F5FFF4F5F5FFF4F4F4FFF3F3F3FFF2F2F2FFF0F0F0FF808080844A4A4A5BDADB
          DBFFE9E9E9FFE6E7E7FFE7E8E8FFE8E9E9FFE7E9E9FFF0F0F0FFF5F5F5FFF4F5
          F5FFF4F4F4FFF6F6F7FFF2F3F3FFECECECFFEFEFEFFFE5E4E5FFECEDEDFFF6F7
          F7FFF5F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
          F6FFF6F6F6FFF5F5F5FFF4F5F5FFF3F3F3FFF3F3F3FF707070775352536EDFE0
          E0FFE9EAEAFFE6E7E7FFE7E8E8FFE9E9E9FFE9EAEAFFEBECECFFEBECECFFEDEE
          EEFFEEEEEEFFEFEFEFFFF1F2F2FFF7F6F6FFF7F7F7FFFCFCFBFFF8F9F9FFF5F5
          F5FFF6F6F6FFF7F7F7FFF7F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7
          F7FFF7F7F7FFF6F6F6FFF5F5F5FFF4F4F4FFF3F3F3FF6161616569696A7EDBDC
          DCFFE9EAEAFFE7E7E7FFE8E8E8FFE9EAEAFFEAEAEAFFEBECECFFECEDEDFFEEEE
          EEFFEFEFEFFFF0F1F1FFF1F1F1FFF2F3F3FFF3F3F3FFF4F4F4FFF5F6F6FFF7F7
          F7FFF7F7F7FFF8F9F9FFF9F9F9FFFAFAFAFFFAFAFAFFFAF9F9FFF9F9F9FFF9FA
          FAFFF8F8F8FFF6F6F6FFF6F6F6FFF4F5F5FFF2F2F2FF4B4B4B4C7575758EDFE0
          DFFFE8E9E9FFE7E7E7FFE8E8E8FFE9EAEAFFEAEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEFEFEFFFF0F1F1FFF1F1F1FFF3F3F3FFF3F4F4FFF5F5F5FFF6F6F6FFF7F7
          F7FFF8F8F8FFF9F9F9FFFAFAFAFFFAFAFAFFFAFBFBFFFBFCFCFFFEFEFEFFFEFE
          FEFFFAFBFBFFF8F9F9FFF6F6F6FFF5F6F6FFF3F3F3FF3C3C3C3D7C7C7DA1E6E7
          E7FFE7E8E8FFE7E8E8FFE8E9E9FFE9EAEAFFEAEBEBFFECEDEDFFEDEDEDFFEEEF
          EFFFEFF0F0FFF1F1F1FFF1F2F2FFF3F3F3FFF4F4F4FFF5F6F6FFF6F6F6FFF8F8
          F8FFF9F9F9FFFAFAFAFFFBFBFBFFFCFCFCFFFEFDFDFFFEFFFFFFE8E9E9FFC9CA
          CAFFE7E7E8FFFAFBFBFFF8F8F8FFF5F5F5FFF2F2F2FC2C2C2C2E8F8F8FB3E5E5
          E5FFE7E8E8FFE7E8E8FFE8E9E9FFE9EAEAFFEAEBEBFFECEDEDFFEDEDEDFFEEEF
          EFFFEFF0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFF6F6F6FFF7F7F7FFF8F8
          F8FFF9F9F9FFFAFAFAFFFBFCFCFFFEFEFEFFFEFEFEFFF5F5F5FFD9DADBFFC8C8
          C6FFEFEEE4FFFAFAF1FFFFFFF9FFF9F8F6FFE7E8E8F020202021A0A1A1C3E5E6
          E6FFE6E6E7FFE6E7E8FFE9EAEAFFEAEBEBFFEBECECFFECEDEDFFEDEDEDFFEEEF
          EFFFEFF0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFF6F6F6FFF7F7F7FFF8F8
          F8FFF9F9F9FFFAFBFBFFFBFCFCFFFFFFFFFFF7F7F7FFD2D2D2FFE3E4E3FFE4E4
          E5FFC0C1D7FFA6A8C0FFE4E5F2FFFFFFF9FFDADBDAE213131314A9AAAAD2E8E9
          E9FFF1F0E8FFF3F4EAFFEDEEEBFFE9EBECFFEDEEEEFFEDEEEEFFEDEDEDFFEEEF
          EFFFEFF0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF4F4F4FFF6F6F6FFF7F7F7FFF8F8
          F8FFF9F9F9FFFAFAFAFFFBFBFBFFFFFFFFFFFCFCFCFFBEBEBFFFD1D0C3FFBBBC
          DAFF373DABFF454BA9FF565DD5FF999EE2FFD5D4D1D505050505B6B7B6E1ECEC
          EBFFBDC0E0FFB5B7E0FFC5C7D5FFD6D7D3FFD3D4D5FFDCDDDDFFEFEFEFFFEFEF
          EFFFEFEFEFFFF0F1F1FFF1F2F2FFF3F3F3FFF4F4F4FFF5F6F6FFF6F6F6FFF7F8
          F8FFF8F9F9FFFAFAFAFFFAFAFAFFFBFBFBFFFFFFFFFFF5F5F6FFD4D3C5FF6568
          96FF2B31A7FFB7BBF0FF474ED3FF5A61D0FFC7C7C4C700000000CECFCEFFEFF0
          ECFFA5A9DCFF959ADAFFBEC0D4FFD9D8D1FFCBCCCDFFD6D8D8FFEEEFEFFFEEEE
          EEFFEFEFEFFFF0F1F1FFF0F1F1FFF2F3F3FFF3F4F4FFF5F5F5FFF6F6F6FFF7F7
          F7FFF7F8F8FFF9F9F9FFFAFAFAFFFAFAFAFFFAFBFBFFFFFFFFFFFEFEFDFF7A7E
          CDFF424ACEFFFAFBFFFF3C43CDFF6F74D6FFB8B8B7B800000000747474839798
          98AAA4A49EB1AEAEA8B5B7B7B5C0C3C3C4D3D0D0D0E1D9D9D9E8DCDEDDECE8E8
          E8F8EEEFEFFEF1F1F1FFF2F2F2FFF2F3F3FFF4F4F4FFF4F5F5FFF5F6F6FFF6F6
          F6FFF7F7F7FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFFFFFFFFC3C6
          F0FF747ADBFFA4A7E6FF4148CDFFB3B6E5FFA5A5A3A600000000000000000000
          0000000000000000000000000000070707080F0F0F11141414151C1C1C1C2C2C
          2C2E3939393E434343474B4B4B4C5859595A6868686D7777777D808080848A8A
          8A8C9898989BAAAAAAB0B6B7B7BBC0C0C0C3C9C9C9CCD4D4D4D8DEDEDDE3EAEA
          E8EAEBECEDF2D5D6EDFCE7E8F4FFFAFBF7FF9696969A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030303030C0C0C0D151515161919191A1E1E
          1E1E2929292A3939393C434343454F4F4F4F5A5A5A5B696A6A6C7676777A8484
          83848F8F8F8F9D9D9C9DAFAFAFAFC4C4C0C46262626400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.ImageIndex = 0
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 15
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = False
        TabOrder = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxEnderecoClick
      end
    end
  end
  inherited cxPopMenu: TRxPopupMenu
    object CrditodeCliente1: TMenuItem
      Caption = '&Cr'#233'dito de Cliente'
      OnClick = CrditodeCliente1Click
    end
    object Endereos1: TMenuItem
      Caption = '&Endere'#231'os'
      OnClick = cxEnderecoClick
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
      '(IDCLIE, RAZAO, FANTASIA, ENDERECO, NUMERO, '
      '  CIDADE, UF, BAIRRO, CEP, CNPJ, '
      '  RG, IE, CPF, FONE, CELULAR, EMAIL, '
      '  OBS, COMPLEMENTO, DATACAD, ATIVO, DATANASCE, '
      '  TIPOPESSOA, TIPOCLIE, IDVENDEDOR, IDCPAGTO, '
      '  IDTRANSP, CREDITO, LIMITEFINANCEIRO, BLOQUEADO, '
      '  ALERTACLIE, TIPORESID, ALUGUEL, TEMPORESID, '
      '  RAZAOTRABALHO, FONETRABALHO, ENDTRABALHO, '
      '  CIDADETRABALHO, PROFISSAO, SALARIO, OUTRASRENDAS, '
      '  RENDADESCRICAO, NOMECONJ, CPFCONJ, RGCONJ, '
      '  DATANASCCONJ, SALARIOCONJ, TRABALHOCONJ, '
      '  FONETRABCONJ, EMAILCONJ, FONECONJ)'
      
        'VALUES (:NEW_IDCLIE, :NEW_RAZAO, :NEW_FANTASIA, :NEW_ENDERECO, :' +
        'NEW_NUMERO, '
      '  :NEW_CIDADE, :NEW_UF, :NEW_BAIRRO, :NEW_CEP, :NEW_CNPJ, '
      
        '  :NEW_RG, :NEW_IE, :NEW_CPF, :NEW_FONE, :NEW_CELULAR, :NEW_EMAI' +
        'L, '
      
        '  :NEW_OBS, :NEW_COMPLEMENTO, :NEW_DATACAD, :NEW_ATIVO, :NEW_DAT' +
        'ANASCE, '
      
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
  object uHis_Cliente: TUCHist_DataSet
    DataSet = qryClie
    ControlHistorico = FPrinc.uHistorico
    Left = 784
    Top = 152
  end
  object UCControls1: TUCControls
    GroupName = 'Cadastro de Clientes'
    UserControl = FPrinc.UserControl1
    Components = ''
    NotAllowed = naDisabled
    Left = 792
    Top = 200
  end
end
