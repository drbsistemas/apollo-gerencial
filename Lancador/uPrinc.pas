unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TypInfo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox,
  cxLabel, UCBase, UCDataConnector, UCFireDACConn, Vcl.Menus, RxMenus,
  System.Actions, Vcl.ActnList;

type

   TFPrinc = class(TForm)
    cxPanel: TcxGroupBox;
    UserControl1: TUserControl;
    UCFireDACConn1: TUCFireDACConn;
    UCControls1: TUCControls;
    ActionList1: TActionList;
    actform1: TAction;
    actform2: TAction;
    actUsuarios: TAction;
    actTrocadoUsuario: TAction;
    actLog: TAction;
    actlongoff: TAction;
    Action1: TAction;
   //
   procedure PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
   procedure MostraNomeForm(Str: String);
   //
   procedure ShowHint(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
  FPrinc: TFPrinc;

implementation

{$R *.dfm}

uses uRotinas, uConexao, uMsg, uDmCon;

procedure TFPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Msg('de fechar o sistema pode ser concluído?','P',':(') then
      Application.Terminate else
      Abort;
end;

procedure TFPrinc.FormCreate(Sender: TObject);
begin
   Application.OnMessage := PegaNomeForm;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;
   Application.OnHint := ShowHint;
   AbreConexao;
   UserControl1.StartLogin;
end;

procedure TFPrinc.PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
var
   Rect: TRect;
   TD: PTypeData;
   StrMsg: String;
begin
   if (GetASyncKeyState(VK_CONTROL) <> 0) then
      if (msg.Message = WM_RBUTTONDOWN) then
      begin
         TD := GetTypeData(Screen.ActiveForm.ClassInfo);
         StrMsg := ('Titulo: '+Screen.ActiveForm.Caption +#13+
             'Form.: '+uppercase(Screen.ActiveForm.Name)+#13+
             'Unit...: '+uppercase(TD^.UnitName));

         MostraNomeForm(StrMsg);
      end;
end;

procedure TFprinc.MostraNomeForm(Str: String);
begin
   Msg(Str,'I',';D');
end;

procedure TFprinc.ShowHint(Sender: TObject);
begin
   if Length(Application.Hint) > 0 then
      FPrinc.cxPanel.caption := Application.Hint
   else
      FPrinc.cxPanel.caption := '';
end;

end.
