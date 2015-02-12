inherited Fcad_Caixa: TFcad_Caixa
  Caption = 'Conta Corrente (Caixa)'
  ClientWidth = 900
  ExplicitWidth = 908
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel [0]
    Width = 842
    ExplicitWidth = 842
    inherited pnMenu: TPanel
      Width = 840
      ExplicitWidth = 840
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 842
    ExplicitLeft = 842
  end
  inherited pnCon: TPanel [2]
    Width = 842
    ExplicitWidth = 842
    inherited pnBusca: TPanel
      Width = 840
      ExplicitWidth = 840
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Banco')
        Text = 'C'#211'DIGO'
      end
      inherited cxLabel2: TcxLabel
        Visible = False
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
        Visible = False
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 840
      ExplicitWidth = 840
      inherited cxApagar: TcxButton
        OnClick = cxApagarClick
      end
      inherited cxOpcoes: TcxButton
        Enabled = False
      end
    end
    inherited pnBotaoCon: TPanel
      Width = 840
      ExplicitTop = 488
      ExplicitWidth = 840
      inherited cxCadastro: TcxButton
        Left = 360
        ExplicitLeft = 360
      end
      inherited cxFechar: TcxButton
        Left = 419
        ExplicitLeft = 419
      end
    end
    inherited grConsulta: TcxGrid
      Width = 840
      Height = 132
      ExplicitWidth = 840
      ExplicitHeight = 101
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsCaixa
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDCAIXA'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          DataBinding.FieldName = 'BANCO'
          Width = 350
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'SALDOCAIXA'
          Width = 100
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Dt. Abertura'
          DataBinding.FieldName = 'DTABERTURA'
          Width = 100
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Dt. Fechado'
          DataBinding.FieldName = 'DTFECHADO'
          Width = 100
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Saldo Conc.'
          DataBinding.FieldName = 'SALDOCONCILIADO'
          Width = 100
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 208
      Width = 840
      Height = 311
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 4
      ExplicitTop = 177
      object cxGroupBox2: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Alignment = alTopCenter
        Caption = 'Lan'#231'amentos do dia'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 0
        Height = 309
        Width = 481
        object cxGrid2: TcxGrid
          Left = 3
          Top = 15
          Width = 475
          Height = 284
          Hint = 'Grid de Dados'
          Align = alClient
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
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
            OptionsView.GroupByBox = False
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATAITEM'
              Width = 125
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'HISTORICO'
              Width = 200
            end
            object cxGridDBTableView3Column1: TcxGridDBColumn
              Caption = 'Cr'#233'dito'
              DataBinding.FieldName = 'CREDITO'
              Width = 75
            end
            object cxGridDBTableView3Column2: TcxGridDBColumn
              Caption = 'D'#233'bito'
              DataBinding.FieldName = 'DEBITO'
              Width = 75
            end
            object cxGridDBTableView3Column3: TcxGridDBColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'SALDOITEM'
            end
            object cxGridDBTableView3Column4: TcxGridDBColumn
              Caption = 'Usu'#225'rio'
              DataBinding.FieldName = 'USUARIO'
              Width = 110
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 482
        Top = 1
        Align = alRight
        Alignment = alTopCenter
        Caption = 'Resumo Formas de Pagamento'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 1
        Height = 309
        Width = 357
        object cxGrid1: TcxGrid
          Left = 3
          Top = 15
          Width = 351
          Height = 284
          Hint = 'Grid de Dados'
          Align = alClient
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
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsResumo
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'VALOR'
                Column = cxGridDBColumn7
                DisplayText = 'Vlr. Total:'
                Sorted = True
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'F. Pagamento'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 150
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VALOR'
              Width = 180
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    Left = 570
    Top = 361
  end
  object cdsResumo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 570
    Top = 317
    object cdsResumoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsResumoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
end
