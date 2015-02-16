inherited Fcad_CaixaFechamento: TFcad_CaixaFechamento
  Caption = 'Abertura/Fechamento (Caixa)'
  ExplicitWidth = 718
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel [0]
    ExplicitLeft = -6
    object cxLabel3: TcxLabel
      Left = 62
      Top = 108
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
      AnchorX = 137
    end
    object eCodigo: TcxTextEdit
      Left = 138
      Top = 106
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
    object cxLabel4: TcxLabel
      Left = 47
      Top = 129
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
      AnchorX = 137
    end
    object eDtFechamento: TcxDateEdit
      Left = 138
      Top = 128
      Hint = 'Data Fechamento'
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
      TabOrder = 4
      OnExit = eDtFechamentoExit
      Width = 130
    end
    object cxLabel5: TcxLabel
      Left = 40
      Top = 152
      AutoSize = False
      Caption = 'Vlr. Mov:'
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
      Width = 97
      AnchorX = 137
    end
    object eSaldo: TcxCurrencyEdit
      Left = 138
      Top = 150
      Hint = 'Pre'#231'o de Venda do Produto'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '###,###,##0.00'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 6
      Width = 75
    end
    object eTipo: TcxTextEdit
      Left = 294
      Top = 106
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
      TabOrder = 7
      Width = 107
    end
    object cxLabel6: TcxLabel
      Left = 218
      Top = 108
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
      AnchorX = 293
    end
  end
  inherited pnImg: TcxImage [1]
  end
  inherited pnCon: TPanel [2]
    inherited pnBusca: TPanel
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Tipo'
          'Dt. Mov.')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      inherited cxEdita: TcxButton
        Enabled = False
      end
      inherited cxVer: TcxButton
        Enabled = False
      end
      inherited cxPrint: TcxButton
        Enabled = False
      end
      inherited cxOpcoes: TcxButton
        Enabled = False
      end
    end
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmFin.dsCaixaFechamento
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDFECHAMENTO'
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn [1]
          Caption = 'Saldo Ant.'
          DataBinding.FieldName = 'SALDOANTERIOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Width = 75
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Dt. Mov.'
          DataBinding.FieldName = 'DTMOVIMENTO'
          Width = 100
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Saldo Atual'
          DataBinding.FieldName = 'SALDOATUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Width = 75
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Tipo Mov.'
          DataBinding.FieldName = 'TIPOMOV'
          Width = 102
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Cancelado'
          DataBinding.FieldName = 'CANCELADO'
          Width = 66
        end
        object grConsultaDBTableView1Column5: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 98
        end
      end
    end
  end
end
