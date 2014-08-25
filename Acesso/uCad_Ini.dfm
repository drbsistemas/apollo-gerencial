object FCad_Ini: TFCad_Ini
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 200
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 700
  Color = 5987163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    700
    600)
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 50
    Top = 165
    Width = 600
    Height = 270
    Anchors = []
    Color = 33023
    ParentBackground = False
    TabOrder = 0
    object cxEmpresa: TcxTextEdit
      Left = 104
      Top = 88
      StyleFocused.Color = 12303359
      TabOrder = 0
      Width = 300
    end
    object cxLabel1: TcxLabel
      Left = 31
      Top = 83
      Caption = 'Empresa:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 31
      Top = 8
      Caption = ':('
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -48
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 104
      Top = 115
      StyleFocused.Color = 12303359
      TabOrder = 3
      Width = 300
    end
    object cxLabel3: TcxLabel
      Left = 31
      Top = 110
      Caption = 'Empresa:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Transparent = True
    end
    object FilenameEdit1: TFilenameEdit
      Left = 104
      Top = 141
      Width = 300
      Height = 21
      Filter = 'Banco de Dados (*.FDB)|*.FDB'
      NumGlyphs = 1
      TabOrder = 5
      Text = 'FilenameEdit1'
    end
    object cxLabel4: TcxLabel
      Left = 31
      Top = 142
      Caption = 'Empresa:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
end
