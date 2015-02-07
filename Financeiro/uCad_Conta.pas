unit uCad_Conta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxButtonEdit, cxCurrencyEdit, Datasnap.DBClient, FireDAC.Comp.Client;

type
  TFcad_Contas = class(TFcad_Pai)
    cxLabel25: TcxLabel;
    cxStatus: TcxComboBox;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    grConsultaDBTableView1Column9: TcxGridDBColumn;
    grConsultaDBTableView1Column10: TcxGridDBColumn;
    grConsultaDBTableView1Column11: TcxGridDBColumn;
    grConsultaDBTableView1Column12: TcxGridDBColumn;
    grConsultaDBTableView1Column13: TcxGridDBColumn;
    eCodigo: TcxTextEdit;
    cxLabel3: TcxLabel;
    eCodOrigem: TcxTextEdit;
    cxLabel4: TcxLabel;
    eOrigem: TcxTextEdit;
    cxLabel14: TcxLabel;
    eDtLancamento: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxTipoConta: TcxComboBox;
    cxLabel6: TcxLabel;
    eDocumento: TcxTextEdit;
    cxLabel7: TcxLabel;
    eStatus: TcxTextEdit;
    cxLabel10: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    cxLabel9: TcxLabel;
    eDtEmissao: TcxDateEdit;
    cxLabel11: TcxLabel;
    eDtVencimento: TcxDateEdit;
    cxLabel12: TcxLabel;
    eHistorico: TcxTextEdit;
    cxLabel13: TcxLabel;
    eObs: TcxTextEdit;
    eValorInicial: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    eValorJuros: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    eValorMulta: TcxCurrencyEdit;
    eValorDesconto: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    eValorTotal: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    eValorPago: TcxCurrencyEdit;
    eDtPagamento: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel8: TcxLabel;
    eCodPlano: TcxButtonEdit;
    ePlanoCta: TcxTextEdit;
    pnSelec: TPanel;
    grConsulta2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnTop: TPanel;
    cxContas: TcxLabel;
    cxTotal: TcxLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cdsRateio: TClientDataSet;
    dsRateio: TDataSource;
    cdsRateioIDCONTA: TIntegerField;
    cdsRateioIDPLANO: TIntegerField;
    cdsRateioIDCCUSTO: TIntegerField;
    cdsRateioVLRPERC: TFloatField;
    cdsRateioVLRRATEIO: TFloatField;
    cdsRateioDESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxApagarClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eValorInicialExit(Sender: TObject);
    procedure eDtVencimentoExit(Sender: TObject);
    procedure eCodClieExit(Sender: TObject);
    procedure eCodCliePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodPlanoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodPlanoExit(Sender: TObject);
    procedure eCodPlanoKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    indice : String;
    FtotalContas: Double;
    Procedure Limpa;
    procedure Edita;
    procedure SomaValorConta;
    procedure Marca(intTipo: Integer);
    procedure TotalContas(FValor: Double);
    procedure ConsultaRateio(FTotalConta: Double; StrCodPlano, StrCodConta, StrDados: String);
  public
    { Public declarations }
  end;

var
  Fcad_Contas: TFcad_Contas;

implementation

{$R *.dfm}

uses uRotinas, udmFin, uRotinaDeCalculosMovimentacao, uCad_Clientes,
  uCon_Generica, uCad_PlanoConta;

procedure TFcad_Contas.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmFin.qryConta.Delete;
         ExecutaSql('delete from CONTARATEIO where IDCONTA='+dmFin.qryConta.FieldByName('IDCONTA').AsString, dmFin.qryAux);
         dmFin.qryConta.ApplyUpdates(0);
      Except
         dmFin.qryConta.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Contas.cxCancelaClick(Sender: TObject);
