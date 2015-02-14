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
  cxCalendar, cxCheckBox;

type
  TFcad_CaixaFechamento = class(TFcad_Pai)
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel5: TcxLabel;
    eDtFechamento: TcxDateEdit;
    cxLabel4: TcxLabel;
    eSaldo: TcxCurrencyEdit;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    eTipo: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eDtFechamentoExit(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
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

uses udmFin, uRotinas;

procedure TFcad_CaixaFechamento.cxCancelaClick(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

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
   ConsultaSql('select * from CAIXAFECHAMENTO where IDCAIXA='+dmfin.qryCaixa.FieldByName('IDCAIXA').asString+' and CANCELADO='+QuotedStr('NÃO')+' order by IDFECHAMENTO', dmFin.qryAux);
   if (dmFin.qryAux.FieldByName('TIPOMOV').AsString = 'ABERTURA') then
      eTIpo.TExt := 'FECHAMENTO' else
      eTipo.TExt := 'ABERTURA';

   eDtFechamento.Date := Date;
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
         FieldByName('USUARIO').AsString                := Usuario;
         FieldByName('CANCELADO').AsString              := 'NÃO';

         FieldByName('DTMOVIMENTO').AsDateTime          := eDtFechamento.Date+Time;
         FieldByName('TIPOMOV').AsString                := eTipo.TExt;
         FieldByName('SALDOATUAL').AsFloat              := eSaldo.Value;
         FieldByName('SALDOANTERIOR').AsFloat           := dmFin.qryCaixa.FieldByName('SALDOCAIXA').asFloat;
         Post;
         ApplyUpdates(0);
         inherited;
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

procedure TFcad_CaixaFechamento.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFcad_CaixaFechamento.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

end.
