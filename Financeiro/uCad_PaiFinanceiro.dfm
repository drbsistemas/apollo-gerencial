inherited Fcad_PaiFinanceiro: TFcad_PaiFinanceiro
  Caption = 'Fcad_PaiFinanceiro'
  ExplicitWidth = 718
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel
    ExplicitLeft = -6
    inherited pnBusca: TPanel
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCon: TPanel
      ExplicitLeft = 1
      ExplicitTop = 518
    end
    inherited grConsulta: TcxGrid
      Height = 208
      ExplicitLeft = 420
      ExplicitTop = 79
    end
    object pnSelec: TPanel
      Left = 1
      Top = 284
      Width = 650
      Height = 234
      Align = alBottom
      TabOrder = 4
      Visible = False
      ExplicitTop = 255
      ExplicitWidth = 908
      object grConsulta2: TcxGrid
        Left = 1
        Top = 25
        Width = 648
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
          Navigator.Buttons.CustomButtons = <>
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
        Width = 648
        Height = 24
        Align = alTop
        TabOrder = 1
        object cxContas: TcxLabel
          Left = 29
          Top = -2
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
          Left = 440
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
end
