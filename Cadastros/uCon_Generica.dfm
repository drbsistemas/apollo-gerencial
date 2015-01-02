inherited Fcad_Generica: TFcad_Generica
  Caption = 'Outros Cadastros'
  ClientHeight = 531
  ClientWidth = 694
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 636
    Height = 531
    ExplicitWidth = 636
    ExplicitHeight = 531
    inherited pnMenu: TPanel
      Width = 634
      ExplicitWidth = 634
    end
    object cxLabel4: TcxLabel
      Left = 43
      Top = 161
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
    object eCodigo: TcxTextEdit
      Left = 117
      Top = 159
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
      Width = 97
    end
    object cxNome: TcxLabel
      Left = 43
      Top = 185
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
      AnchorX = 118
    end
    object eDescricao: TcxTextEdit
      Left = 117
      Top = 181
      Hint = 'Descri'#231#227'o do Cadastro'
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
      TabOrder = 4
      Width = 300
    end
    object cxApelido: TcxLabel
      Left = 43
      Top = 204
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
      AnchorX = 118
    end
    object eObs: TcxTextEdit
      Left = 117
      Top = 203
      Hint = 'Observa'#231#227'o'
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
      TabOrder = 6
      Width = 300
    end
  end
  inherited pnCon: TPanel
    Width = 636
    Height = 531
    ExplicitWidth = 636
    ExplicitHeight = 531
    inherited pnBusca: TPanel
      Top = 79
      Width = 634
      TabOrder = 0
      ExplicitTop = 79
      ExplicitWidth = 634
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o')
        Text = 'C'#211'DIGO'
      end
      inherited cxLabel2: TcxLabel
        Left = 445
        Top = 4
        ParentColor = False
        Visible = False
        ExplicitLeft = 445
        ExplicitTop = 4
      end
      inherited cbAtivo: TcxComboBox
        Left = 477
        Top = 2
        Style.IsFontAssigned = True
        Visible = False
        ExplicitLeft = 477
        ExplicitTop = 2
      end
    end
    inherited pnBotaoCon: TPanel [1]
      Top = 480
      Width = 634
      TabOrder = 2
      ExplicitTop = 480
      ExplicitWidth = 634
    end
    inherited grConsulta: TcxGrid [2]
      Top = 102
      Width = 634
      Height = 378
      TabOrder = 1
      ExplicitTop = 102
      ExplicitWidth = 634
      ExplicitHeight = 378
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsGenerico
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDGENERICA'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
        end
      end
    end
    object pnTabela: TPanel [3]
      Left = 1
      Top = 1
      Width = 634
      Height = 27
      Align = alTop
      TabOrder = 3
      object cxLabel3: TcxLabel
        Left = 2
        Top = 5
        Caption = 'Tabela de:'
        Style.TextColor = clBlack
        Transparent = True
      end
      object cxTabela: TcxComboBox
        Left = 57
        Top = 3
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Cadastro de Grupos'
          'Cadastro de SubGrupos'
          'Cadastro de Centro de Custos'
          'Cadastro de Formas de Pagamentos')
        Properties.OnChange = cxConsultaPropertiesChange
        StyleFocused.Color = 13366014
        TabOrder = 1
        Text = 'CADASTRO DE GRUPOS'
        OnClick = cxTabelaClick
        Width = 498
      end
    end
    inherited pnBotaoCad: TPanel [4]
      Top = 28
      Width = 634
      TabOrder = 4
      ExplicitTop = 28
      ExplicitWidth = 634
      inherited cxVer: TcxButton
        OnClick = cxVerClick
      end
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
  end
  inherited pnImg: TcxImage
    Left = 636
    ExplicitLeft = 636
    ExplicitHeight = 531
    Height = 531
  end
end
