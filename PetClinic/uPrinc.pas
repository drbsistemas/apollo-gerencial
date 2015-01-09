unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TypInfo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox,
  cxLabel, UCBase, UCDataConnector, UCFireDACConn, Vcl.Menus,
  System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.StdCtrls, dxGDIPlusClasses, cxImage, cxButtons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, dxSkinsdxBarPainter, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxBar, dxBarExtItems, dxRibbonRadialMenu, cxClasses,
  dxRibbon;

type
   TFPrinc = class(TForm)
    UserControl1: TUserControl;
    UCFireDACConn1: TUCFireDACConn;
    UCControls1: TUCControls;
    ActionList1: TActionList;
    actUsuarios: TAction;
    actTrocadoUsuario: TAction;
    actLog: TAction;
    actlongoff: TAction;
    StBar: TdxStatusBar;
    cxHint: TPanel;
    pnTop: TcxGroupBox;
    cxImage1: TcxImage;
    pnimg: TcxImage;
    pnImg2: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    dxBarManager: TdxBarManager;
    dxMenuPrinc: TdxRibbonTab;
    dxMenu: TdxRibbon;
    dxRadialMenu: TdxRibbonRadialMenu;
    dxFin: TdxBar;
    dxCompras: TdxBar;
    dxConf: TdxBar;
    dxRel: TdxBar;
    dxCad: TdxBar;
    cxCliente: TdxBarLargeButton;
    cxProduto: TdxBarLargeButton;
    cxAnimais: TdxBarLargeButton;
    cxOutros: TdxBarLargeButton;
    cxBalanco: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    cxConCliente: TdxBarLargeButton;
    cxConProduto: TdxBarLargeButton;
    cxConAnimais: TdxBarLargeButton;
    cxConOutros: TdxBarLargeButton;
    ActCliente: TAction;
    ActProduto: TAction;
    ActAnimais: TAction;
    ActOutros: TAction;
    cxReceber: TdxBarLargeButton;
    cxPagar: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    cxEmpresa: TdxBarButton;
    cxSair: TdxBarButton;
    cxCaixa: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    cxPedido: TdxBarLargeButton;
    dxVendas: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    ActFechar: TAction;
   //
   procedure PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
   procedure MostraNomeForm(Str: String);
   //
   procedure ShowHint(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure cxClienteClick(Sender: TObject);
    procedure cxProdutoClick(Sender: TObject);
    procedure cxAnimaisClick(Sender: TObject);
    procedure cxOutrosClick(Sender: TObject);
    procedure cxBalancoClick(Sender: TObject);
    procedure ActClienteExecute(Sender: TObject);
    procedure ActProdutoExecute(Sender: TObject);
    procedure ActAnimaisExecute(Sender: TObject);
    procedure ActOutrosExecute(Sender: TObject);
    procedure cxEmpresaClick(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
  FPrinc: TFPrinc;

implementation

{$R *.dfm}

uses uRotinas, uConexao, uMsg, uDmCon, uDmCad, uCad_Clientes,
  uCad_Animais, uCon_Generica, uDmRel, uCad_Empresa, uCad_Produto, uCad_Balanco;

procedure TFPrinc.cxClienteClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Clientes, TObject(Fcad_Clientes));
end;

procedure TFPrinc.cxEmpresaClick(Sender: TObject);
begin
   ExecutaForm(TFCad_Empresa, TObject(Fcad_Empresa));
end;

procedure TFPrinc.cxProdutoClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Produto, TObject(Fcad_Produto));
end;

procedure TFPrinc.ActAnimaisExecute(Sender: TObject);
begin
   if Fcad_Animais = nil then
      AbreTelaComShowModal(TFcad_Animais, TObject(Fcad_Animais), NIL, '');
end;

procedure TFPrinc.ActClienteExecute(Sender: TObject);
begin
   if Fcad_Clientes = nil then
      AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), NIL, '');
end;

procedure TFPrinc.ActFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TFPrinc.ActOutrosExecute(Sender: TObject);
begin
   if Fcad_Generica = nil then
      AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), NIL, '');
end;

procedure TFPrinc.ActProdutoExecute(Sender: TObject);
begin
   if Fcad_Produto = nil then
      AbreTelaComShowModal(TFcad_Produto, TObject(Fcad_Produto), NIL, '');
end;

procedure TFPrinc.cxAnimaisClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Animais, TObject(Fcad_Animais));
end;

procedure TFPrinc.cxOutrosClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Generica, TObject(Fcad_Generica));
end;

procedure TFPrinc.cxBalancoClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Balanco, TObject(Fcad_Balanco));
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

procedure TFPrinc.FormResize(Sender: TObject);
begin
///// Redimensiona os botões para ficar no meio do form
//      pnfundo.Width := (FPrinc.ClientWidth div 2)-200;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;

   if Liberacao = false then
      StBar.Panels[2].Text := 'Licença Expirada!';
end;

procedure TFPrinc.PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
var
   Rect: TRect;
   TD: PTypeData;
   StrMsg: String;
begin
   if (GetASyncKeyState(VK_CONTROL) <> 0) then
   begin
      if (msg.Message = WM_RBUTTONDOWN) then
      begin
         TD := GetTypeData(Screen.ActiveForm.ClassInfo);
         StrMsg := ('Titulo: '+Screen.ActiveForm.Caption +#13+
             'Form.: '+uppercase(Screen.ActiveForm.Name)+#13+
             'Unit...: '+uppercase(TD^.UnitName));

         MostraNomeForm(StrMsg);
      end;
   end
   else
      if (msg.Message = WM_RBUTTONDOWN) then
         FPrinc.dxRadialMenu.Popup(mouse.cursorpos.x, mouse.cursorpos.y);
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
