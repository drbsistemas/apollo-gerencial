unit uCad_Estoque;

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
  cxNavigator, Data.DB, cxDBData, cxContainer, cxTextEdit, cxCurrencyEdit,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxDBEdit;

type
  TFCad_Estoque = class(TForm)
    pnMenu: TPanel;
    cxSalvar: TcxButton;
    cxCancela: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1Campo1: TcxGridDBColumn;
    grConsultaDBTableView1Campo2: TcxGridDBColumn;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Estoque: TFCad_Estoque;

implementation

{$R *.dfm}

uses uDmCad, uRotinas, uRotinaDeImpressaoDeRelatorios;

procedure TFCad_Estoque.cxCancelaClick(Sender: TObject);
begin
   Close;
end;

procedure TFCad_Estoque.cxSalvarClick(Sender: TObject);
begin
   Imprime(dmcad.dsEstoque, NIl, NIL,
            'SIM',
            'Ficha de Estoque',
            dmCad.qryConf.FieldByName('PASTASERVIDOR').ASString + '\Relatorios\Estoque\ppFichaEstoque.rtm',
            'SIM','',
            1);
end;

procedure TFCad_Estoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFCad_Estoque.FormShow(Sender: TObject);
begin
   StrSql :=  'select A.*, B.NOMEPROD, B.REFPROD, B.MARCAPROD, B.ESTOQUEDISP, B.ESTOQUETOTAL, B.UNPROD from Estoque A '+
   ' left join PRODUTO B on A.IDPROD=B.IDPROD where A.IDPROD = '+IntTOStr(dmcad.qryProd.FieldByName('IDPROD').AsInteger);

   ConsultaSql(StrSql,dmcad.qryEstoque);
   dmcad.qryEstoque.Last;
end;

end.
