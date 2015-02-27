unit uCad_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCad_PaiFinanceiro, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit,
  cxCalendar, cxCurrencyEdit, uRotinaDeCalculosMovimentacao, uRotinaLancamentoFinanceiro;

type
  TFcad_Cheque = class(TFcad_PaiFinanceiro)
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eDtEmissao: TcxDateEdit;
    cxLabel5: TcxLabel;
    eCodPlano: TcxButtonEdit;
    ePlanoCta: TcxTextEdit;
    cxLabel7: TcxLabel;
    eDtVencimento: TcxDateEdit;
    cxLabel8: TcxLabel;
    eDtCompensacao: TcxDateEdit;
    pnTerceiro: TPanel;
    eNBanco: TcxTextEdit;
    cxLabel9: TcxLabel;
    eNAgencia: TcxTextEdit;
    cxLabel10: TcxLabel;
    eVlrCheque: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    eObs: TcxTextEdit;
    cxLabel12: TcxLabel;
    ePortador: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    eStatus: TcxTextEdit;
    cxLabel15: TcxLabel;
    cbStatus: TcxTextEdit;
    cxLabel16: TcxLabel;
    eNConta: TcxTextEdit;
    eNCheque: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    eCodCaixa: TcxButtonEdit;
    eCaixa: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxStatus: TcxComboBox;
    pnProprio: TPanel;
    cxLabel19: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodPlanoExit(Sender: TObject);
    procedure eCodPlanoKeyPress(Sender: TObject; var Key: Char);
    procedure eCodPlanoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodClieExit(Sender: TObject);
    procedure eCodCliePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodCaixaExit(Sender: TObject);
    procedure eCodCaixaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
     indice :string;
     procedure Edita;
     procedure Limpa;
  public
    { Public declarations }
  end;

var
  Fcad_Cheque: TFcad_Cheque;

implementation

{$R *.dfm}

uses uRotinas, udmFin, uCad_PlanoConta, uCad_Clientes, uCad_Caixa;

procedure TFcad_Cheque.cxApagarClick(Sender: TObject);
begin
   inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmFin.qryCheque.Delete;
         dmFin.qryCheque.ApplyUpdates(0);
      Except
         dmFin.qryCheque.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Cheque.cxCancelaClick(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Cheque.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCHEQUE';
      1: indice := 'NCHEQUE';
      2: indice := 'NOMEPLANO';
      3: indice := 'DTEMISSAO';
      4: indice := 'DTVENCIMENTO';
   end;

   StrSql := 'select A.*, C.BANCO, D.NOMEPLANO, E.RAZAO        '+#13+
             ' from cheque A                                   '+#13+
             ' left join caixa B on A.IDCAIXA = B.IDCAIXA      '+#13+
             ' left join banco C on B.IDBANCO = C.IDBANCO      '+#13+
             ' left join PLANOCONTA D on A.IDPLANO = D.IDPLANO '+#13+
             ' left join CLIENTE E on A.IDCLIE = E.IDCLIE      '+#13+
             ' Where '+indice+' LIKE '+QuotedStr('%'+eConsulta.Text+'%')+#13+
             ' and TIPOCHEQUE='+QuotedStr(ifs(TipoMov=ENTRADA,'P','T'))+#13+
             ' and STATUS LIKE '+QuotedStr('%'+ifs(cxStatus.ItemIndex>0,cxStatus.Text,'')+'%')+#13+
             '  order by '+indice;

   ConsultaSql(StrSql, dmFin.qryCheque);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryCheque.RecordCount);
end;

procedure TFcad_Cheque.cxEditaClick(Sender: TObject);
begin
   if dmFin.qryCheque.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   inherited;
   Limpa;
   Edita;
   eNCheque.SetFocus;
end;

procedure TFcad_Cheque.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
//   TotalContas((dmFin.cdsSelecVLRBRUTO.AsFLoat*-1));
   dmFin.cdsChequeSelec.Delete;
   if dmFIn.cdsChequeSelec.RecordCount<=0 then
      pnSelec.Visible := false;
end;

procedure TFcad_Cheque.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   eNCheque.SetFocus;
end;

procedure TFcad_Cheque.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Cheque);

   with dmFin.qryCheque do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
//         FieldByName('IDCLIE').AsString            := eCodigo.Text;
         FieldByName('IDCAIXA').AsString          := eCodCaixa.Text;
         FieldByName('IDPLANO').AsString          := eCodPlano.Text;
         FieldByName('IDCLIE').AsString           := eCodClie.TExt;

         FieldByName('DTEMISSAO').AsDateTime      := eDtEmissao.Date;
         FieldByName('DTVENCIMENTO').AsDAteTime   := eDtVencimento.Date;
         FieldByName('DTDEPOSITO').AsDateTime     := eDtCompensacao.Date;

         FieldByName('NBANCO').AsString           := eNBanco.Text;
         FieldByName('NAGENCIA').AsString         := eNAgencia.Text;
         FieldByName('NCONTA').AsString           := eNConta.Text;
         FieldByName('NCHEQUE').AsString          := eNCheque.Text;

         FieldByName('TIPOCHEQUE').AsString       := ifs(TipoMov=ENTRADA,'P','T');
         FieldByName('STATUS').AsString           := cbStatus.Text;
         FieldByName('NOMEPORTADOR').AsString     := ePortador.Text;

         FieldByName('OBSERVACAO').AsString       := eObs.Text;
         FieldByName('VLRTOTAL').AsFloat          := eVlrCheque.Value;

         Post;
         ApplyUpdates(0);
         inherited;
         cxConsultaPropertiesChange(Self);
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Cheque.cxVerClick(Sender: TObject);
begin
  inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Cheque.eCodCaixaExit(Sender: TObject);
