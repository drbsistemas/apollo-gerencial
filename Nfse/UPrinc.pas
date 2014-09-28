unit UPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, TypInfo,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar,
  System.Actions, Vcl.ActnList, UCBase, UCDataConnector, UCFireDACConn,
  cxGroupBox, Vcl.StdCtrls;

type
  TFPrinc = class(TForm)
    cxHint: TcxGroupBox;
    UCFireDACConn1: TUCFireDACConn;
    UserControl1: TUserControl;
    UCControls1: TUCControls;
    ActionList1: TActionList;
    actform1: TAction;
    actform2: TAction;
    actUsuarios: TAction;
    actTrocadoUsuario: TAction;
    actLog: TAction;
    actlongoff: TAction;
    Action1: TAction;
    StBar: TdxStatusBar;
    Button1: TButton;

    procedure PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
    procedure MostraNomeForm(Str: String);
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uConexao, uCad_Clientes;

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

procedure TFPrinc.Button1Click(Sender: TObject);
begin
   ExecutaFOrm(TFcad_Clientes, Fcad_Clientes);
end;

procedure TFPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (FormAtivo <> NIL) Then
   begin
      Msg('Detectamos que existe um formulário aberto, feche-o antes de sair!','I',':)');
      Abort;
   end;
   if (Msg('Que pena, deseja mesmo fechar o software?','P',':(')) then
      Application.Terminate else
      Abort;
end;

procedure TFPrinc.FormCreate(Sender: TObject);
begin
   if dmCad = nil then
      Application.CreateForm(TdmCad, dmCad);

   Application.OnMessage := PegaNomeForm;
   Application.OnHint := ShowHint;
   AbreIni;

//   AbreAcesso;
//   UserControl1.StartLogin;
   CarregaEmpresa('LOJA '+FormatFloat('###0',1), 'Padrão');

   if not dmcad.qryConf.Active = true then
      dmCad.qryConf.Open;

   VerificaLicenca();
end;

procedure TFPrinc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = vK_F10) or (key = vk_escape) then
      Close;
end;

procedure TFPrinc.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;

   if Liberacao = false then
      StBar.Panels[2].Text := 'Licença Expirada!';
end;

procedure TFprinc.MostraNomeForm(Str: String);
begin
   Msg(Str,'I',';D');
end;

procedure TFprinc.ShowHint(Sender: TObject);
begin
   if Length(Application.Hint) > 0 then
      FPrinc.cxHint.caption := Application.Hint
   else
      FPrinc.cxHint.caption := '';
end;

end.
