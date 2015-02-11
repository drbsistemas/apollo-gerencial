unit uPaiFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

Type
   TAbrePainel = (Cad, Con);

type
  TFcad_PaiFinanceiro = class(TForm)
    pnCad: TPanel;
    pnMenu: TPanel;
    cxSalvar: TcxButton;
    cxCancela: TcxButton;
    pnCon: TPanel;
    pnBusca: TPanel;
    cxLabel1: TcxLabel;
    cxConsulta: TcxComboBox;
    eConsulta: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbAtivo: TcxComboBox;
    cxCon: TcxButton;
    cxQtdeReg: TcxLabel;
    pnBotaoCad: TPanel;
    cxVoltar: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1Campo1: TcxGridDBColumn;
    grConsultaDBTableView1Campo2: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    pnBotaoCon: TPanel;
    procedure MOstraPainelCadastro(AbrePainel: TAbrePainel);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxConsultaPropertiesChange(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_PaiFinanceiro: TFcad_PaiFinanceiro;

implementation

{$R *.dfm}

uses uRotinas, uCad_Credito;

procedure TFcad_PaiFinanceiro.MOstraPainelCadastro(AbrePainel: TAbrePainel);
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

procedure TFcad_PaiFinanceiro.cxCancelaClick(Sender: TObject);
begin
   MOstraPainelCadastro(Con);
end;

procedure TFcad_PaiFinanceiro.cxConsultaPropertiesChange(Sender: TObject);
begin
//
end;

procedure TFcad_PaiFinanceiro.cxSalvarClick(Sender: TObject);
begin
   MOstraPainelCadastro(Con);
end;

procedure TFcad_PaiFinanceiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if grConsulta.Tag = 1 then
   begin
      ID             := 0;
      DESCRICAO      := EmptyStr;
      OBS            := EmptyStr;
   end;
end;

procedure TFcad_PaiFinanceiro.FormCreate(Sender: TObject);
begin
   grConsulta.Tag := 0;
end;

procedure TFcad_PaiFinanceiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #27) and (pnBotaoCon.Visible = true) then
   begin
      grCOnsulta.TAg := 1;
      Close;
   end;


   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_PaiFinanceiro.FormShow(Sender: TObject);
begin
   ID        :=0;
   DESCRICAO := EmptyStr;
   OBS       := EmptyStr;
   MOstraPainelCadastro(Con);
end;

procedure TFcad_PaiFinanceiro.grConsultaDBTableView1CustomDrawCell(
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

end.
