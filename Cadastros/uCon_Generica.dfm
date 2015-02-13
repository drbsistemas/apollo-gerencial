inherited Fcad_Generica: TFcad_Generica
  Caption = 'Outros Cadastros'
  ClientHeight = 541
  ClientWidth = 704
  ExplicitTop = 8
  ExplicitWidth = 712
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 646
    Height = 541
    ExplicitWidth = 646
    ExplicitHeight = 541
    inherited pnMenu: TPanel
      Width = 644
      ExplicitWidth = 644
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
      TabOrder = 1
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
      TabOrder = 3
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
      TabOrder = 5
      Width = 300
    end
  end
  inherited pnImg: TcxImage
    Left = 646
    ExplicitLeft = 646
    ExplicitHeight = 541
    Height = 541
  end
  inherited pnCon: TPanel
    Width = 646
    Height = 541
    ExplicitWidth = 646
    ExplicitHeight = 541
    inherited pnBusca: TPanel
      Top = 80
      Width = 644
      TabOrder = 2
      ExplicitTop = 80
      ExplicitWidth = 644
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
      Top = 489
      Width = 644
      TabOrder = 4
      ExplicitTop = 489
      ExplicitWidth = 644
    end
    inherited grConsulta: TcxGrid [2]
      Top = 103
      Width = 644
      Height = 386
      TabOrder = 3
      ExplicitTop = 103
      ExplicitWidth = 644
      ExplicitHeight = 386
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
      Width = 644
      Height = 27
      Align = alTop
      TabOrder = 0
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
        StyleFocused.Color = 13366014
        TabOrder = 0
        OnClick = cxTabelaClick
        Width = 498
      end
    end
    inherited pnBotaoCad: TPanel [4]
      Top = 28
      Width = 644
      TabOrder = 1
      ExplicitTop = 28
      ExplicitWidth = 644
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
end
