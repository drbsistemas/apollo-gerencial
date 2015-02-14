unit uCad_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Silver, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, RxMenus,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls, dxGDIPlusClasses, cxImage,
  cxGroupBox, Datasnap.DBClient, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCurrencyEdit, cxCalendar, cxButtonEdit, cxCheckBox;

type
  TFcad_Caixa = class(TFcad_Pai)
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dsResumo: TDataSource;
    cdsResumo: TClientDataSet;
    cdsResumoDESCRICAO: TStringField;
    cdsResumoVALOR: TFloatField;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eAgencia: TcxTextEdit;
    cxLabel5: TcxLabel;
    eTitular: TcxTextEdit;
    eAtivo: TcxCheckBox;
    cxLabel9: TcxLabel;
    eCodBanco: TcxButtonEdit;
    eBanco: TcxTextEdit;
    cxLabel12: TcxLabel;
    eDtCad: TcxDateEdit;
    cxLabel8: TcxLabel;
    eConta: TcxTextEdit;
    cxLabel10: TcxLabel;
    eContaDig: TcxTextEdit;
    cxLabel13: TcxLabel;
    edtFechado: TcxDateEdit;
    cxLabel14: TcxLabel;
    eSaldo: TcxCurrencyEdit;
    eSaldoConciliado: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cbTipo: TcxComboBox;
    cxLabel6: TcxLabel;
    eAgenciaDig: TcxTextEdit;
    cxLabel7: TcxLabel;
    eInst1: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    eInst2: TcxTextEdit;
    cxLabel18: TcxLabel;
    eInst3: TcxTextEdit;
    cxLabel19: TcxLabel;
    eInst4: TcxTextEdit;
    eEspecieDoc: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    eLocaPagto: TcxTextEdit;
    cxLabel23: TcxLabel;
    ePercJuros: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    eDiasProtesto: TcxTextEdit;
    cxLabel27: TcxLabel;
    eNossoNum: TcxTextEdit;
    ePercMulta: TcxCurrencyEdit;
    cbAceite: TcxComboBox;
    cxLabel20: TcxLabel;
    eDiasCarencia: TcxTextEdit;
    cxLabel28: TcxLabel;
    eCodCarteira: TcxTextEdit;
    eTamNosso: TcxTextEdit;
    cxLabel29: TcxLabel;
    eCodCedente: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    eModDoc: TcxTextEdit;
    LanarDinheiro1: TMenuItem;
    Lanar1: TMenuItem;
    Realocar1: TMenuItem;
    ConsultarLanamento1: TMenuItem;
    N1: TMenuItem;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    N2: TMenuItem;
    AbrirFecharCC1: TMenuItem;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodBancoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodBancoExit(Sender: TObject);
    procedure eCodBancoKeyPress(Sender: TObject; var Key: Char);
    procedure AbrirFecharCC1Click(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    Procedure Limpa;
    Procedure Edita;
    procedure ConsultaMov;
    procedure SomaFpagto;
  public
    { Public declarations }
  end;

var
  Fcad_Caixa: TFcad_Caixa;

implementation

{$R *.dfm}

uses udmFin, uRotinas, uCad_Banco, uCad_CaixaFechamento;

procedure TFcad_Caixa.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmFIn.qryCaixa.Delete;
         dmFIn.qryCaixa.ApplyUpdates(0);
      Except
         dmFIn.qryCaixa.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Caixa.cxCancelaClick(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Caixa.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCAIXA';
      1: indice := 'BANCO';
   end;
   StrSQl := 'select A.*, B.BANCO from CAIXA A LEFT JOIN BANCO B ON A.IDBANCO=B.IDBANCO '+#13+
      ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmFin.qryCaixa);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryCaixa.RecordCount);
end;

procedure TFcad_Caixa.cxEditaClick(Sender: TObject);
begin
   if dmFin.qryCaixa.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   inherited;
   Limpa;
   Edita;
end;

procedure TFcad_Caixa.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   cbTipo.SetFocus;
end;

