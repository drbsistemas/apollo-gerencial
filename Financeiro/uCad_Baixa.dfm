object Fcad_Baixa: TFcad_Baixa
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Baixa de Contas'
  ClientHeight = 531
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 25
    Align = alTop
    TabOrder = 0
    object cxContas: TcxLabel
      Left = 29
      Top = 2
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
    object cxLabel14: TcxLabel
      Left = 577
      Top = 4
      AutoSize = False
      Caption = 'Data de Baixa:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 104
      AnchorX = 681
    end
    object eData: TcxDateEdit
      Left = 681
      Top = 2
      Hint = 'Data do Pedido'
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
      TabOrder = 2
      OnExit = eDataExit
      Width = 110
    end
  end
  object grSelec: TcxGrid
    Left = 0
    Top = 25
    Width = 800
    Height = 164
    Hint = 'Grid de Dados'
    Align = alTop
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Black'
    RootLevelOptions.TabsForEmptyDetails = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
      DataController.DataSource = dmFin.dsSelec
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'VLRJUROS'
          DisplayText = 'Juros'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object STATUS: TcxGridDBColumn
        Caption = 'St'
        DataBinding.FieldName = 'STATUS'
        Width = 65
      end
      object IDCONTA: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'IDCONTA'
        Width = 50
      end
      object NOMECLIE: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'NOMECLIE'
        Width = 230
      end
      object DTEMISSAO: TcxGridDBColumn
        Caption = 'Dt. Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Width = 100
      end
      object DCUMENTO: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'DOCUMENTO'
        Width = 100
      end
      object VENCTO: TcxGridDBColumn
        Caption = 'Dt. Vencto'
        DataBinding.FieldName = 'DTVENCTO'
        Width = 100
      end
      object VLRINI: TcxGridDBColumn
        Caption = 'Vlr. Inicial'
        DataBinding.FieldName = 'VLRINI'
        Width = 80
      end
      object VLRJUROS: TcxGridDBColumn
        Caption = 'Vlr. Juros'
        DataBinding.FieldName = 'VLRJUROS'
        Width = 70
      end
      object VLRMULTA: TcxGridDBColumn
        Caption = 'Vlr. Multa'
        DataBinding.FieldName = 'VLRMULTA'
        Width = 70
      end
      object VLRBRUTO: TcxGridDBColumn
        Caption = 'Vlr. Total'
        DataBinding.FieldName = 'VLRBRUTO'
        Width = 80
      end
      object DIASATRASO: TcxGridDBColumn
        Caption = 'Dias Atraso'
        DataBinding.FieldName = 'DIASATRASO'
      end
      object VLRPAGO: TcxGridDBColumn
        Caption = 'Vlr. Pago'
        DataBinding.FieldName = 'VLRPAGO'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object pnCorpo: TPanel
    Left = 0
    Top = 189
    Width = 800
    Height = 292
    Align = alClient
    TabOrder = 2
    object pnCond: TcxGroupBox
      Left = 261
      Top = 2
      Caption = 'C'#243'd.  Forma de Pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 0
      Height = 92
      Width = 295
      object eFPagto: TcxTextEdit
        Left = 42
        Top = 18
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clNone
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = clNone
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 31
        Width = 245
      end
      object eCodFpagto: TcxTextEdit
        Left = 7
        Top = 18
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 0
        Text = '0'
        OnExit = eCodFpagtoExit
        OnKeyPress = eCodFpagtoKeyPress
        Height = 31
        Width = 35
      end
      object cxLabel6: TcxLabel
        Left = 197
        Top = 48
        Caption = 'Vlr. Pago R$'
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
      object eVlrPago: TcxCurrencyEdit
        Left = 7
        Top = 50
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '###,###,##0.00'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 13366014
        TabOrder = 2
        OnExit = eVlrPagoExit
        Height = 31
        Width = 280
      end
    end
    object cxBaixa: TcxGrid
      Left = 261
      Top = 96
      Width = 295
      Height = 193
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
      TabOrder = 1
      TabStop = False
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      RootLevelOptions.TabsForEmptyDetails = False
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = cxGridDBTableView2DblClick
        OnKeyDown = cxGridDBTableView2KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBaixa
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
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = 'C'#243'd.'
          DataBinding.FieldName = 'IDFPAGTO'
          Width = 46
        end
        object cxGridDBColumn12: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 143
        end
        object cxGridDBColumn13: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VLRPAGO'
          Width = 106
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 561
      Top = 2
      Caption = 'Vlr. Inicial'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 2
      Height = 56
      Width = 233
      object eVlrIni: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 561
      Top = 60
      Caption = 'Juros/Multa'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 3
      Height = 56
      Width = 115
      object eJuros: TcxCurrencyEdit
        Left = 7
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 100
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 679
      Top = 60
      Caption = 'Vlr. Desc.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 4
      Height = 56
      Width = 115
      object eDesc: TcxCurrencyEdit
        Left = 8
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 100
      end
    end
    object cxGroupBox6: TcxGroupBox
      Left = 561
      Top = 118
      Caption = 'Vlr. Total'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 5
      Height = 56
      Width = 233
      object eTotal: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TextColor = clMaroon
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 561
      Top = 176
      Caption = 'Vlr. Pago'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 6
      Height = 55
      Width = 233
      object ePago: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox7: TcxGroupBox
      Left = 561
      Top = 233
      Caption = 'Vlr. Restante'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 7
      Height = 56
      Width = 233
      object eRestante: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox8: TcxGroupBox
      Left = 7
      Top = 2
      Caption = 'Formas de Pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 8
      Height = 286
      Width = 250
      object cxOpcao: TcxRadioGroup
        Left = 3
        Top = 230
        Align = alBottom
        Caption = 'Imprimir (F1)'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Nenhum'
            Value = 0
          end
          item
            Caption = 'Recibo'
            Value = 1
          end>
        ItemIndex = 0
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.TextColor = clInactiveCaptionText
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 0
        Height = 46
        Width = 244
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 18
        Width = 244
        Height = 212
        Align = alClient
        Color = 15855081
        DataSource = dsFPagto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 186
            Visible = True
          end>
      end
    end
  end
  object pnMenu: TPanel
    Left = 0
    Top = 481
    Width = 800
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object cxBaixar: TcxButton
      Left = 340
      Top = 0
      Width = 60
      Height = 51
      Hint = 'Quita os t'#237'tulos selecionados'
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
        DFFFEEEEE9FFA1A5E3FF595FD6FF2E36CAFF212BC6FF252EC8FF3D45CEFF7176
        D3FFBDBFDCFFC6C5B5C93636343C000000000000000000000000BEBEBEE4E2E2
        E2FFDFDFE0FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
        E1FFE0E0E1FFDFDFE0FFDFDFDFFFDEDEDFFFDEDEDFFFDADADAFFF4F4DFFFC9CB
        E7FF454CD0FF010CC0FF010BC0FF010BC2FF0610C6FF0D16C5FF050FC1FF0009
        BFFF141DC4FF8085D6FFE3E3D6F63E3E3B440000000000000000C0C0C1E4E5E5
        E5FFE2E2E3FFE3E3E3FFE3E3E3FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3
        E3FFE3E3E3FFE2E2E3FFE1E1E2FFE2E2E2FFDDDDDFFFF4F3E0FFC3C5E6FF222C
        CAFF0009C0FF1C25C9FF121BCBFF151FCBFF1D26C6FF1922D0FF1E27CEFF1C25
        CAFF111AC5FF0001BDFF585ECFFFE4E3D8F930302F3300000000C2C2C3E4E7E7
        E8FFE4E4E5FFE5E5E5FFE5E5E5FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5
        E5FFE5E5E5FFE4E4E5FFE4E4E4FFE2E2E4FFEBEBDEFFD5D8E5FF434AD2FF2932
        CBFF212ACCFF0C15CCFF020BCDFFAFB3EDFF9B9FD3FF0007C6FF1C26D7FF1C25
        CFFF1E27CDFF1820C7FF0002BDFF7B81D2FFC9C9B8D003030303C4C4C5E4EAEA
        EAFFE7E7E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE8E8E8FFE7E7E7FFE7E7E8FFE4E4E2FFF6F6E5FF7176D9FF2C33CBFF4950
        D6FF0B15CDFF020BCEFF9EA2EBFFFFFFFFFFFFFFF6FF2D35C0FF030CD5FF1D26
        D6FF1C25D1FF1E27CDFF101BC4FF131EC4FFB5B7D4FF54544F57C7C6C7E4EBEB
        ECFFE8E8E9FFEAEAEAFFEAEAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
        EAFFEAEAEAFFE9E9EAFFE9E9EAFFF3F3E4FFD0D2E3FF3A41CEFF4249D2FF3B43
        D6FF0D16CFFFA2A5ECFFFFFFFFFFFFFFFFFFFFFFFFFFA8ABD8FF0009C4FF1922
        DCFF1C26D4FF1C25CFFF1C26CAFF000BC0FF6A70CEFFA8A79AAFC8C8C8E4EEEE
        EDFFEBEBEBFFECECEDFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECEC
        ECFFECECECFFECECECFFEDECEDFFF8F8E6FFA0A4DCFF2C35CBFF454DD5FF4047
        D7FFB4B6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF545AC5FF0007
        D2FF2029DAFF1C25D1FF1D25CCFF0710C1FF3941CAFFC1C2BFE2CACACAE4F0F0
        F0FFEEEDEEFFEEEEEEFFEEEEEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
        EFFFEEEEEFFFEEEEEEFFF0EFEEFFF6F6E6FF888DD8FF2A33CBFF3B44D4FFBABC
        F0FFFFFFFFFFFFFFFFFFD2D3F5FF7B7FE7FFFDFDFFFFFFFFFFFFD8D9E6FF0B14
        BEFF0E17DBFF1D26D3FF1D26CDFF0C15C3FF2730C7FFBBBDC4E9CDCCCCE4F3F2
        F2FFEFF0F0FFF0F0F1FFF1F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1
        F1FFF0F0F1FFF0F0F0FFF1F1F0FFF6F5E7FF8388D8FF2D35CCFF3941D3FFA8AB
        EFFFFFFFFFFFD9DAF7FF282FD8FF0000CFFFAFB1F2FFFFFFFFFFFFFFFFFF8B8E
        CFFF0003C6FF1B25D8FF1D26CDFF0812C2FF242CC4FFBBBCC3E6CECECEE4F4F4
        F5FFF2F2F2FFF2F2F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3
        F3FFF3F3F3FFF2F2F3FFF4F4F4FFF9F8E7FF9095D9FF2E36CCFF444BD5FF565C
        DEFFB7BAF1FF5A5FE0FF2D33DBFF1017D6FF2830DAFFF5F6FDFFFFFFFFFFFBFB
        F6FF4248C0FF0006CDFF1922CEFF111BC4FF3B43CCFFBDBDC2E9CFCFD0E4F6F6
        F7FFF4F4F4FFF5F5F5FFF5F5F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
        F6FFF5F5F5FFF5F5F5FFF6F7F7FFFDFBEAFFB5B7DBFF2F37CCFF484FD3FF464D
        D8FF3940D9FF4046DEFF5156E0FF4E55E0FF1921D7FF868AEAFFFFFFFFFFFFFF
        FFFFD8D9E8FF181FB9FF252ECFFF353ECEFF646AD1FFB5B4ABCCD1D1D2E4F8F8
        F9FFF6F6F7FFF7F7F7FFF8F8F8FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8
        F8FFF7F7F7FFF6F6F6FFF7F7F7FFF8F6EFFFE5E5E2FF4D55D1FF333BCDFF4B52
        D7FF464DD9FF4A51DEFF494FDFFF4E53E0FF494FDFFF3A41DDFFCCCEF7FFFFFF
        FFFFFFFFFFFFB4B7DAFF3D44C7FF3038CFFF8D90CDFF7F7F7584D3D3D4E4FAFA
        FBFFF8F8F8FFFAFAF9FFFAFAFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFA
        FBFFF9F9FAFFF8F8F9FFF8F8F9FFF6F6F8FFF9F9E6FFA1A4D9FF262FCBFF484F
        D3FF4B52D7FF4950D9FF4950DCFF4950DEFF4B51DEFF363EDAFF4E55DEFFF1F2
        FDFFFFFFFFFFC7C9EFFF2D35C9FF4A51CCFFCDCDCCF71E1E1E1FD5D5D5E4FCFC
        FDFFFAFAFAFFFBFBFCFFFCFCFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
        FDFFFCFCFCFFFAFAFBFFF9F9FAFFFBFBFCFFF5F6F2FFEDEDDEFF757AD5FF232B
        C9FF4850D3FF4C53D7FF4950D7FF4950D9FF4950DAFF4A52DAFF3038D3FF868A
        E5FFB8BBECFF3038CDFF2831CBFFB4B7D0FF7A7A717E00000000D7D7D7E4FEFE
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFCFFFAFAFAFFFCFCFDFFF7F7EDFFE8E9DCFF7379
        D3FF2831CBFF343CCDFF464DD2FF4D54D5FF4D54D6FF4D54D6FF4C53D4FF333B
        CEFF1A24C8FF3840CBFFAFB1D1FF98988AA20000000000000000D7D7D8E4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFFBFBFBFFF9F9FCFFF6F6EDFFEBEA
        DCFF9FA2D5FF4E55D0FF313ACCFF2E37CBFF2F37CCFF3038CDFF3038CCFF3A42
        CCFF6970CFFFC6C8D3FF8E8E8398000000000000000000000000D9D9D9E4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFAFFFBFBFDFFF5F5
        F1FFF6F5E2FFDFDFDBFFB0B3D5FF8C90D1FF8084D0FF8387D0FF9A9DD3FFC3C6
        D4FDB0AFA3C04343404600000000000000000000000000000000D9D9D9E4FFFF
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
      ShowHint = True
      TabOrder = 0
      OnClick = cxBaixarClick
    end
    object cxCancela: TcxButton
      Left = 399
      Top = 0
      Width = 60
      Height = 51
      Hint = 'Cancela a'#231#227'o e retorna para consulta de registros.'
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000A2A2A2CEC5C4
        C4ECBCBBBCE4BCBCBDE4BCBCBDE4BDBDBEE4BDBDBEE4BDBDBEE4BDBDBEE4BDBD
        BDE4BCBCBDE4BCBBBCE4BCBBBCE4BABABBE4BABABBE4B9B9BAE4BAB9BAE4B6B6
        B6E4B8B8B9E4C7C8C7E4CFCFCFE5C9C9C9E5C1C2C2E5C5C5C5E8CBCCCBE7A3A3
        A3AC515151580000000000000000000000000000000000000000C9C8CAF1E3E3
        E4FFE1E0E1FFE1E1E2FFE1E1E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1
        E2FFE1E1E2FFE1E0E1FFE1E0E1FFDFDFE0FFDFDFE0FFDEDEDFFFD9DADAFFECEC
        ECFFECECECFFB5B6B7FF818385FF616365FF585A5DFF5B5D60FF6C6E70FF9091
        93FFC6C8C8FFC0C0C0C93636363C000000000000000000000000BEBEBEE4E2E2
        E2FFDFDFE0FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
        E1FFE0E0E1FFDFDFE0FFDFDFDFFFDEDEDFFFDEDEDEFFD9DADBFFEDEDEDFFD2D3
        D2FF727476FF424447FF45474BFF4E5053FF525557FF515356FF4A4C4FFF4143
        46FF4E5053FF9A9B9DFFDFDFDEF63D3D3D440000000000000000C0C0C1E4E5E5
        E5FFE2E2E3FFE3E3E3FFE3E3E3FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3E4FFE3E3
        E3FFE3E3E3FFE2E2E3FFE1E1E2FFE2E2E3FFDDDDDEFFEDEEEDFFCECFCFFF5C5E
        61FF414347FF4C4E51FF5D5F61FF6C6D70FF686A6DFF6A6C6EFF656769FF5254
        57FF47494DFF3B3F41FF7D7F81FFE0E0DFF93030303300000000C2C2C3E4E7E7
        E8FFE4E4E5FFE5E5E5FFE5E5E5FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5
        E5FFE5E5E5FFE4E4E5FFE4E4E4FFE3E3E3FFE8E7E7FFDADADAFF737577FF5B5E
        60FF5F6163FFABACAEFF737577FF616365FF77797BFF6D6E71FF5E6062FFAAAB
        ACFF87878AFF454649FF3B3E42FF969899FFC3C4C4D003030303C4C4C5E4EAEA
        EAFFE7E7E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE8E8E8FFE7E7E7FFE7E7E8FFE4E4E4FFF1F0F0FF929495FF5E6063FF7E80
        82FFCCCCCDFFFFFFFFFFE3E2E3FF6B6B6DFF68696BFF6A6B6EFFAEAFB0FFFFFF
        FFFFFEFDFEFF858688FF45484BFF4C4F52FFBEBFBFFF53535357C7C6C7E4EBEB
        ECFFE8E8E9FFEAEAEAFFEAEAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
        EAFFEAEAEAFFE9E9EAFFE9E9EAFFEEEEEEFFD6D7D6FF6C6D6FFF707174FF8B8D
        8FFFF2F2F2FFFFFFFFFFFFFFFFFFD9D9D9FF696A6CFFADAEB0FFFFFFFFFFFFFF
        FFFFFFFFFFFFA7A8A9FF505256FF404346FF898B8CFFA3A4A3AFC8C8C8E4EEEE
        EDFFEBEBEBFFECECEDFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECEC
        ECFFECECECFFECECECFFECECEDFFF3F2F2FFB3B4B5FF636568FF838586FF8182
        84FF848587FFE2E2E2FFFFFFFFFFFFFFFFFFEDEDEDFFFEFEFEFFFFFFFFFFFFFF
        FFFFADAEAFFF5D5E61FF636567FF4A4C4FFF676A6CFFBFC0C0E2CACACAE4F0F0
        F0FFEEEDEEFFEEEEEEFFEEEEEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
        EFFFEEEEEFFFEEEEEEFFEFEFEFFFF1F0F0FFA1A3A4FF65676AFF858789FF8D8F
        91FF838586FF868788FFDADADBFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFADAD
        AEFF68696BFF6B6C6EFF67696BFF4E5153FF5B5D60FFBEBFBFE9CDCCCCE4F3F2
        F2FFEFF0F0FFF0F0F1FFF1F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1
        F1FFF0F0F1FFF0F0F0FFF1F1F1FFF0F1F0FF9E9EA0FF65676AFF868889FF8B8D
        8FFF939596FF7C7D7FFFBBBBBCFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF686A
        6CFF656667FF757778FF66686AFF4B4F51FF575A5DFFBDBDBDE6CECECEE4F4F4
        F5FFF2F2F2FFF2F2F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3
        F3FFF3F3F3FFF2F2F3FFF4F4F4FFF2F3F3FFA8A8AAFF646568FF858788FF8688
        89FF7E8081FFC3C4C5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
        D7FF696A6DFF5D5F61FF646567FF525456FF696B6EFFBDBEBEE9CFCFD0E4F6F6
        F7FFF4F4F4FFF5F5F5FFF5F5F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
        F6FFF5F5F5FFF5F5F5FFF7F7F7FFF6F6F7FFC1C2C2FF646669FF7A7C7EFF8384
        86FFC2C2C4FFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3FFE4E4E4FFFFFFFFFFFFFF
        FFFFE2E1E3FF707274FF6A6C6EFF6A6C6FFF868789FFB2B2B1CCD1D1D2E4F8F8
        F9FFF6F6F7FFF7F7F7FFF8F8F8FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8F9FFF8F8
        F8FFF7F7F7FFF6F6F6FFF7F7F7FFF5F5F4FFE4E4E3FF797A7DFF646568FF8C8D
        8FFFFCFBFCFFFFFFFFFFFFFFFFFFBEBFBFFF818183FF98999BFFEAEAEAFFFFFF
        FFFFFFFFFFFFB7B9B9FF727476FF646669FFA0A1A2FF7C7C7C84D3D3D4E4FAFA
        FBFFF8F8F8FFFAFAF9FFFAFAFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFA
        FBFFF9F9FAFFF8F8F9FFF8F8F9FFF7F7F7FFF3F3F3FFB2B3B4FF5E6062FF7375
        77FF9B9D9EFFF0F0F0FFC0C0C2FF7D7E81FF8E8F91FF848487FF8E8F90FFEAEA
        EAFFD4D5D5FF808182FF67686BFF75787AFFCCCCCCF71E1E1E1FD5D5D5E4FCFC
        FDFFFAFAFAFFFBFBFCFFFCFCFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
        FDFFFCFCFCFFFAFAFBFFF9F9FAFFFBFBFCFFF4F5F5FFE7E9E8FF929596FF5B5D
        5FFF737478FF8D8F90FF818385FF868789FF8A8B8DFF8A8B8DFF7E7F81FF8B8C
        8DFF818384FF65676AFF626467FFBCBDBDFF7778777E00000000D7D7D7E4FEFE
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFCFFFAFAFAFFFCFCFCFFF4F4F4FFE3E5E4FF9294
        96FF5E6062FF636668FF797A7DFF848487FF838587FF838587FF808284FF6E6F
        72FF5E6062FF6C6E70FFB7B8B9FF939493A20000000000000000D7D7D8E4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFCFFFBFBFBFFFAFAFBFFF3F4F4FFE5E6
        E6FFAFB0B1FF78797BFF656769FF646669FF65676AFF646669FF636568FF6B6D
        6FFF8B8C8EFFC8C9CAFF8B8B8B98000000000000000000000000D9D9D9E4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFAFFFBFBFCFFF4F4
        F4FFF0F0F0FFDDDEDEFFBABCBCFFA1A3A3FF989A9BFF9A9B9EFFAAACADFFC8C9
        C9FDABABACC04242424600000000000000000000000000000000D9D9D9E4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFBFBFBFFF9F9F8FFFAFA
        FAFFF6F6F6FFF2F2F2FFF1F1F1FFECEDEDFFEBECECFFEBECEBFFD1D1D1EB3939
        3941000000000000000000000000000000000000000000000000DADADAE4FFFF
        FFFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFAFFF8F8
        F8FFF6F6F6FFF5F5F5FFF4F4F5FFF2F2F2FFF0F0F1FFF2F1F1FFBCBCBCD80000
        0000000000000000000000000000000000000000000000000000DADADAE4FFFF
        FFFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFDFFFAFAFBFFF9F9
        F9FFF6F6F6FFF4F4F4FFF1F1F2FFEFEFEFFFEDEDEDFFEDEDEEFFC0C1C1DE0D0D
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
      TabOrder = 1
      OnClick = cxCancelaClick
    end
  end
  object cdsFPagto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
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
    Left = 98
    Top = 237
    object cdsFPagtoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsFPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object dsFPagto: TDataSource
    DataSet = cdsFPagto
    Left = 98
    Top = 281
  end
  object cdsBaixa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATAMOV'
        DataType = ftDateTime
      end
      item
        Name = 'IDCAIXA'
        DataType = ftInteger
      end
      item
        Name = 'IDPLANO'
        DataType = ftInteger
      end
      item
        Name = 'IDCARTAO'
        DataType = ftInteger
      end
      item
        Name = 'TXCARTAO'
        DataType = ftFloat
      end
      item
        Name = 'VLRPAGO'
        DataType = ftFloat
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'IDFPAGTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 266
    Top = 317
    object cdsBaixaDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object cdsBaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object cdsBaixaIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
    end
    object cdsBaixaIDCARTAO: TIntegerField
      FieldName = 'IDCARTAO'
    end
    object cdsBaixaTXCARTAO: TFloatField
      FieldName = 'TXCARTAO'
    end
    object cdsBaixaVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
    end
    object cdsBaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
    end
    object cdsBaixaIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
    end
    object cdsBaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsBaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
  end
  object dsBaixa: TDataSource
    DataSet = cdsBaixa
    Left = 266
    Top = 361
  end
end
