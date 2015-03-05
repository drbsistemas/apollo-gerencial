inherited FCad_Credito: TFCad_Credito
  BorderIcons = []
  Caption = 'Cr'#233'dito de Cliente'
  ClientWidth = 906
  FormStyle = fsNormal
  Visible = False
  WindowState = wsNormal
  ExplicitWidth = 914
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel [0]
    Top = 23
    Width = 848
    Height = 516
    ExplicitTop = 23
    ExplicitWidth = 848
    ExplicitHeight = 516
    inherited pnMenu: TPanel
      Width = 846
      TabOrder = 4
      ExplicitWidth = 846
    end
    object eData: TcxDateEdit
      Left = 137
      Top = 113
      Hint = 'Data da Movimenta'#231#227'o'
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
      TabOrder = 0
      Width = 110
    end
    object cxLabel14: TcxLabel
      Left = 35
      Top = 115
      AutoSize = False
      Caption = 'Data:'
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
      AnchorX = 135
    end
    object cxLabel6: TcxLabel
      Left = 90
      Top = 158
      Caption = 'Cr'#233'dito:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.TextColor = clBlack
      Properties.Alignment.Horz = taLeftJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
    end
    object eCredito: TcxCurrencyEdit
      Tag = 1
      Left = 137
      Top = 156
      Hint = 'Cr'#233'dito a Ser Lan'#231'ado'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 2
      Width = 110
    end
    object cxLabel22: TcxLabel
      Left = 35
      Top = 180
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
      Width = 100
      AnchorX = 135
    end
    object eDescricao: TcxTextEdit
      Tag = 1
      Left = 137
      Top = 178
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
      TabOrder = 3
      Width = 250
    end
    object eDocumento: TcxTextEdit
      Tag = 1
      Left = 137
      Top = 134
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
      TabOrder = 1
      Width = 110
    end
    object cxLabel7: TcxLabel
      Left = 35
      Top = 136
      AutoSize = False
      Caption = 'N'#186' Documento:'
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
      AnchorX = 135
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 848
    Top = 23
    TabOrder = 3
    ExplicitLeft = 848
    ExplicitTop = 23
    ExplicitHeight = 516
    Height = 516
  end
  inherited pnCon: TPanel [2]
    Top = 23
    Width = 848
    Height = 516
    ExplicitTop = 23
    ExplicitWidth = 848
    ExplicitHeight = 516
    inherited pnBusca: TPanel
      Top = 52
      Width = 846
      Visible = False
      ExplicitTop = 52
      ExplicitWidth = 846
      inherited cxLabel1: TcxLabel
        Left = 9
        ExplicitLeft = 9
      end
      inherited cxConsulta: TcxComboBox
        Left = 63
        ExplicitLeft = 63
      end
      inherited eConsulta: TcxTextEdit
        Left = 184
        ExplicitLeft = 184
      end
      inherited cxLabel2: TcxLabel
        Left = 453
        ExplicitLeft = 453
      end
      inherited cbAtivo: TcxComboBox
        Left = 485
        Style.IsFontAssigned = True
        ExplicitLeft = 485
      end
      inherited cxCon: TcxButton
        Left = 422
        ExplicitLeft = 422
      end
      inherited cxQtdeReg: TcxLabel
        Left = 568
        ExplicitLeft = 568
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 846
      Height = 51
      ExplicitWidth = 846
      ExplicitHeight = 51
      inherited cxNovo: TcxButton
        Caption = '&Dinheiro'
      end
      inherited cxEdita: TcxButton
        Left = 398
        Visible = False
        ExplicitLeft = 398
      end
      inherited cxVer: TcxButton
        Left = 457
        Visible = False
        ExplicitLeft = 457
      end
      inherited cxApagar: TcxButton
        Left = 516
        Visible = False
        ExplicitLeft = 516
      end
      inherited cxVoltar: TcxButton
        Left = 116
        ExplicitLeft = 116
      end
      inherited cxPrint: TcxButton
        Left = 634
        Visible = False
        ExplicitLeft = 634
      end
      inherited cxOpcoes: TcxButton
        Left = 575
        Visible = False
        ExplicitLeft = 575
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 468
      Width = 846
      Height = 47
      Visible = False
      ExplicitTop = 468
      ExplicitWidth = 846
      ExplicitHeight = 47
      inherited cxCadastro: TcxButton
        TabOrder = 1
      end
      inherited cxFechar: TcxButton
        TabOrder = 0
      end
    end
    inherited grConsulta: TcxGrid
      Top = 75
      Width = 846
      Height = 118
      ExplicitTop = 75
      ExplicitWidth = 846
      ExplicitHeight = 118
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsCredito
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          Width = 100
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 100
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 250
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Cr'#233'dito'
          DataBinding.FieldName = 'CREDITO'
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'D'#233'bito'
          DataBinding.FieldName = 'DEBITO'
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'SALDO'
        end
      end
    end
    inherited pnSelec: TPanel
      Top = 193
      Width = 846
      ExplicitTop = 193
      ExplicitWidth = 846
      inherited grConsulta2: TcxGrid
        Width = 844
        ExplicitWidth = 844
      end
      inherited pnTop: TPanel
        Width = 844
        ExplicitWidth = 844
        inherited cxContas: TcxLabel
          Style.IsFontAssigned = True
        end
        inherited cxTotal: TcxLabel
          Left = 636
          Style.IsFontAssigned = True
          ExplicitLeft = 636
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 427
      Width = 846
      Height = 41
      Align = alBottom
      Caption = 'Panel2'
      TabOrder = 5
      Visible = False
      object cxBaixaValor: TcxButton
        Left = 649
        Top = 2
        Width = 55
        Height = 39
        Hint = 'Confirma Valor para Baixa'
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
        TabOrder = 0
      end
      object eVlrBaixa: TcxCurrencyEdit
        Left = 547
        Top = 10
        Hint = 'Total Itens'
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 1
        Width = 96
      end
      object cxLabel4: TcxLabel
        Left = 456
        Top = 12
        Caption = 'Valor para Baixa:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 356
        Top = 10
        Hint = 'Total Itens'
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 3
        Width = 96
      end
      object cxLabel5: TcxLabel
        Left = 268
        Top = 12
        Caption = 'Valor '#225' Receber:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 0
    Width = 906
    Height = 23
    Align = alTop
    TabOrder = 2
    object cxLabel3: TcxLabel
      Left = -11
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
      AnchorX = 64
    end
    object eCodCliente: TcxTextEdit
      Left = 66
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
      Left = 117
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
    object eTotalCredito: TcxCurrencyEdit
      Left = 600
      Top = 1
      Hint = 'Total Itens'
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = True
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 3
      Width = 96
    end
    object cxLabel11: TcxLabel
      Left = 496
      Top = 3
      Caption = 'Cr'#233'dito Dispon'#237'vel:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.TextColor = clBlack
      Properties.Alignment.Horz = taLeftJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
    end
  end
end