procedure TFcad_Caixa.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Caixa);
   ConsultaSql('select IDCAIXA from CAIXA where TIPOCAIXA='+QuotedStr('S'), dmFin.qryAUx);
   if (cbTipo.Itemindex = 0) and
      (dmFin.qryAUx.Fieldbyname('IDCAIXA').asInteger <> StrToIntDef(ecodigo.text,0)) then
   begin
      Msg('Verificamos que já existe uma C/C do Tipo Caixa, verifique!','I',':)');
      cbTipo.SetFocus;
      Abort;
   end;


   with dmFin.qryCaixa do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('IDBANCO').ASinteger           := StrToIntDef(ecodBanco.Text,0);
         FieldByName('AGENCIA').AsString            := eAgencia.TExt;
         FieldByName('AGENCIA_DIG').AsString        := eAgenciaDig.TExt;
         FieldByName('CONTA').AsString              := eConta.TExt;
         FieldByName('CONTA_DIG').AsString          := eContaDig.TExt;
         FieldByName('TITULAR').AsString            := eTitular.TExt;
         FieldByName('DTABERTURA').AsDateTime       := eDtCad.Date+Time;
         FieldByName('DTFECHADO').AsDateTIme        := edtFechado.Date;
         FieldByName('SALDOCAIXA').ASFloat          := eSaldo.Value;
         FieldByName('SALDOCONCILIADO').ASFLoat     := eSaldoConciliado.Value;
         FieldByName('TIPOCAIXA').ASString          := ifs(cbTipo.ItemIndex=0,'S','N');
         ///// Boletos

         FieldByName('BOL_ESPECIEDOC').AsString     := eEspecieDoc.Text;
         FieldByName('BOL_ACEITE').asString         := ifs(cbAceite.Itemindex=0,'S','N');
         FieldByName('BOL_NOSSONUMERO').AsString    := eNossoNum.TExt;
         FieldByName('BOL_LOCALPAGTO').AsString     := eLocaPagto.Text;
         FieldByName('BOL_PERCJUROS').ASFloat       := ePercJuros.Value;
         FieldByName('BOL_PERCMULTA').AsFLoat       := ePercMulta.Value;
         FieldByName('BOL_DIASPROTESTO').AsInteger  := StrToIntDef(eDiasProtesto.Text,0);
         FieldByName('BOL_INST1').AsString          := eInst1.Text;
         FieldByName('BOL_INST2').AsString          := eInst2.Text;
         FieldByName('BOL_INST3').AsString          := eInst3.Text;
         FieldByName('BOL_INST4').AsString          := eInst4.Text;
         FieldByName('BOL_TAMNOSSONUMERO').AsString := eTamNosso.Text;
         FieldByName('BOL_CARTEIRA').AsString       := eCodCarteira.Text;
         FieldByName('BOL_CODCEDENTE').AsString     := eCodCedente.Text;
         FieldByName('BOL_ESPECIEMOD').AsString     := eModDoc.Text;
         FieldByName('BOL_DIASCARENCIA').AsInteger  := StrToIntDef(eDiasCarencia.Text,0);

         POst;
         ApplyUpdates(0);
         inherited;
         cxConsultaPropertiesChange(self);
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Caixa.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Caixa.cxVoltarClick(Sender: TObject);
begin
   inherited;
   ID               := dmFin.qryCaixa.Fieldbyname('IDCAIXA').AsInteger;
   DESCRICAO        := dmFin.qryCaixa.FieldByName('BANCO').AsString;
end;

procedure TFcad_Caixa.eCodBancoExit(Sender: TObject);
begin
   inherited;
   eBanco.Text :=  ConsultaCampoNomeAtivo(eCodBanco.Text, 'BANCO');
   if eBanco.Text ='NENHUM' then
      eCodBanco.Text := '0';
end;

procedure TFcad_Caixa.eCodBancoKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Caixa.eCodBancoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Banco, TObject(Fcad_Banco), Fcad_Caixa, '');

   if ID > 0 then
   begin
      eCodBanco.Text := intToStr(ID);
      eBanco.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Caixa.Edita;
