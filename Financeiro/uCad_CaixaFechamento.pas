unit uCad_CaixaFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxImage, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit,
  cxCalendar, uRotinaDeCalculosMovimentacao;

type
  TFcad_CaixaFechamento = class(TFcad_Pai)
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eDtFechamento: TcxDateEdit;
    cxLabel5: TcxLabel;
    eSaldo: TcxCurrencyEdit;
    eTipo: TcxTextEdit;
    cxLabel6: TcxLabel;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eDtFechamentoExit(Sender: TObject);
  private
    { Private declarations }
    indice : String;
  public
    { Public declarations }
  end;

var
  Fcad_CaixaFechamento: TFcad_CaixaFechamento;

implementation

{$R *.dfm}

uses uRotinas, udmFin, uRotinaLancamentoFinanceiro;

procedure TFcad_CaixaFechamento.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDFECHAMENTO';
      1: indice := 'TIPOMOV';
      2: indice := 'DTMOVIMENTO';
   end;
   StrSql := ' SELECT * FROM CAIXAFECHAMENTO where IDCAIXA='+dmFin.qryCaixa.FieldByName('IDCAIXA').AsString+#13+
   ' and '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   StrSql := StrSql +' order by IDFECHAMENTO';
   ConsultaSql(StrSql, dmFin.qryCaixaFEchamento);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryCaixaFEchamento.RecordCount);
end;

procedure TFcad_CaixaFechamento.cxNovoClick(Sender: TObject);
begin
   inherited;
   dmFin.qryCaixaFechamento.Last;

   if (dmFin.qryCaixaFechamento.FieldByName('TIPOMOV').AsString = 'ABERTURA') then
      eTIpo.TExt := 'FECHAMENTO' else
      eTipo.TExt := 'ABERTURA';

   eDtFechamento.Date := Date;
   eSaldo.Value       := 0;
   eDtFechamento.SetFOcus;
end;

procedure TFcad_CaixaFechamento.cxSalvarClick(Sender: TObject);
begin
   with dmFin.qryCaixaFechamento do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('IDCAIXA').AsInteger               := dmfin.qryCaixa.FieldByName('IDCAIXA').AsInteger;
         FieldByName('USUARIO').AsString                := Trim(Usuario);
         FieldByName('CANCELADO').AsString              := 'NÃO';

         FieldByName('DTMOVIMENTO').AsDateTime          := eDtFechamento.Date;
         FieldByName('TIPOMOV').AsString                := eTipo.TExt;
         FieldByName('SALDOANTERIOR').AsFloat           := dmFin.qryCaixa.FieldByName('SALDOCAIXA').asFloat;
         FieldByName('SALDOATUAL').AsFloat              := ifs(eTipo.Text='ABERTURA', dmFin.qryCaixa.FieldByName('SALDOCAIXA').asFloat+eSaldo.Value, dmFin.qryCaixa.FieldByName('SALDOCAIXA').asFloat-eSaldo.Value);
         Post;

         LancamentoCaixa(Date+Time,
                         eTipo.Text,
                         eTipo.Text+' DE CAIXA DIÁRIO',
                         ifs(eTipo.Text='ABERTURA', eSaldo.Value, 0),
                         ifs(eTipo.Text='ABERTURA', 0, eSaldo.Value),
                         StrToInt(BUSCACONF('FPAGTO')),
                         StrToInt(BUSCACONF('PLANOCONTACAIXA')),
                         dmfin.qryCaixa.FieldByName('IDCAIXA').AsInteger,
                         0);

         ExecutaSQl('UPDATE CAIXA SET DTFECHADO='+QuotedStr(DataSql(eDtFechamento.Date))+' where idcaixa='+dmfin.qryCaixa.FieldByName('IDCAIXA').AsString, dmFin.qryAux);
         ApplyUpdates(0);
         inherited;
         cxConsultaPropertiesChange(self);
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_CaixaFechamento.eDtFechamentoExit(Sender: TObject);
begin
   inherited;
   if  eDtFechamento.Date < dmFIn.qryCaixa.FieldByName('DTFECHADO').AsDateTime then
   begin
      MensagemIcone('A data de fechamento não pode ser menor ou igual á do caixa!',bfWarning);
      eDtFechamento.SetFocus;
      Abort;
   end;
end;

procedure TFcad_CaixaFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo         := Nil;
      pFundo(1);
   end;

   Fcad_CaixaFechamento := Nil;
   Action               := CaFree;
end;

procedure TFcad_CaixaFechamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFIn.qryCaixaFechamento.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFIn.qryCaixaFechamento.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFIn.qryCaixaFechamento.RecordCount);
end;

procedure TFcad_CaixaFechamento.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

end.
