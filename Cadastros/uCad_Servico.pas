unit uCad_Servico;

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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxCheckBox;

type
  TFCad_Servicos = class(TFcad_Pai)
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    eAtivo: TcxCheckBox;
    cxLabel14: TcxLabel;
    eDtCad: TcxDateEdit;
    cxNome: TcxLabel;
    eRazao: TcxTextEdit;
    procedure cxVoltarClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Servicos: TFCad_Servicos;

implementation

{$R *.dfm}

uses uRotinas;

procedure TFCad_Servicos.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
//      try
//         dmcad.qryClie.Delete;
//         dmcad.qryClie.ApplyUpdates(0);
//      Except
//         dmcad.qryClie.CancelUpdates;
//      end;
   end;
end;

procedure TFCad_Servicos.cxVoltarClick(Sender: TObject);
begin
   inherited;
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

end.