begin
   inherited;
   if dmFin.qryContaRateio.RecordCount>0 then
      dmFin.qryContaRateio.CancelUpdates;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Contas.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
    case cxConsulta.ItemIndex of
      0: indice := 'IDCONTA';
      1: indice := 'DOCUMENTO';
      2: indice := 'RAZAO';
      3: indice := 'CNPJ';
      4: indice := 'CPF';
      5: indice := 'DTEMISSAO';
      6: indice := 'DTBAIXA';
      7: indice := 'DTVENCTO';
   end;

   StrSql := 'SELECT '+#13+
         ' A.*, '+#13+
         ' B.RAZAO, '+#13+
         ' B.CNPJ, '+#13+
         ' B.CPF, '+#13+
         ' C.descricao CCUSTO, '+#13+
         ' D.DESCRICAO FPAGTO '+#13+
         ' FROM CONTA A '+#13+
         ' left join CLIENTE B on A.IDCLIE=B.IDCLIE '+#13+
         ' left join  GENERICA C on A.IDCCUSTO = C.IDGENERICA and C.TABELA= '+QuotedStr('CCUSTO')+#13+
         ' left join GENERICA D on A.idCpagto = D.idgenerica and D.TABELA= '+QuotedStr('FPAGTO')+#13+
         ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+' and TIPOCONTA='+QuotedStr(ifs(TipoMov=ENTRADA,'R','P'));

   if cxStatus.Itemindex > 0 then
      StrSQl := StrSql + ' and A.STATUSCONTA='+QUotedStr(cxStatus.Text);

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmFin.qryConta);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryConta.RecordCount);
end;

procedure TFcad_Contas.cxEditaClick(Sender: TObject);
begin
   if dmFin.qryConta.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   inherited;
   Limpa;
   Edita;
end;

procedure TFcad_Contas.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   if (AViewInfo.Item.Index = cxGridDBColumn1.Index) then
   begin
      if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'ABERTO') then
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end else
      if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'QUITADO') then
      begin
         ACanvas.Canvas.Brush.Color := clYellow;
         ACanvas.Canvas.Font.Color  := clYellow;
      end else
      if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'CANCELADO') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end;
   end;
end;

procedure TFcad_Contas.cxGridDBTableView1DblClick(Sender: TObject);
begin
   TotalContas((dmFin.cdsSelecVLRBRUTO.AsFLoat*-1));
   dmFin.cdsSelec.Delete;
   if dmFIn.cdsSelec.RecordCount<=0 then
      pnSelec.Visible := false;
end;

procedure TFcad_Contas.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   eDocumento.SetFocus;
end;

procedure TFcad_Contas.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Contas);

   with dmFin.qryConta do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('IDCLIE').AsString            := eCodCLie.Text;
         FieldByName('IDORIGEM').AsString          := eCodOrigem.Text;
         FieldByName('IDPLANOCTA').AsString        := eCodPlano.Text;

         FieldByName('DTEMISSAO').AsDateTime       := eDtEmissao.Date;
         FieldByName('DTLANCTO').AsDAteTime        := eDtLancamento.Date;
         FieldByName('DTVENCTO').AsDateTime        := eDtVencimento.Date;
         FieldByName('DTBAIXA').AsDateTime         := eDtPagamento.Date;
         FieldByName('VLRINI').AsFloat             := eValorInicial.Value;
         FieldByName('VLRJUROS').AsFloat           := eValorJuros.Value;
         FieldByName('VLRMULTA').AsFloat           := eValorMulta.Value;
         FieldByName('VLRDESC').AsFloat            := eValorDesconto.Value;
         FieldByName('VLRBRUTO').AsFloat           := eValorTotal.Value;
         FieldByName('VLRPAGO').AsFloat            := eValorPago.Value;

         FieldByName('DOCUMENTO').AsString         := eDocumento.TExt;
         FieldByName('HISTORICO').AsString         := eHistorico.Text;
         FieldByName('TIPOCONTA').AsString         := ifs(cxTipoConta.Itemindex = 0, 'R', 'P');
         FieldByName('STATUSCONTA').AsString       := eStatus.Text;
         FieldByName('ORIGEM').AsString            := eOrigem.Text;
         Fieldbyname('OBS').AsString               := eObs.Text;

         Post;
         ApplyUpdates(0);
         if dmFin.qryContaRateio.RecordCount>0 then
         begin
            ExecutaSql('delete from CONTARATEIO where IDCONTA='+eCOdigo.TExt, dmFin.qryAux);
            dmFin.qryContaRateio.ApplyUpdates(0);
         end;
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Contas.cxVerClick(Sender: TObject);
begin
  inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Contas.eCodClieExit(Sender: TObject);
