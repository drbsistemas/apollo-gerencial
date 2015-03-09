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
  cxCalendar, cxCurrencyEdit, uRotinaDeCalculosMovimentacao, uRotinaLancamentoDeCheques,
  UCBase;

type
  TFcad_Cheque = class(TFcad_PaiFinanceiro)
    cxLabel14: TcxLabel;
    eStatus: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxStatus: TcxComboBox;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    cxSelecionaPop: TMenuItem;
    cxLimpaPop: TMenuItem;
    N1: TMenuItem;
    Depositar1: TMenuItem;
    Compensar1: TMenuItem;
    grHistorico: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel1: TPanel;
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
    cxLabel16: TcxLabel;
    eNConta: TcxTextEdit;
    eVlrCheque: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    eObs: TcxTextEdit;
    cxLabel12: TcxLabel;
    ePortador: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cbStatus: TcxTextEdit;
    eNCheque: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    eCodCaixa: TcxButtonEdit;
    eCaixa: TcxTextEdit;
    pnProprio: TPanel;
    cxLabel19: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    UCControls1: TUCControls;
    cxPopChequeSelec: TRxPopupMenu;
    MenuItem1: TMenuItem;
    Devolver1: TMenuItem;
    cxLabel20: TcxLabel;
    edtMov: TcxDateEdit;
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
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxSelecionaPopClick(Sender: TObject);
    procedure cxLimpaPopClick(Sender: TObject);
    procedure Depositar1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure grConsultaDBTableView1Campo1GetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxGridDBColumn1GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure Compensar1Click(Sender: TObject);
    procedure edtMovExit(Sender: TObject);
    procedure Devolver1Click(Sender: TObject);
  private
    { Private declarations }
     indice :string;
     FtotalContas: Double;
     procedure Edita;
     procedure Limpa;
    procedure TotalContas;
  public
    { Public declarations }
  end;

var
  Fcad_Cheque: TFcad_Cheque;

implementation

{$R *.dfm}

uses uRotinas, udmFin, uCad_PlanoConta, uCad_Clientes, uCad_Caixa, uPrinc;

procedure TFcad_Cheque.Compensar1Click(Sender: TObject);
begin
   inherited;
   if dmfin.qryCheque.FieldByName('STATUS').AsString = 'DEPOSITADO' then
   begin
   if cxgridDBTableView1.DataController.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro selecionado, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   LancaMovimentacaoCheque(edtMov.Date, 'COMPENSADO');
   cxConsultaPropertiesChange(self);
   cxLimpaPopClick(self);
   end else
      Msg('Apenas cheques depositados podem ser compensados!','I',':)');

end;

procedure TFcad_Cheque.cxApagarClick(Sender: TObject);
begin
   inherited;
   if (dmFin.qryCheque.FieldByName('STATUS').AsString ='ABERTO') then
   begin
      if (dmFin.qryCheque.RecordCount <= 0) then
      begin
         Msg('Olá, Verificamos que não há nenhum registro para movimentar, verifique a consulta dos dados','I',':)');
         Abort;
      end;
      if Msg('Entendemos sua vontade, mas deseja realmente cancelar o registro?','P', ':X') then
      begin
         try
            dmFin.qryCheque.Edit;
            dmfin.qryCheque.FieldByName('STATUS').AsString := 'CANCELADO';
            dmFin.qryCheque.Post;
            LancaHistoricoDeCheque(dmfin.qryCheque.FieldbyName('IDCHEQUE').AsInteger, 'CHEQUE CANCELADO POR USUÁRIO EM: '+DateToStr(Date), Date);
            dmFin.qryCheque.ApplyUpdates(0);
         Except
            dmFin.qryCheque.CancelUpdates;
         end;
      end;
   end else
      Msg('Apenas cheques que não estejam em movimentação podem ser cancelados!','I',':)');
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
   if dmFin.qryCheque.FieldByName('STATUS').AsString <> 'ABERTO' then
      cxSalvar.Enabled := false;

   eNCheque.SetFocus;
