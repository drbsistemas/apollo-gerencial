unit uPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxImage, dxGDIPlusClasses, RxMenus;

Type
   TAbrePainel = (Cad, Con);

type
  TFcad_Pai = class(TForm)
    pnCad: TPanel;
    pnCon: TPanel;
    pnMenu: TPanel;
    cxSalvar: TcxButton;
    cxCancela: TcxButton;
    pnBusca: TPanel;
    pnBotaoCad: TPanel;
    cxNovo: TcxButton;
    cxEdita: TcxButton;
    cxVer: TcxButton;
    cxApagar: TcxButton;
    cxVoltar: TcxButton;
    cxPrint: TcxButton;
    pnBotaoCon: TPanel;
    cxLabel1: TcxLabel;
    cxConsulta: TcxComboBox;
    eConsulta: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbAtivo: TcxComboBox;
    cxCon: TcxButton;
    cxCadastro: TcxButton;
    cxFechar: TcxButton;
    cxQtdeReg: TcxLabel;
    pnImg: TcxImage;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1Campo1: TcxGridDBColumn;
    grConsultaDBTableView1Campo2: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxOpcoes: TcxButton;
    cxPopMenu: TRxPopupMenu;
    procedure MOstraPainelCadastro(AbrePainel: TAbrePainel);
    procedure MostraPainelBusca(AbrePainel: TAbrePainel);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxFecharClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxCadastroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Pai: TFcad_Pai;

implementation

{$R *.dfm}

uses uRotinas;

procedure TFcad_Pai.MostraPainelBusca(AbrePainel: TAbrePainel);
begin
   case AbrePainel of
      Cad: Begin
              pnBotaoCad.Visible := True;
              pnBotaoCon.Visible := False;
              pnImg.Visible      := false;
           End;
      Con: Begin
              pnBotaoCad.Visible := False;
              pnBotaoCon.Tag     := 0;
              pnBotaoCon.Visible := True;
              pnImg.Visible      := True;
           End;
   end;
end;

procedure TFcad_Pai.MOstraPainelCadastro(AbrePainel: TAbrePainel);
begin
   case AbrePainel of
      Cad:
         begin
            pnCad.Visible    := True;
            pnCon.Visible    := False;
         end;
      Con:
         begin
            pnCad.Visible    := False;
            pnCon.Visible    := True;
            cxSalvar.Enabled := True;
            cxSalvar.Tag     := 0;
         end;
   end;
end;

procedure TFcad_Pai.cxCadastroClick(Sender: TObject);
begin
   pnBotaoCon.Tag :=1;
   MostraPainelBusca(Cad);
end;

procedure TFcad_Pai.cxCancelaClick(Sender: TObject);
begin
   MostraPainelCadastro(Con);
end;

procedure TFcad_Pai.cxConsultaPropertiesChange(Sender: TObject);
begin
   //
end;

procedure TFcad_Pai.cxEditaClick(Sender: TObject);
begin
   MostraPainelCadastro(Cad);
   cxSalvar.Tag := 0;
end;

procedure TFcad_Pai.cxFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Pai.cxNovoClick(Sender: TObject);
begin
   MostraPainelCadastro(Cad);
   cxSalvar.Tag := 1;
end;

procedure TFcad_Pai.cxSalvarClick(Sender: TObject);
begin
   MostraPainelCadastro(Con);
end;

procedure TFcad_Pai.cxVoltarClick(Sender: TObject);
begin
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

procedure TFcad_Pai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if grConsulta.Tag = 1 then
   begin
      ID             := 0;
      DESCRICAO      := EmptyStr;
      OBS            := EmptyStr;
   end;
end;

procedure TFcad_Pai.FormCreate(Sender: TObject);
begin
   grConsulta.Tag := 0;
   ID             := 0;
   DESCRICAO      := EmptyStr;
   OBS            := EmptyStr;
   MostraPainelBusca(Cad);
end;

procedure TFcad_Pai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_F3) and (pnBUsca.Visible = true) then
      cxConsultaPropertiesChange(self);

   if (key = Vk_F2) then
   begin
      if cxConsulta.Itemindex=  cxCOnsulta.Properties.Items.Count then
         cxConsulta.Itemindex:= 0 else
         cxConsulta.Itemindex:= cxConsulta.ItemIndex +1;
      cxConsultaPropertiesChange(self);
   end;
end;

procedure TFcad_Pai.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #27) and (pnBotaoCon.Visible = true) then
   begin
      grCOnsulta.TAg := 1;
      Close;
   end else
   if (key = #27) and (pnBotaoCon.Visible = false) then
      cxVoltarClick(Self);


   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Pai.FormShow(Sender: TObject);
begin
   if FormStyle = fsNormal then
      MostraPainelBusca(Con);

   MOstraPainelCadastro(Con);
end;

procedure TFcad_Pai.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Selected then
   begin
      ACanvas.Brush.Color       := FCorSelec;
      ACanvas.Canvas.Font.Color := clBlack;
      //ACanvas.Canvas.Font.Style :=[fsBold];
   end
   else
   begin
      if AViewInfo.GridRecord.RecordIndex mod 2 = 0 then
         ACanvas.Brush.Color := clWindow
      else
         ACanvas.Brush.Color := FCorLista;
   end;
end;

procedure TFcad_Pai.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

end.
