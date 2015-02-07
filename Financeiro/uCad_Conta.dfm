inherited Fcad_Contas: TFcad_Contas
  Caption = 'Cadastro de Contas'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnImg: TcxImage [0]
    Left = 644
    ExplicitLeft = 644
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel [1]
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 642
      ExplicitWidth = 642
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
      inherited cxLabel2: TcxLabel
        Left = 563
        Top = -2
        Visible = False
        ExplicitLeft = 563
        ExplicitTop = -2
      end
      inherited cbAtivo: TcxComboBox
        Left = 595
        Top = -4
        Style.IsFontAssigned = True
        Visible = False
        ExplicitLeft = 595
        ExplicitTop = -4
      end
      inherited cxQtdeReg: TcxLabel
        Left = 592
        ExplicitLeft = 592
      end
      object cxLabel25: TcxLabel
        Left = 446
        Top = 3
        Caption = 'Status:'
        Style.TextColor = clBlack
        Transparent = True
      end
      object cxStatus: TcxComboBox
        Left = 484
        Top = 1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODOS'
          'ABERTO'
          'QUITADO'
          'CANCELADO')
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
      Width = 642
      ExplicitWidth = 642
      inherited cxApagar: TcxButton
        OnClick = cxApagarClick
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
      Height = 178
      ExplicitWidth = 642
      ExplicitHeight = 178
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsConta
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          Caption = 'St'
          DataBinding.FieldName = 'STATUSCONTA'
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
    object pnSelec: TPanel
      Left = 1
      Top = 254
      Width = 642
      Height = 234
      Align = alBottom
      TabOrder = 4
      Visible = False
      object grConsulta2: TcxGrid
        Left = 1
        Top = 25
        Width = 640
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
          DataController.DataSource = dmFin.dsConta
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
            DataBinding.FieldName = 'STATUSCONTA'
            Width = 30
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'IDCONTA'
            Width = 60
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'RAZAO'
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
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Dt. Baixa'
            DataBinding.FieldName = 'DTBAIXA'
            Width = 100
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Vlr. Pago'
            DataBinding.FieldName = 'VLRPAGO'
            Width = 75
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object pnTop: TPanel
        Left = 1
        Top = 1
        Width = 640
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
          Left = 432
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
  end
  inherited pnCad: TPanel [2]
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      TabOrder = 22
      ExplicitWidth = 642
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
    end
    object cdsRateioVLRRATEIO: TFloatField
      FieldName = 'VLRRATEIO'
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