begin
  inherited;
   eCliente.Text :=  ConsultaCampoNomeAtivo(eCodClie.Text, 'CLI');
   if eCliente.Text ='NENHUM' then
      eCodClie.Text := '0';
end;

procedure TFcad_Contas.eCodCliePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Contas, 'CLI');

   if ID > 0 then
   begin
      eCliente.Text := DESCRICAO;
      eCOdCLie.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Contas.eCodPlanoExit(Sender: TObject);
begin
  inherited;
   ePlanoCta.Text       :=  ConsultaCampoNomeAtivo(eCodPlano.Text, 'PLANOCONTA');
   if ePlanoCta.Text ='NENHUM' then
      eCodPlano.Text := '0' else
      begin
         ConsultaRateio(eValorTotal.Value, eCodPlano.Text, eCodigo.Text, 'CONSULTA');
      end;
end;

procedure TFcad_Contas.eCodPlanoKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Contas.eCodPlanoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   if TipoMov = ENTRADA then
      TipoPlano := RECEITA else
      TipoPlano := DESPESA;
   AbreTelaComShowModal(TFcad_PlanoConta, TObject(Fcad_PlanoConta), Fcad_Contas, '');


   if ID > 0 then
   begin
      eCodPlano.Text := intToStr(ID);
      ePlanoCta.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Contas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_Contas    := Nil;
      Action         := CaFree;
   end;
end;

procedure TFcad_Contas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFin.qryConta.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFin.qryConta.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFin.qryConta.RecordCount);
end;

procedure TFcad_Contas.FormShow(Sender: TObject);
begin
  inherited;
  if TipoMov= ENTRADA then
   Caption := 'CADASTRO DE CONTAS Á RECEBER' else
   Caption := 'CADASTRO DE CONTAS Á PAGAR';

   dmFin.cdsSelec.Close;
   dmFin.cdsSelec.CreateDataSet;
   dmFin.cdsSelec.Open;

   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Contas.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   if (AViewInfo.Item.Index = grConsultaDBTableView1Campo1.Index) then
   begin
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'ABERTO') then
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'QUITADO') then
      begin
         ACanvas.Canvas.Brush.Color := clYellow;
         ACanvas.Canvas.Font.Color  := clYellow;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'CANCELADO') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end;
//      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'ABERTO') then
//      begin
//         ACanvas.Canvas.Brush.Color := clGreen;
//         ACanvas.Canvas.Font.Color  := clGreen;
//      end else
//      begin
//         ACanvas.Canvas.Brush.Color := clGreen;
//         ACanvas.Canvas.Font.Color  := clGreen;
//      end;
   end;
end;

procedure TFcad_Contas.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if (dmFIn.qryConta.Active = true) and (dmFIn.qryConta.RecordCount < 1) then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados!','I',':)');
      Abort;
   end;
   if dmFIn.qryConta.FieldByName('STATUSCONTA').AsString = 'QUITADO' then
   begin
      Msg('Contas quitadas não podem ser selecionadas!','I',':)');
      abort;
   end;
   if dmFin.CdsSelec.locate('IDCONTA', dmFin.qryConta.FieldByName('IDCONTA').AsInteger, []) then
      Marca(1) else  // Desmarca
      Marca(0);      // Marca
end;

procedure TFcad_Contas.Limpa;
begin
   eCodigo.Text          := '0';
   eCodCLie.Text         := '0';
   eCliente.TExt         := 'NENHUM';
   eCodOrigem.Text       := '0';
   eCodPlano.Text        := '0';
   ePlanoCta.Text        := 'NENHUM';

   eDtEmissao.Date       := DAte;
   eDtLancamento.Date    := Date;
   eDtVencimento.Date    := Date;
   eDtPagamento.Date     := DAte;

   eValorInicial.Value   := 0;
   eValorJuros.Value     := 0;
   eValorMulta.Value     := 0;
   eValorDesconto.Value  := 0;
   eValorTotal.Value     := 0;
   eValorPago.Value      := 0;

   eDocumento.Clear;
   eHistorico.Clear;
   cxTipoConta.ItemIndex := ifs(TipoMov = ENTRADA, 0, 1);
   eStatus.Text          := 'ABERTO';
   eOrigem.Clear;
   eObs.Clear;
