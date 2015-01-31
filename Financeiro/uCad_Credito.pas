unit uCad_Credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPaiFinanceiro, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  Vcl.ExtCtrls, cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar;

type
  TFCad_Credito = class(TFcad_PaiFinanceiro)
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    eCodCliente: TcxTextEdit;
    eCliente: TcxTextEdit;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    eTotalCredito: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxBaixaValor: TcxButton;
    cxLabel4: TcxLabel;
    eVlrBaixa: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxNovo: TcxButton;
    eData: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxLabel6: TcxLabel;
    eCredito: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    eDescricao: TcxTextEdit;
    eDocumento: TcxTextEdit;
    cxLabel7: TcxLabel;
    procedure cxVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
  private
    procedure Consulta;
    procedure LimpaItemDinheiro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Credito: TFCad_Credito;

implementation

{$R *.dfm}

uses udmFin, uRotinas, uDmCad, uPrinc, uRotinaLancamentoFinanceiro;

procedure TFCad_Credito.cxNovoClick(Sender: TObject);
begin
   inherited;
   MOstraPainelCadastro(Cad);
   LimpaItemDinheiro;
end;

procedure TFCad_Credito.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Credito);
   if (eDocumento.Text = '') or
      (eDescricao.Text = '') or
      (eCredito.value <=0) then
   begin
      Msg('Há campos a serem validados, verifique!','I',';P');
      abort;
   end;

   LancaAdiantamento(eData.Date,
      eDocumento.TExt,
      eDescricao.TExt,
      eTotalCredito.Value,
      eCredito.Value,
      0, StrToInt(eCodCLiente.Text));
   inherited;
   Consulta;
end;

procedure TFCad_Credito.cxVoltarClick(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFCad_Credito.FormShow(Sender: TObject);
begin
   inherited;
   Consulta;
end;

Procedure TFcad_Credito.Consulta;
begin
   ConsultaSql('select * from CLIENTECREDITO where IDCLIE = '+QuotedStr(eCodCliente.Text)+' order by DATA', dmfin.qryCredito);
   dmFin.qryCredito.Last;
   eTotalCredito.Value := dmFin.qryCredito.FieldByName('SALDO').AsFloat;
end;

Procedure TFcad_Credito.LimpaItemDinheiro;
begin
   eData.DAte := Date;
   eDocumento.Clear;
   eCredito.Value := 0;
   eDescricao.CLear;
   eDocumento.SetFocus;
end;

end.