end;

procedure TFcad_Cheque.cxGridDBColumn1GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
   inherited;
   AHintText := VarToStr(ARecord.Values[Sender.Index]);
   AIsHintMultiLine := True;
end;

procedure TFcad_Cheque.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   if pnSelec.Visible = true then
   begin
      if (AViewInfo.Item.Index = cxGridDBColumn1.Index) then
      begin
         if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'ABERTO') then
         begin
            ACanvas.Canvas.Brush.Color := clGreen;
            ACanvas.Canvas.Font.Color  := clGreen;
         end else
         if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'DEPOSITADO') then
         begin
            ACanvas.Canvas.Brush.Color := clYellow;
            ACanvas.Canvas.Font.Color  := clYellow;
         end else
         if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'COMPENSADO') then
         begin
            ACanvas.Canvas.Brush.Color := clBlue;
            ACanvas.Canvas.Font.Color  := clBlue;
         end else
         if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'DEVOLVIDO') then
         begin
            ACanvas.Canvas.Brush.Color := clPurple;
            ACanvas.Canvas.Font.Color  := clPurple;
         end else
         if (AViewInfo.GridRecord.Values[cxGridDBColumn1.Index] = 'CANCELADO') then
         begin
            ACanvas.Canvas.Brush.Color := clRed;
            ACanvas.Canvas.Font.Color  := clRed;
         end;
      end;
   end;
end;

procedure TFcad_Cheque.cxGridDBTableView1DblClick(Sender: TObject);
begin
   inherited;
   TotalContas;
   dmFin.cdsChequeSelec.Delete;
   if dmFIn.cdsChequeSelec.RecordCount<=0 then
      pnSelec.Visible := false;
end;

procedure TFcad_Cheque.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   cbStatus.Text := 'ABERTO';
   eNCheque.SetFocus;
end;

Procedure TFcad_Cheque.cxSalvarClick(Sender: TObject);
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
         FieldByName('IDFPAGTO').AsInteger        := ifs(TipoMov=ENTRADA, pintChequeTerceiro, pIntChequeProprio);

         FieldByName('DTEMISSAO').AsDateTime      := eDtEmissao.Date;
         FieldByName('DTVENCIMENTO').AsDAteTime   := eDtVencimento.Date;
         FieldByName('DTDEPOSITO').AsDateTime     := eDtCompensacao.Date;

         FieldByName('NBANCO').AsString           := eNBanco.Text;
         FieldByName('NAGENCIA').AsString         := eNAgencia.Text;
         FieldByName('NCONTA').AsString           := eNConta.Text;
         FieldByName('NCHEQUE').AsString          := eNCheque.Text;

         FieldByName('TIPOCHEQUE').AsString       := ifs(TipoMov=ENTRADA,'T','P');
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

procedure TFcad_Cheque.Depositar1Click(Sender: TObject);
begin
   inherited;
   if dmfin.qryCheque.FieldByName('STATUS').AsString = 'ABERTO' then
   begin
      if cxgridDBTableView1.DataController.RecordCount <= 0 then
      begin
         Msg('Olá, Verificamos que não há nenhum registro selecionado, verifique a consulta dos dados','I',':)');
         Abort;
      end;
      LancaMovimentacaoCheque(edtMov.Date+Time, 'DEPOSITADO');
      cxConsultaPropertiesChange(self);
      cxLimpaPopClick(self);
   end else
      Msg('Apenas cheques em aberto podem ser depositados!','I',':)');
end;

