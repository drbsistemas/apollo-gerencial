unit uCad_Ncm;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, RxMenus, dxGDIPlusClasses, cxImage,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TFcad_NCM = class(TFcad_Pai)
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    indice : String;
  public
    { Public declarations }
  end;

var
  Fcad_NCM: TFcad_NCM;

implementation

{$R *.dfm}

uses uRotinas, uDmCad;

procedure TFcad_NCM.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'NCM';
      1: indice := 'DESCRICAO';
   end;
   StrSql := ' SELECT * FROM NCM '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');


   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmcad.qryNCM);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryNCM.RecordCount);
end;

procedure TFcad_NCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmCad.qryNCM.Fieldbyname('NCM').AsInteger;
   DESCRICAO        := dmCad.qryNCM.FieldByName('DESCRICAO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_NCM         := Nil;
   Action           := CaFree;
end;

procedure TFcad_NCM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryNcm.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryNCM.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryNCM.RecordCount);
end;

procedure TFcad_NCM.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

end.
