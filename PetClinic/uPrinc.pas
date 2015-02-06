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
  dxRibbon, RxMenus, UCHist_Base;

   procedure VerificaAcessos;

type
   TFPrinc = class(TForm)
    UserControl1: TUserControl;
    UCFireDACConn1: TUCFireDACConn;
    ucPrinc: TUCControls;
    ActionList1: TActionList;
    StBar: TdxStatusBar;
    cxHint: TPanel;
    pnTop: TcxGroupBox;
    cxImage1: TcxImage;
    pnimg: TcxImage;
    pnImg2: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    dxBarManager: TdxBarManager;
    dxModuloPrinc: TdxRibbonTab;
    dxMenu: TdxRibbon;
    dxRadialMenu: TdxRibbonRadialMenu;
    tbFinanceiro: TdxBar;
    tbCompras: TdxBar;
    tbConfiguracoes: TdxBar;
    tbRelatorios: TdxBar;
    tbCadastros: TdxBar;
    cxCliente: TdxBarLargeButton;
    cxProduto: TdxBarLargeButton;
    cxAnimais: TdxBarLargeButton;
    cxBalanco: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    cxRelatorios: TdxBarLargeButton;
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
    cxConf: TdxBarButton;
    cxEmpresa: TdxBarButton;
    cxSair: TdxBarButton;
    cxCaixa: TdxBarLargeButton;
    cxCompras: TdxBarLargeButton;
    cxPedido: TdxBarLargeButton;
    tbVendas: TdxBar;
    cxVendas: TdxBarLargeButton;
    cxPedidoVenda: TdxBarLargeButton;
    dxModuloPet: TdxRibbonTab;
    tbPetCadastro: TdxBar;
    tbPetAtendimento: TdxBar;
    dxModuloBar: TdxRibbonTab;
    tbBarVendas: TdxBar;
    cxItemOutros: TdxBarSubItem;
    cxCfop: TdxBarButton;
    cxcPagto: TdxBarLargeButton;
    cxOutros: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    cxCadastroUsuario: TdxBarLargeButton;
    cxTrocadeUsuario: TdxBarLargeButton;
    cxLogOff: TdxBarLargeButton;
    uHistorico: TUCControlHistorico;
    cxHistorico: TdxBarLargeButton;
    actCadastro: TAction;
    actTrocarSenha: TAction;
    actLogOff: TAction;
    actHistorico: TAction;
    cadClientes: TAction;
    cadProduto: TAction;
    cadCfop: TAction;
    cadCpagto: TAction;
    cadOutros: TAction;
    cadBalanco: TAction;
    cadPedido: TAction;
    cadCompra: TAction;
    cadPedidoVenda: TAction;
    cadVendas: TAction;
    cadReceber: TAction;
    cadPagar: TAction;
    cadCaixa: TAction;
    cadRelatorios: TAction;
    cadConf: TAction;
    cadEmpresa: TAction;
    cxPlanoConta: TdxBarLargeButton;
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
    procedure cxBalancoClick(Sender: TObject);
    procedure ActClienteExecute(Sender: TObject);
    procedure ActProdutoExecute(Sender: TObject);
    procedure ActAnimaisExecute(Sender: TObject);
    procedure ActOutrosExecute(Sender: TObject);
    procedure cxEmpresaClick(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cxOutrosClick(Sender: TObject);
    procedure cxPedidoClick(Sender: TObject);
    procedure cxcPagtoClick(Sender: TObject);
    procedure cxComprasClick(Sender: TObject);
    procedure cxPedidoVendaClick(Sender: TObject);
    procedure cxVendasClick(Sender: TObject);
    procedure cxReceberClick(Sender: TObject);
    procedure cxPagarClick(Sender: TObject);
    procedure cxRelatoriosClick(Sender: TObject);
    procedure cxCadastroUsuarioClick(Sender: TObject);
    procedure cxTrocadeUsuarioClick(Sender: TObject);
    procedure cxLogOffClick(Sender: TObject);
    procedure cxHistoricoClick(Sender: TObject);
    procedure cxPlanoContaClick(Sender: TObject);
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
  uCad_Animais, uCon_Generica, uDmRel, uCad_Empresa, uCad_Produto, uCad_Balanco,
  uCad_Pedido, udmMov, uCad_Pagto, uRotinaDeCalculosMovimentacao, udmFin,
  uCon_Relatorio, LoginWindow_U, uCad_Conta, uCad_PlanoConta;

procedure TFPrinc.cxCadastroUsuarioClick(Sender: TObject);
begin
   actCadastro.Execute;
end;

procedure TFPrinc.cxClienteClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Clientes, TObject(Fcad_Clientes));
end;

procedure TFPrinc.cxEmpresaClick(Sender: TObject);
begin
   ExecutaForm(TFCad_Empresa, TObject(Fcad_Empresa));
end;

procedure TFPrinc.cxHistoricoClick(Sender: TObject);
begin
   actHistorico.OnExecute(sender);
//   Historico1.Click;

end;

procedure TFPrinc.cxOutrosClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Generica, TObject(Fcad_Generica));
end;

procedure TFPrinc.cxPagarClick(Sender: TObject);
begin
   TipoMov := SAIDA;
   ExecutaForm(TFcad_Contas, Tobject(Fcad_Contas));
end;

procedure TFPrinc.cxPedidoClick(Sender: TObject);
begin
   TipoMov := ENTRADA;
   ExecutaForm(TFcad_Pedido, TObject(Fcad_Pedido));