procedure TFcad_Cheque.Devolver1Click(Sender: TObject);
begin
   inherited;
   if dmfin.qryCheque.FieldByName('STATUS').AsString <> 'ABERTO' then
   begin
      if cxgridDBTableView1.DataController.RecordCount <= 0 then
      begin
         Msg('Olá, Verificamos que não há nenhum registro selecionado, verifique a consulta dos dados','I',':)');
         Abort;
      end;
      LancaDevolucaoDeCheque(edtMov.Date);
      cxConsultaPropertiesChange(self);
      cxLimpaPopClick(self);
   end else
      Msg('Apenas cheques com movimentação podem ser devolvidos!','I',':)');
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
   if not CharInSet(Key, ['0'..'9',#8]) then
      Key := #0;
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
      eCodigo.Text        := FieldByName('IDCHEQUE').AsString;
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
      grHistorico.Visible := True;
      ConsultaSql('select * from CHEQUEHISTORICO where IDCHEQUE='+eCodigo.Text, dmfin.qryChequeHis);
   end;
end;

procedure TFcad_Cheque.edtMovExit(Sender: TObject);
begin
   inherited;
   if DATAVALIDA(edtMov.Text)='' then
   begin
      Msg('Verificamos que a Data Para Movimentação do cheque é inválida, verifique!','I',':O');
      edtMov.Date := Date;
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
   edtMov.Date := Date;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Cheque.grConsultaDBTableView1Campo1GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
   inherited;
   AHintText := VarToStr(ARecord.Values[Sender.Index]);
   AIsHintMultiLine := True;
end;

procedure TFcad_Cheque.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   inherited;
   if dmfin.qryCheque.RecordCount>0 then
   begin
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
      TotalContas;
   end
   else
      pnSelec.Visible   := true;
   TotalContas;
end;

procedure TFcad_Cheque.Limpa;
begin
   LimpaCampos(Fcad_Cheque);
   grHistorico.Visible := False;
   if TipoMov=SAIDA then
      pnTerceiro.Visible := True;
end;

procedure TFcad_Cheque.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView1.DataController.RecordCount>0 then
  begin
     Msg('Nenhum cheque deve estar em seleção para editar um C/C Destino, verifique!','I',':E');
     Abort;
  end;

   with dmFin do
   begin
      AbreTelaComShowModal(TFcad_Caixa, TObject(Fcad_Caixa), Fcad_Cheque, 'CAIXA');
      if ID > 0 then
      begin
         VerificaAberturaDoCaixa(ID);
         qryCheque.Edit;
         qryCheque.FieldByName('IDCAIXA').AsString := intToStr(ID);
         qryChequeBANCO.AsString                   := DESCRICAO;
         qryCheque.Post;
         qryCheque.ApplyUpdates(0);
      end;
   end;
end;

procedure TFcad_Cheque.cxLimpaPopClick(Sender: TObject);
begin
   inherited;
   cxTotal.Caption := 'Total de Cheques R$: '+FormatFloat('###,###,##0.00',0);
   dmFin.cdsChequeSelec.Close;
   pnSelec.Visible := false;
end;

procedure TFcad_Cheque.cxSelecionaPopClick(Sender: TObject);
begin
   inherited;
   cxLimpaPopClick(self);
   with dmFin do
   begin
      qryCheque.first;
      while not qryCheque.eof do
      begin
         VerificaAberturaDoCaixa(qryCheque.FieldByName('IDCAIXA').ASinteger);
         MarcaDesmarcaCheque(qryCheque.FieldByName('IDCHEQUE').ASinteger);      // Marca
         TotalContas;
         qryCheque.NExt;
      end;
      pnSelec.Visible   := true;
   end;
end;

procedure TFcad_Cheque.TotalContas;
begin
   with dmFin do
   begin
      FTotalContas := 0;
      cdsChequeSelec.DisableControls;
      cdsChequeSelec.First;
      while not cdsChequeSelec.Eof do
      begin
         FTotalContas:= FTotalContas + cdsChequeSelec.FieldByName('VLRTOTAL').AsFloat;
         cdsChequeSelec.NExt;
      end;
      cdsChequeSelec.EnableControls;
   end;
   cxTotal.Caption := 'Total de Cheques R$: '+FormatFloat('###,###,##0.00',FTotalContas);
end;

end.
