inherited Fcad_CaixaFechamento: TFcad_CaixaFechamento
  Caption = 'Cadastro de Abertura/Fechamentos (Caixa)'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel [0]
    Width = 644
    Height = 539
    ExplicitLeft = -6
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      TabOrder = 3
    end
    object cxLabel3: TcxLabel
      Left = 63
      Top = 123
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
      AnchorX = 138
    end
    object eCodigo: TcxTextEdit
      Left = 138
      Top = 121
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
      Width = 130
    end
    object cxLabel5: TcxLabel
      Left = 48
      Top = 146
      AutoSize = False
      Caption = 'Dt. Mov:'
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
      Width = 90
      AnchorX = 138
    end
    object eDtFechamento: TcxDateEdit
      Left = 138
      Top = 145
      Hint = 'Campo para Data'
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
      TabOrder = 1
      OnExit = eDtFechamentoExit
      Width = 130
    end
    object cxLabel4: TcxLabel
      Left = 48
      Top = 170
      AutoSize = False
      Caption = 'Saldo:'
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
      AnchorX = 138
    end
    object eSaldo: TcxCurrencyEdit
      Left = 138
      Top = 168
      Hint = 'Valor do Registro'
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
      TabOrder = 2
      Width = 130
    end
    object cxLabel6: TcxLabel
      Left = 272
      Top = 123
      AutoSize = False
      Caption = 'Tipo Mov:'
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
      AnchorX = 347
    end
    object eTipo: TcxTextEdit
      Left = 347
      Top = 121
      Hint = 'Tipo de Movimenta'#231#227'o'
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
      TabOrder = 8
      Width = 130
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 644
    Height = 539
  end
  inherited pnCon: TPanel [2]
    Width = 644
    Height = 539
    inherited pnBusca: TPanel
      Width = 642
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Tipo Mov.'
          'Dt. Movimento')
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
      Width = 642
      inherited cxEdita: TcxButton
        Enabled = False
      end
      inherited cxVer: TcxButton
        Enabled = False
      end
      inherited cxApagar: TcxButton
        Caption = '&Cancelar'
      end
      inherited cxPrint: TcxButton
        Enabled = False
      end
      inherited cxOpcoes: TcxButton
        Enabled = False
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 487
      Width = 642
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 411
      ExplicitLeft = -4
      ExplicitTop = 79
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsCaixaFechamento
        object grConsultaDBTableView1Column3: TcxGridDBColumn [0]
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'IDFECHAMENTO'
          Width = 58
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn [1]
          Caption = 'Tipo Mov.'
          DataBinding.FieldName = 'TIPOMOV'
          Width = 104
        end
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          Caption = 'Dt. Movimento'
          DataBinding.FieldName = 'DTMOVIMENTO'
          Width = 133
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Saldo Ant.'
          DataBinding.FieldName = 'SALDOANTERIOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Width = 80
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Saldo Atual'
          DataBinding.FieldName = 'SALDOATUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Width = 80
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 120
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Cancelado'
          DataBinding.FieldName = 'CANCELADO'
          Width = 77
        end
      end
    end
  end
end