end;

procedure TFPrinc.cxProdutoClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Produto, TObject(Fcad_Produto));
end;

procedure TFPrinc.cxReceberClick(Sender: TObject);
begin
   TipoMov := ENTRADA;
   ExecutaForm(TFcad_Contas, Tobject(Fcad_Contas));
end;

procedure TFPrinc.cxTrocadeUsuarioClick(Sender: TObject);
begin
   actTrocarSenha.Execute;
end;

procedure TFPrinc.cxComprasClick(Sender: TObject);
begin
   TipoMov := ENTRADA;

end;

procedure TFPrinc.cxVendasClick(Sender: TObject);
begin
   TipoMov := SAIDA;
end;

procedure TFPrinc.cxPedidoVendaClick(Sender: TObject);
begin
   TipoMov := SAIDA;
   ExecutaForm(TFcad_Pedido, TObject(Fcad_Pedido));
end;

procedure TFPrinc.cxPlanoContaClick(Sender: TObject);
begin
   TipoPlano := TODOS;
   AbreTelaComShowModal(TFcad_PlanoConta, TObject(Fcad_PlanoConta), nil, '');
end;

procedure TFPrinc.cxcPagtoClick(Sender: TObject);
begin
   AbreTelaComShowModal(TFcad_Pagto, TObject(Fcad_Pagto), nil, '');
end;

procedure TFPrinc.cxLogOffClick(Sender: TObject);
begin
   actLogOff.Execute;
end;

procedure TFPrinc.cxRelatoriosClick(Sender: TObject);
begin
   ExecutaForm(TFcon_RElatorio, TObject(Fcon_Relatorio));
end;

procedure TFPrinc.ActAnimaisExecute(Sender: TObject);
begin
   if Fcad_Animais = nil then
      AbreTelaComShowModal(TFcad_Animais, TObject(Fcad_Animais), NIL, '');
end;

procedure TFPrinc.ActClienteExecute(Sender: TObject);
begin
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), NIL, 'CLI');
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
   if dmMov = nil then
      Application.CreateForm(TdmMov, dmMov);
   if dmFin = nil then
      Application.CreateForm(TdmFin, dmFin);
   Application.UpdateFormatSettings := False;
   FormatSettings.ShortDateFormat := 'dd/mm/yyyy';


   Application.OnMessage := PegaNomeForm;
   Application.OnHint := ShowHint;
   AbreIni;

   AbreAcesso;
   UserControl1.StartLogin;
   uHistorico.Active := true;
//   CarregaEmpresa('LOJA '+FormatFloat('###0',1), 'Padrão');

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
      StBar.Panels[2].Text := 'Licença Expirada!' else
      StBar.Panels[2].Text := 'Licença Vigente!';
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

      if (msg.Message =  WM_LBUTTONDOWN) then
         FPrinc.dxRadialMenu.Popup(mouse.cursorpos.x, mouse.cursorpos.y);
   end;
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

Procedure VerificaAcessos;
begin
   with FPrinc do
   begin
      cxConCliente.Enabled      := ValidaAcessoUsuario('FPrinc','ActCliente');
      cxConProduto.Enabled      := ValidaAcessoUsuario('FPrinc','ActProduto');
      cxConAnimais.Enabled      := ValidaAcessoUsuario('FPrinc','ActAnimais');
      cxConOutros.Enabled       := ValidaAcessoUsuario('FPrinc','ActOutros');

      cxCliente.Enabled         := ValidaAcessoUsuario('FPrinc','cadClientes');
      cxProduto.Enabled         := ValidaAcessoUsuario('FPrinc','cadProduto');
      cxCfop.Enabled            := ValidaAcessoUsuario('FPrinc','cadCfop');
      cxCpagto.Enabled          := ValidaAcessoUsuario('FPrinc','cadCpagto');
      cxOutros.Enabled          := ValidaAcessoUsuario('FPrinc','cadOutros');
      cxBalanco.Enabled         := ValidaAcessoUsuario('FPrinc','cadBalanco');
      cxCadastroUsuario.Enabled := ValidaAcessoUsuario('FPrinc','actCadastro');
      cxTrocadeUsuario.Enabled  := ValidaAcessoUsuario('FPrinc','actTrocarSenha');
   //   cxLogOff.Enabled          := ValidaAcessoUsuario('FPrinc','actLogOff');
      cxHistorico.Enabled       := ValidaAcessoUsuario('FPrinc','actHistorico');

      cxPedido.Enabled          := ValidaAcessoUsuario('FPrinc','cadPedido');
      cxCompras.Enabled         := ValidaAcessoUsuario('FPrinc','cadCompra');
      cxPedidoVEnda.Enabled     := ValidaAcessoUsuario('FPrinc','cadPedidoVenda');
      cxVendas.Enabled          := ValidaAcessoUsuario('FPrinc','cadVenda');
      cxReceber.Enabled         := ValidaAcessoUsuario('FPrinc','cadReceber');
      cxPagar.Enabled           := ValidaAcessoUsuario('FPrinc','cadPagar');
      cxCaixa.Enabled           := ValidaAcessoUsuario('FPrinc','cadCaixa');
      cxRelatorios.Enabled      := ValidaAcessoUsuario('FPrinc','cadRelatorios');
      cxConf.Enabled            := ValidaAcessoUsuario('FPrinc','cadConf');
      cxEmpresa.Enabled         := ValidaAcessoUsuario('FPrinc','cadEmpresa');
   end;

end;

end.