end;

procedure TFcad_Contas.Edita;
begin
   with dmFin.qryConta do
   begin
      try
         eCodigo.Text          := FieldByName('IDCONTA').AsString;
         eCodCLie.Text         := FieldByName('IDCLIE').AsString;
         eCodClieExit(Self);
         eCodOrigem.Text       := FieldByName('IDORIGEM').AsString;

         eDtEmissao.Date       := FieldByName('DTEMISSAO').AsDateTime;
         eDtLancamento.Date    := FieldByName('DTLANCTO').AsDAteTime;
         eDtVencimento.Date    := FieldByName('DTVENCTO').AsDateTime;
         eDtPagamento.Date     := FieldByName('DTBAIXA').AsDateTime;

         eValorInicial.Value   := FieldByName('VLRINI').AsFloat;
         eValorJuros.Value     := FieldByName('VLRJUROS').AsFloat;
         eValorMulta.Value     := FieldByName('VLRMULTA').AsFloat;
         eValorDesconto.Value  := FieldByName('VLRDESC').AsFloat;
         eValorTotal.Value     := FieldByName('VLRBRUTO').AsFloat;
         eValorPago.Value      := FieldByName('VLRPAGO').AsFloat;

         eCodPlano.Text        := FieldByName('IDPLANOCTA').AsString;
         eCodPlanoExit(Self);

         eDocumento.TExt       := FieldByName('DOCUMENTO').AsString;
         eHistorico.Text       := FieldByName('HISTORICO').AsString;
         cxTipoConta.ItemIndex := ifs(Fieldbyname('TIPOCONTA').AsString = 'R', 0, 1);
         eStatus.Text          := FieldByName('STATUSCONTA').AsString;
         eOrigem.Text          := FieldByName('ORIGEM').AsString;
         eObs.Text             := Fieldbyname('OBS').AsString;
      Except
      end;
   end;
end;

procedure TFcad_Contas.eDtVencimentoExit(Sender: TObject);
begin
  inherited;
   if (DATAVALIDA(eDtVencimento.text)=EmptyStr) or (eDtVencimento.Date < eDtEmissao.DAte) then
   begin
      Msg('Opa! Verificamos que a data de vencimento é inválida, verifique!','I',';P');
      eDtVencimento.Clear;
   end;
end;

procedure TFcad_Contas.eValorInicialExit(Sender: TObject);
begin
   inherited;
   SomaValorConta;
end;

Procedure TFcad_Contas.SomaValorConta;
begin
   eValorTotal.value := (eValorInicial.value + eValorJuros.value + eValorMulta.value) - eValorDesconto.value;
end;

