unit uCad_Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, cxImage, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TFcad_Cidade = class(TFcad_Pai)
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
  private
     indice: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Cidade: TFcad_Cidade;

implementation

{$R *.dfm}

uses uDmCad, uRotinas;

procedure TFcad_Cidade.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'CODMUN';
      1: indice := 'MUNICIPIO';
      2: indice := 'UF';
   end;
   StrSql := 'select * from CODIBGE where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   Consulta(StrSql, dmcad.qryCidade);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryCidade.RecordCount);
   eConsulta.setFOcus;
end;

procedure TFcad_Cidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if grCOnsulta.Tag = 1 then
   begin
      ID               := dmCad.qryCidade.Fieldbyname('CODMUN').AsInteger;
      DESCRICAO        := dmCad.qryCidade.FieldByName('MUNICIPIO').AsString;
      OBS              := dmCad.qryCidade.FieldByName('UF').AsString;
   end else
      ID               := 0;

   FormAtivo           := Nil;
   Fcad_Cidade         := Nil;
   Action              := CaFree;
end;

procedure TFcad_Cidade.FormCreate(Sender: TObject);
begin
   MostraPainelBusca(Con);
end;

procedure TFcad_Cidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (Key = VK_F3) and (pnBUsca.Visible = true) then
      cxConsultaPropertiesChange(self);
   if (key = Vk_F2) then
   begin
      if cxConsulta.Itemindex=  2 then
         cxConsulta.Itemindex:= 0 else
         cxConsulta.Itemindex:= cxConsulta.ItemIndex +1;
      cxConsultaPropertiesChange(self);
   end;

   if key = VK_RETURN then
      grCOnsulta.Tag := 1;

   if (key = VK_DOWN) and (not grConsulta.Focused) then
      dmCad.qryCidade.Next;
   if (key = VK_UP) and (not grConsulta.Focused) then
      dmcad.qryCidade.Prior;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryCidade.RecordCount);
end;

procedure TFcad_Cidade.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Cidade.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   inherited;
   grCOnsulta.Tag := 1;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

end.
