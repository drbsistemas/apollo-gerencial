object FPrinc: TFPrinc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NFs-e'
  ClientHeight = 602
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxHint: TcxGroupBox
    Left = 0
    Top = 0
    Hint = 'Informa'#231#245'es dos componentes do sistema.'
    Align = alTop
    Alignment = alTopCenter
    PanelStyle.Active = True
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = ''
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    TabOrder = 0
    ExplicitWidth = 800
    Height = 20
    Width = 802
  end
  object StBar: TdxStatusBar
    Left = 0
    Top = 582
    Width = 802
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Segoe UI'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'Empresa: '
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Segoe UI'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'Usu'#225'rio:'
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Segoe UI'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Segoe UI'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'Desenvolvimento: DRB Sitemas Comerciais - www.DRBSISTEMAS.com.br'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 580
    ExplicitWidth = 800
  end
  object Button1: TButton
    Left = 368
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object UCFireDACConn1: TUCFireDACConn
    Left = 40
    Top = 48
  end
  object UserControl1: TUserControl
    ApplicationID = 'Controle de Usu'#225'rios'
    ControlRight.ActionList = ActionList1
    User.Action = actUsuarios
    UserPasswordChange.Action = actTrocadoUsuario
    UserPasswordChange.MinPasswordLength = 3
    UsersLogoff.Action = actlongoff
    LogControl.TableLog = 'UCLog'
    Language = ucPortuguesBr
    EncryptKey = 0
    Login.InitialLogin.User = 'ADMIN'
    Login.InitialLogin.Email = 'comercial@drbsistemas.com.br'
    Login.InitialLogin.Password = 'DRB4442+'
    Login.MaxLoginAttempts = 3
    Login.CharCaseUser = ecUpperCase
    Login.CharCasePass = ecUpperCase
    ExtraRights = <>
    TableUsers.FieldUserID = 'UCIdUser'
    TableUsers.FieldUserName = 'UCUserName'
    TableUsers.FieldLogin = 'UCLogin'
    TableUsers.FieldPassword = 'UCPassword'
    TableUsers.FieldEmail = 'UCEmail'
    TableUsers.FieldPrivileged = 'UCPrivileged'
    TableUsers.FieldTypeRec = 'UCTypeRec'
    TableUsers.FieldProfile = 'UCProfile'
    TableUsers.FieldKey = 'UCKey'
    TableUsers.FieldDateExpired = 'UCPASSEXPIRED'
    TableUsers.FieldUserExpired = 'UCUserExpired'
    TableUsers.FieldUserDaysSun = 'UCUserDaysSun'
    TableUsers.FieldUserInative = 'UCInative'
    TableUsers.TableName = 'UCTabUsers'
    TableRights.FieldUserID = 'UCIdUser'
    TableRights.FieldModule = 'UCModule'
    TableRights.FieldComponentName = 'UCCompName'
    TableRights.FieldFormName = 'UCFormName'
    TableRights.FieldKey = 'UCKey'
    TableRights.TableName = 'UCTabRights'
    TableUsersLogged.FieldLogonID = 'UCIdLogon'
    TableUsersLogged.FieldUserID = 'UCIdUser'
    TableUsersLogged.FieldApplicationID = 'UCApplicationId'
    TableUsersLogged.FieldMachineName = 'UCMachineName'
    TableUsersLogged.FieldData = 'UCData'
    TableUsersLogged.TableName = 'UCTabUsersLogged'
    DataConnector = UCFireDACConn1
    Left = 40
    Top = 96
  end
  object UCControls1: TUCControls
    GroupName = 'Tela Principal'
    UserControl = UserControl1
    Components = ''
    NotAllowed = naDisabled
    Left = 40
    Top = 144
  end
  object ActionList1: TActionList
    Left = 40
    Top = 192
    object actform1: TAction
      Caption = 'actform1'
    end
    object actform2: TAction
      Caption = 'actform2'
    end
    object actUsuarios: TAction
      Caption = 'Usu'#225'rios'
    end
    object actTrocadoUsuario: TAction
      Caption = 'Troca de Usuario'
    end
    object actLog: TAction
      Caption = 'Log'
    end
    object actlongoff: TAction
      Caption = 'Trocar Usu'#225'rio'
      ShortCut = 16507
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
end
