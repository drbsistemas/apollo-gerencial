inherited Fcad_PaiFinanceiro: TFcad_PaiFinanceiro
  Caption = 'Fcad_PaiFinanceiro'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      ExplicitWidth = 642
    end
  end
  inherited pnImg: TcxImage
    Left = 644
    ExplicitLeft = 644
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 642
      ExplicitWidth = 642
    end
    inherited pnBotaoCon: TPanel
      Top = 487
      Width = 642
      ExplicitLeft = 1
      ExplicitTop = 487
      ExplicitWidth = 642
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 177
      ExplicitWidth = 642
      ExplicitHeight = 177
    end
    object pnSelec: TPanel
      Left = 1
      Top = 253
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
end
