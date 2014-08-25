object FCad_Ini: TFCad_Ini
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsNone
  ClientHeight = 400
  ClientWidth = 600
  Color = 5987163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 64
    Top = 47
    Width = 473
    Height = 289
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
      Left = 5
      Top = 9
      Caption = ';)'
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
    object ButtonedEdit1: TButtonedEdit
      Left = 192
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'ButtonedEdit1'
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 200
    Top = 239
  end
end
