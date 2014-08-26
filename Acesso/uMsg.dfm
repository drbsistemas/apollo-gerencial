object Fmsg: TFmsg
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 700
  Color = 4868682
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
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
  object cxPanel: TcxGroupBox
    Left = 50
    Top = 145
    Anchors = []
    BiDiMode = bdLeftToRight
    PanelStyle.Active = True
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    Style.BorderColor = clWhite
    Style.BorderStyle = ebsFlat
    Style.Color = 33023
    Style.Shadow = False
    TabOrder = 0
    Height = 270
    Width = 600
    object cxRosto: TcxLabel
      Left = 24
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
    object cxLabel2: TcxLabel
      Left = 24
      Top = 84
      Caption = 'Seu procedimento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxMSg: TcxMemo
      Left = 24
      Top = 107
      TabStop = False
      Lines.Strings = (
        'cxMSg')
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 33023
      Style.Edges = []
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 104
      Width = 552
    end
    object cxSim: TcxButton
      Left = 147
      Top = 217
      Width = 150
      Height = 40
      Caption = '&Sim'
      Colors.Default = 4892159
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSimClick
    end
    object cxNao: TcxButton
      Left = 302
      Top = 217
      Width = 150
      Height = 40
      Caption = '&N'#227'o'
      Colors.Default = 4892159
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxNaoClick
    end
    object cxOk: TcxButton
      Left = 224
      Top = 217
      Width = 150
      Height = 40
      Caption = '&Ok'
      Colors.Default = 4892159
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxOkClick
    end
  end
end