begin
  inherited;
   eCaixa.Text :=  ConsultaCampoNomeAtivo(eCodCaixa.Text, 'CAIXA');
   if eCaixa.Text ='NENHUM' then
      eCodCaixa.Text := '0';
end;

procedure TFcad_Cheque.eCodCaixaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Caixa, TObject(Fcad_Caixa), Fcad_Cheque, 'CAIXA');

   if ID > 0 then
   begin
      eCaixa.Text    := DESCRICAO;
      eCodCaixa.Text := intToStr(ID);
   end;
end;

procedure TFcad_Cheque.eCodClieExit(Sender: TObject);
begin
  inherited;
   eCliente.Text :=  ConsultaCampoNomeAtivo(eCodClie.Text, 'CLI');
   if eCliente.Text ='NENHUM' then
      eCodClie.Text := '0';
end;

procedure TFcad_Cheque.eCodCliePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Cheque, 'CLI');

   if ID > 0 then
   begin
      eCliente.Text := DESCRICAO;
      eCOdCLie.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Cheque.eCodPlanoExit(Sender: TObject);
begin
  inherited;
  if TipoMov = ENTRADA then
      ePlanoCta.Text       :=  ConsultaCampoNomeAtivo(eCodPlano.Text, 'PLANOCONTAREC') else
      ePlanoCta.Text       :=  ConsultaCampoNomeAtivo(eCodPlano.Text, 'PLANOCONTAPAG');

   if ePlanoCta.Text ='NENHUM' then
      eCodPlano.Text := '0';
end;

procedure TFcad_Cheque.eCodPlanoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Cheque.eCodPlanoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   if TipoMov = ENTRADA then
      TipoPlano := RECEITA else
      TipoPlano := DESPESA;
   AbreTelaComShowModal(TFcad_PlanoConta, TObject(Fcad_PlanoConta), Fcad_Cheque, '');


   if ID > 0 then
   begin
      eCodPlano.Text := intToStr(ID);
      ePlanoCta.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Cheque.Edita;
begin
   with dmFin.qryCheque do
   begin
      eCodigo.Text        := FieldByName('IDCLIE').AsString;
      eCodCaixa.Text      := FieldByName('IDCAIXA').AsString;
      eCodCaixaExit(Self);
      eCodPlano.Text      := FieldByName('IDPLANO').AsString;
      eCodPlanoExit(Self);
      eCodClie.TExt       := FieldByName('IDCLIE').AsString;
      eCodClieExit(Self);

      eDtEmissao.Date     := FieldByName('DTEMISSAO').AsDateTime;
      eDtVencimento.Date  := FieldByName('DTVENCIMENTO').AsDAteTime;
      eDtCompensacao.Date := FieldByName('DTDEPOSITO').AsDateTime;

      eNBanco.Text        := FieldByName('NBANCO').AsString;
      eNAgencia.Text      := FieldByName('NAGENCIA').AsString;
      eNConta.Text        := FieldByName('NCONTA').AsString;
      eNCheque.Text       := FieldByName('NCHEQUE').AsString;

      cbStatus.Text       := FieldByName('STATUS').AsString;
      ePortador.Text      := FieldByName('NOMEPORTADOR').AsString;

      eObs.Text           := FieldByName('OBSERVACAO').AsString;
      eVlrCheque.Value    := FieldByName('VLRTOTAL').AsFloat;
   end;
end;

procedure TFcad_Cheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   ID               := dmFin.qryCheque.Fieldbyname('IDCHEQUE').AsInteger;
   DESCRICAO        := dmFin.qryCheque.FieldByName('NOMEPLANO').AsString;

   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_Cheque    := Nil;
      Action           := CaFree;
   end;
end;

procedure TFcad_Cheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFin.qryCheque.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFin.qryCheque.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFin.qryCheque.RecordCount);
end;

procedure TFcad_Cheque.FormShow(Sender: TObject);
begin
   inherited;
   if TipoMov= ENTRADA then
      Caption := 'CADASTRO DE CHEQUES TERCEIROS' else
      Caption := 'CADASTRO DE CHEQUES PRÓPRIOS';
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Cheque.grConsultaDBTableView1CustomDrawCell(
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
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'DEPOSITADO') then
      begin
         ACanvas.Canvas.Brush.Color := clYellow;
         ACanvas.Canvas.Font.Color  := clYellow;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'COMPENSADO') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'DEVOLVIDO') then
      begin
         ACanvas.Canvas.Brush.Color := clPurple;
         ACanvas.Canvas.Font.Color  := clPurple;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'CANCELADO') then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color  := clRed;
      end;
   end;
end;

procedure TFcad_Cheque.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if (dmFIn.qryCheque.Active = true) and (dmFIn.qryCheque.RecordCount < 1) then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados!','I',':)');
      Abort;
   end;
   if dmFIn.qryCheque.FieldByName('STATUS').AsString = 'QUITADO' then
   begin
      Msg('Cheques Depositados/Compensados não podem ser selecionadas!','I',':)');
      abort;
   end;
   MarcaDesmarcaCheque(dmFIn.qryCheque.FieldByName('IDCHEQUE').ASinteger);      // Marca

   if dmFin.cdsChequeSelec.RecordCount<=0 then
   begin
      pnSelec.Visible  := false;
//      TotalContas(0);
   end
   else
      pnSelec.Visible   := true;
//   TotalContas((dmFin.qryConta.FieldByName('VLRBRUTO').AsFLoat));
end;

procedure TFcad_Cheque.Limpa;
begin
   LimpaCampos(Fcad_Cheque);
   if TipoMov=ENTRADA then
      pnProprio.Visible  := True else
      pnTerceiro.Visible := True;
end;

end.
