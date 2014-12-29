unit uCad_Animais;

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
  cxNavigator, Data.DB, cxDBData, dxGDIPlusClasses, cxImage, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, RxMenus;

type
  TFcad_Animais = class(TFcad_Pai)
    procedure cxVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Animais: TFcad_Animais;

implementation

{$R *.dfm}

uses uRotinas;

procedure TFcad_Animais.cxVoltarClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

procedure TFcad_Animais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//   ID               := dmCad.qryClie.Fieldbyname('IDCLIE').AsInteger;
//   DESCRICAO        := dmCad.qryClie.FieldByName('RAZAO').AsString;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      Fcad_Animais  := Nil;
   end;
   pFundo(1);
   Action           := CaFree;
end;

procedure TFcad_Animais.FormShow(Sender: TObject);
begin
  inherited;
   cxConsultaPropertiesChange(self);
end;

end.
