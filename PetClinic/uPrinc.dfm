object FPrinc: TFPrinc
  Left = 0
  Top = 0
  Caption = 'Sistema'
  ClientHeight = 469
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextColor = clMaroon
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 25
    Width = 778
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
  object UCFireDACConn1: TUCFireDACConn
    Connection = dmCon.FdConAcesso
    Left = 40
    Top = 48
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