begin
   with dmFin.qryCaixa do
   begin
      eCodigo.Text           := FieldByName('IDCAIXA').AsString;
      ecodBanco.Text         := FieldByName('IDBANCO').AsString;
      ecodBancoExit(self);
      eAgencia.TExt          := FieldByName('AGENCIA').AsString;
      eAgenciaDig.TExt       := FieldByName('AGENCIA_DIG').AsString;
      eConta.TExt            := FieldByName('CONTA').AsString;
      eContaDig.TExt         := FieldByName('CONTA_DIG').AsString;
      eTitular.TExt          := FieldByName('TITULAR').AsString;
      eDtCad.Date            := FieldByName('DTABERTURA').AsDateTime;
      edtFechado.Date        := FieldByName('DTFECHADO').AsDateTIme;
      eSaldo.Value           := FieldByName('SALDOCAIXA').ASFloat;
      eSaldoConciliado.Value := FieldByName('SALDOCONCILIADO').ASFLoat;
      cbTipo.ItemIndex       := ifs(FieldByName('TIPOCAIXA').ASString='S',0,1);

      ///// Boletos
      eEspecieDoc.Text       := FieldByName('BOL_ESPECIEDOC').AsString;
      cbAceite.ItemIndex     := ifs(FieldByName('BOL_ACEITE').asString='S',0,1);
      eNossoNum.TExt         := FieldByName('BOL_NOSSONUMERO').AsString;
      eLocaPagto.Text        := FieldByName('BOL_LOCALPAGTO').AsString;
      ePercJuros.Value       := FieldByName('BOL_PERCJUROS').ASFloat;
      ePercMulta.Value       := FieldByName('BOL_PERCMULTA').AsFLoat;
      eDiasProtesto.Text     := FieldByName('BOL_DIASPROTESTO').AsString;
      eInst1.Text            := FieldByName('BOL_INST1').AsString;
      eInst2.Text            := FieldByName('BOL_INST2').AsString;
      eInst3.Text            := FieldByName('BOL_INST3').AsString;
      eInst4.Text            := FieldByName('BOL_INST4').AsString;
      eTamNosso.Text         := FieldByName('BOL_TAMNOSSONUMERO').AsString;
      eCodCarteira.Text      := FieldByName('BOL_CARTEIRA').AsString;
      eCodCedente.Text       := FieldByName('BOL_CODCEDENTE').AsString;
      eModDoc.Text           := FieldByName('BOL_ESPECIEMOD').AsString;
      eDiasCarencia.Text     := FieldByName('BOL_DIASCARENCIA').AsString;
   end;
end;

procedure TFcad_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmFin.qryCaixa.Fieldbyname('IDCAIXA').AsInteger;
   DESCRICAO        := dmFin.qryCaixa.FieldByName('BANCO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;

   Fcad_Caixa       := Nil;
   Action           := CaFree;
end;

procedure TFcad_Caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFin.qryCaixaItem.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFin.qryCaixaItem.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFin.qryCaixa.RecordCount);
end;

procedure TFcad_Caixa.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
   ConsultaMov;
end;

procedure TFcad_Caixa.grConsultaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

procedure TFcad_Caixa.Limpa;
begin
   LimpaCampos(Fcad_Caixa);
end;

procedure TFcad_Caixa.AbrirFecharCC1Click(Sender: TObject);
begin
   inherited;
   AbreTelaComShowModal(TFcad_CaixaFechamento, TObject(Fcad_CaixaFechamento), Fcad_Caixa, '');
end;

procedure TFcad_Caixa.ConsultaMov;
begin
   if dmFin.qryCaixa.RecordCount>0 then
   begin
      with dmFin do
      begin
         ConsultaSQl('SELECT * FROM CAIXAITEM WHERE IDCAIXA='+qryCaixa.FieldByName('IDCAIXA').AsString, qryCaixaItem);
         qryCaixaItem.Last;
      end;
      SomaFPagto;
   end;
end;

procedure TFcad_Caixa.SomaFpagto;
begin
   StrSql := 'SELECT SUM(A.CREDITO-A.DEBITO) VALOR, A.IDFPAGTO, B.DESCRICAO FROM CAIXAITEM A  '+#13+
      ' left join GENERICA B on A.IDFPAGTO=B.IDGENERICA and B.TABELA='+QuotedStr('FPAGTO') +#13+
      ' where A.IDCAIXA='+dmFin.qryCaixa.FieldbyName('IDCAIXA').AsString +
      ' group by IDFPAGTO, DESCRICAO ';

   ConsultaSql(StrSql, dmFin.qryAux);

   cdsResumo.Close;
   cdsResumo.CreateDataSet;
   cdsResumo.Open;
   cdsResumo.EmptyDataSet;
   while not dmFin.qryAux.Eof do
   begin
      cdsResumo.Append;
      cdsResumoDESCRICAO.AsString := dmFin.qryAux.Fieldbyname('DESCRICAO').asString;
      cdsResumoVALOR.AsFloat      := dmFin.qryAux.Fieldbyname('VALOR').AsFloat;
      cdsResumo.Post;
      dmFIn.qryAux.Next;
   end;
end;

end.