procedure TFcad_Contas.Marca(intTipo: Integer);
begin
   with dmFin do
   begin
      if IntTipo=0 then // Marca
      begin
         cdsSelec.Append;
         cdsSelecIDCONTA.AsInteger     := qryConta.FieldByName('IDCONTA').ASinteger;
         cdsSelecIDCLIE.ASInteger      := qryConta.FieldByName('IDCLIE').ASInteger;
         cdsSelecIDPLANO.AsInteger     := qryConta.FieldByName('IDPLANOCTA').ASInteger;
         cdsSelecDOCUMENTO.AsString    := qryConta.FieldByName('DOCUMENTO').AsString;
         cdsSelecNOMECLIE.AsString     := qryConta.FieldByName('RAZAO').AsString;
         cdsSelecDTVENCTO.AsDateTIme   := qryConta.FieldByName('DTVENCTO').AsDateTIme;
         cdsSelecDTEMISSAO.AsDateTime  := qryConta.FieldByName('DTEMISSAO').AsDateTIme;
         cdsSelecVLRINI.AsFloat        := qryConta.FieldByName('VLRINI').ASFloat;
         cdsSelecVLRJUROS.AsFloat      := qryConta.FieldByName('VLRJUROS').ASFLoat;
         cdsSelecVLRMULTA.ASFLoat      := qryConta.FieldByName('VLRMULTA').ASFLoat;
         cdsSelecVLRDESC.ASFLoat       := qryConta.FieldByName('VLRDESC').ASFLoat;
         cdsSelecVLRBRUTO.ASFLoat      := qryConta.FieldByName('VLRBRUTO').ASFLoat;
         cdsSelecDIASATRASO.AsInteger  := qryConta.FieldByName('DIASATRASO').ASInteger;
         cdsSelecHISTORICO.ASString    := qryConta.FieldByName('HISTORICO').asString;
         cdsSelecSTATUS.AsString       := qryConta.FieldByName('STATUSCONTA').ASString;
         cdsSelecVLRPAGO.ASFloat       := qryConta.FieldByName('VLRPAGO').AsFloat;
         cdsSelec.Post;
         TotalContas(qryConta.FieldByName('VLRBRUTO').AsFLoat);
      end else
      if IntTipo=1 then // Desmarca
      begin
         cdsSelec.Locate('IDCONTA', qryConta.FieldByName('IDCONTA').AsInteger, []);
         TotalContas((qryConta.FieldByName('VLRBRUTO').AsFLoat*-1));
         cdsSelec.DELETE;
      end;

   ///// Controla Paineis
      if cdsSelec.RecordCount<=0 then
      begin
         pnSelec.Visible  := false;
         TotalContas(0);
      end
      else
         pnSelec.Visible   := true;
   end;
end;

procedure TFcad_Contas.TotalContas(FValor: Double);
begin
   if Fvalor = 0 then
      FTotalContas := 0 else
      FTotalContas:= FTotalContas + FValor;

   cxTotal.Caption := 'Total de Contas R$: '+FormatFloat('###,###,##0.00',FTotalContas);
end;

Procedure TFcad_Contas.ConsultaRateio(FTotalConta: Double; StrCodPlano, StrCodConta, StrDados: String);
begin  
   with dmFin do
   begin
      if StrDados = 'BANCO' then
         ConsultaSql('select '+#13+
            ' A.*, '+#13+
            ' B.DESCRICAO, '+#13+
            ' C.NOMEPLANO '+#13+
            ' from CONTARATEIO A '+#13+
            ' left join GENERICA B on A.IDCCUSTO = B.IDGENERICA and TABELA='+QuotedStr('CCUSTO')+' '+#13+
            ' left join PLANOCONTA C on A.IDPLANO = C.IDPLANO '+#13+
            ' where IDCONTA='+StrCodConta, qryAux)
      else   
      if StrDados = 'CONSULTA' then      
         ConsultaSql('SELECT A.*, B.DESCRICAO FROM PLANOCONTAITEM A '+#13+
            ' LEFT JOIN GENERICA B  on A.IDCCUSTO = B.IDGENERICA AND TABELA='+QuotedStr('CCUSTO')+' WHERE IDPLANO='+StrCodPlano, qryAux);

      if qryAux.RecordCount>0 then
      begin
         while not qryAux.Eof do
         begin
            cdsRateio.Append;
            cdsRateioIDCONTA.AsInteger  := StrToInt(StrCodConta);
            cdsRateioIDPLANO.AsInteger  := StrToInt(StrCodPlano);  
            cdsRateioIDCCUSTO.AsInteger := qryAux.FIeldbyname('IDCCUSTO').asInteger;
            cdsRateioVLRPERC.ASFloat    := qryAux.FIeldbyname('PERCENTUAL').AsFloat;
            cdsRateioVLRRATEIO.AsFloat  := CalculoCorreto((qryAux.FIeldbyname('PERCENTUAL').AsFloat/100),FTotalConta,'*',2);
            cdsRateioDESCRICAO.AsString := qryAux.FieldByName('DESCRICAO').AsString;
            cdsRateio.Post;
            qryAux.Next;
         end;
      end;
   end;
end;

end.
