unit uCad;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TFcad_Relatorio = class(TForm)
    Panel1: TPanel;
    cxButton5: TcxButton;
    cxGerencial: TcxButton;
    cxEstoque: TcxButton;
    cxFinanceiro: TcxButton;
    cxFaturamento: TcxButton;
    cxListagens: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    CODIGO: TcxGridDBColumn;
    DESCRICAO: TcxGridDBColumn;
    GRUPO: TcxGridDBColumn;
    CAMINHO: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Relatorio: TFcad_Relatorio;

implementation

{$R *.dfm}

procedure TFcad_Relatorio.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

end.
