unit uCad_Balanco;

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
  cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxButtonEdit, RxMenus,
  dxGDIPlusClasses, cxImage, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider, UCBase;

type
  TFcad_Balanco = class(TFcad_Pai)
    Panel1: TPanel;
    cxLabel6: TcxLabel;
    eCodProd: TcxButtonEdit;
    eProduto: TcxTextEdit;
    eUn: TcxTextEdit;
    cxLabel3: TcxLabel;
    eEstoque: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    eContagem: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    eRef: TcxTextEdit;
    ecodProduto: TcxTextEdit;
    dsBal: TDataSource;
    grDadosBalanco: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    RxBal: TClientDataSet;
    RxBalIDPROD: TIntegerField;
    RxBalNOMEPROD: TStringField;
    RxBalREFPROD: TStringField;
    RxBalUNPROD: TStringField;
    RxBalESTOQUETOTAL: TFloatField;
    RxBalESTOQUECONT: TFloatField;
    RxBalESTOQUEDIF: TFloatField;
    Contagem1: TMenuItem;
    Diferen1: TMenuItem;
    UCControls1: TUCControls;
    procedure eContagemExit(Sender: TObject);
    procedure eCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodProdExit(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxOpcoesClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure Contagem1Click(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Diferen1Click(Sender: TObject);
  private
    indice : String;
    procedure Limpa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Balanco: TFcad_Balanco;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uPrinc, uCad_Produto, uRotinaDeEstoque;

procedure TFcad_Balanco.Contagem1Click(Sender: TObject);
begin
   inherited;
   if (dmcad.qryBalanco.Active = false) or (dmcad.qryBalanco.RecordCount<=0) then
   begin
      Msg('Não há registros para sincronizar, verifique!!','I',':T');
      Abort;
   end;
   if dmcad.qryBalancoSTATUS.AsString = 'F' then
   begin
      Msg('Apenas sequenciais em aberto podem ser sincronizados!','I',':T');
      abort;
   end;


   if Msg('Olá! Informamos que para sincronizar o estoque por contagem é necessário zerar o estoque antes! Se o estoque ja foi zerado, deseja continuar?','P',':P') = false then
      Abort;

   ConsultaSql('SELECT * FROM BALANCO WHERE IDSEQ='+dmCad.qryBalanco.FieldByName('IDSEQ').AsString, dmCad.qryAux2);
   with dmcad.qryAux2 do
   begin
      while not dmcad.qryAux2.Eof do
      begin
         if Fieldbyname('ESTOQUECONT').AsFloat > 0 then
            Estoque(Fieldbyname('IDPROD').AsInteger,0, BALANCO, ENTRADA, Fieldbyname('IDSEQ').AsString, 'AJUSTE DE BALANÇO PELA CONTAGEM', 0, Fieldbyname('ESTOQUECONT').AsFloat) else
            Estoque(Fieldbyname('IDPROD').AsInteger,0, BALANCO, SAIDA  , Fieldbyname('IDSEQ').AsString, 'AJUSTE DE BALANÇO PELA CONTAGEM', 0, Fieldbyname('ESTOQUECONT').AsFloat);
         ///// Atualiza Balanço
         ExecutaSql('update balanco set STATUS='+QuotedStr('F')+' where IDBALANCO='+IntToStr(Fieldbyname('IDBALANCO').AsInteger),dmCad.qryAux);
         Next;
      end;
      try
         cxConsultaPropertiesChange(self);
         Msg('Estoque ajustado com sucesso, de acordo com a contagem!','I',':)');
      except
      end;
   end;
end;

procedure TFcad_Balanco.cxApagarClick(Sender: TObject);
begin
  inherited;
///// validação
   if (dmcad.qryBalanco.Active = false) or (dmcad.qryBalanco.RecordCount<=0) then
   begin
      Msg('Não há registros para apagar, verifique!','I',';)');
      Abort;
   end;
   if dmcad.qryBalanco.FieldByName('STATUS').AsString = 'F' then
   begin
      Msg('Este registro esta com status sincroniado, não podendo ser apagado!','I',';)');
      Abort;
   end;
   if  Msg('Você quer mesmo apagar este sequencial de contagem? É um processo irreversivel!','P',';)') = false then
      Abort;
/////
   dmcad.qryAux.Close;
   dmcad.qryAux.Sql.TExt := 'delete from BALANCO where IDSEQ='+QuotedStr(dmcad.qryBalanco.FieldByName('IDSEQ').AsString);
   try
      dmcad.qryAux.ExecSQL;

      FPrinc.UserControl1.Log('Apagado Sequencial de balanço Nº: '+dmcad.qryBalanco.FieldByName('IDSEQ').AsString,2);
      Msg('O Sequencial foi apagado com sucesso!','I',';)');
      dmcad.qryBalanco.Refresh;
   except
      dmcad.qryAux.Cancel;
   end;
end;

procedure TFcad_Balanco.cxCancelaClick(Sender: TObject);
begin
   inherited;
   rxBal.Close;
end;

procedure TFcad_Balanco.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDSEQ';
      1: indice := 'A.IDPROD';
      2: indice := 'REFPROD';
      3: indice := 'NOMEPROD';
   end;
   StrSql := ' select A.*, B.REFPROD, B.NOMEPROD from BALANCO A '+#13+
         ' LEFT JOIN PRODUTO B on A.IDPROD=B.IDPROD '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+' order by '+indice;

   ConsultaSql(StrSql, dmcad.qryBalanco);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryProd.RecordCount);
end;

procedure TFcad_Balanco.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
////// Lista GRID
   if AViewInfo.GridRecord.Selected then
   begin
      ACanvas.Brush.Color       := FCorSelec;
      ACanvas.Canvas.Font.Color := clBlack;
      //ACanvas.Canvas.Font.Style :=[fsBold];
   end
   else
   begin
      if AViewInfo.GridRecord.RecordIndex mod 2 = 0 then
         ACanvas.Brush.Color := clWindow
      else
         ACanvas.Brush.Color := FCorLista;
   end;
end;

procedure TFcad_Balanco.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if (MessageBox(0, 'Deseja apagar o último registro da contagem? ', 'Apagar? ', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   rxBal.Last;
   rxBal.Delete;
end;

procedure TFcad_Balanco.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
///// Padroniza
   RxBal.CreateDataSet;
   RxBal.Open;
   RxBal.EmptyDataSet;
   RxBal.Close;
   RxBal.Open;

   eCodPRod.SetFocus;
end;

procedure TFcad_Balanco.cxOpcoesClick(Sender: TObject);
begin
  inherited;
   if Msg('Você deseja realmente zerar o estoque fisíco dos produtos?','P',';)') then
   begin
      if Msg('Aconselhamos que seja feito Backup do banco de dados antes de continuar com esta transação, deseja continuar agora?','P',';D') then
      begin
         ////// Zera o estoque Pedido/Disponível
         ExecutaSql('UPDATE PRODUTO SET ESTOQUEDISP=0 WHERE ESTOQUEDISP IS NULL', dmCad.qryAux);

         ConsultaSql('SELECT * FROM PRODUTO WHERE IDPROD<>0', dmCad.qryAux);

         ///// usa cdsEstoque
         if dmcad.qryEstoque.Active = false then
            dmcad.qryEstoque.Open;

         ///// Começa a zerar o estoque dentro do While
         while not dmcad.qryAux.Eof do
         begin
            if (dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat <> 0) or (dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').IsNUll) then // Se ja for zero pula
            begin
               ///// Pega o Saldo Anterior
               StrSql := 'select SALDO from ESTOQUE where IDPROD=' + quotedstr(dmcad.qryAux.Fieldbyname('IDPROD').asString) +
                         ' AND IDESTOQUE =(select max(idestoque) from estoque where idprod=' + quotedstr(dmcad.qryAux.Fieldbyname('idprod').asString) + ')';
               ConsultaSql(StrSql, dmCAd.qryAux2);

               if dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat < 0 then
                  Estoque(dmcad.qryAux.Fieldbyname('IDPROD').AsInteger,
                           0,
                           BALANCO,
                           ENTRADA,
                           '',
                           'ESTOQUE ZERADO POR BALANÇO',
                           dmCad.qryAux.FieldByName('CUSTOTOTAL').AsFloat,
                           dmcad.qryAux.FieldbyName('ESTOQUETOTAL').asFloat);
               if dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat > 0 then
                  Estoque(dmcad.qryAux.Fieldbyname('IDPROD').AsInteger,
                           0,
                           BALANCO,
                           SAIDA,
                           '',
                           'ESTOQUE ZERADO POR BALANÇO',
                           dmCad.qryAux.FieldByName('CUSTOTOTAL').AsFloat,
                           dmcad.qryAux.FieldbyName('ESTOQUETOTAL').asFloat);

               dmcad.qryAux.NExt;
            end else // Se não tem estoque pula para outro
               dmcad.qryAUx.NExt;
         end;
         try // Tenta salvar os dados
            Msg('Estoque zerado com sucesso!', 'I',':)');
         except
            Msg('Não foi possível zerar o estoque, saia do sistema e tente novamente!', 'I',':(');
            dmcad.qryEstoque.CancelUpdates;
            Abort;
         end;
      end;
   end;

end;

procedure TFcad_Balanco.cxSalvarClick(Sender: TObject);
var
   intSeq: integer;
begin
   if rxBal.RecordCount<=0 then
   begin
      Msg('Não encontramos registros para salvar, verifique!','I',':P');
      abort;
   end;
   if Msg('Você quer mesmo fechar este sequencial de contagem? Estes dados não poderão mais serem alterados!','P',':}') then
   begin
      intSeq := ExecutaGen('SEQBALANCO');
   ///// Inicia a inserção do blaanco
      rxBal.First;
      while not rxBal.Eof do
      begin
         dmcad.qryBalanco.Insert;
         dmcad.qryBalanco.FieldByName('DATA').AsDateTIme        := Date+time;
         dmcad.qryBalanco.FieldByName('IDSEQ').AsInteger        := intSeq; // Padrão
         dmcad.qryBalanco.FieldByName('IDPROD').asInteger       := rxBalIDPROD.Asinteger;
         dmcad.qryBalanco.FieldByName('STATUS').AsString        := 'A';
         dmcad.qryBalanco.FieldByName('ESTOQUETOTAL').AsFloat   := rxBalESTOQUETOTAL.ASFLoat;
         dmcad.qryBalanco.FieldByName('ESTOQUECONT').ASFloat    := rxBalESTOQUECONT.ASFLoat;
         dmcad.qryBalanco.FieldByName('ESTOQUEDIF').ASFloat     := rxBalESTOQUEDIF.ASFLoat;
         dmcad.qryBalanco.Post;
         rxBal.Next;
      end;
      try
         dmcad.qryBalanco.ApplyUpdates(0);
         FPrinc.UserControl1.Log('Balanço Concluído no Sequencial Nº:' + IntTOStr(intSeq), 2);
         rxBal.Close;
         inherited;
         eCOnsulta.SetFocus;
      except
         dmcad.qryBalanco.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Balanco.Diferen1Click(Sender: TObject);
begin
   inherited;
   if (dmcad.qryBalanco.Active = false) or (dmcad.qryBalanco.RecordCount<=0) then
   begin
      Msg('Não há registros para sincronizar, verifique!!','I',':T');
      Abort;
   end;
   if dmcad.qryBalancoSTATUS.AsString = 'F' then
   begin
      Msg('Apenas sequenciais em aberto podem ser sincronizados!','I',':T');
      abort;
   end;

   ConsultaSql('SELECT * FROM BALANCO WHERE IDSEQ='+dmCad.qryBalancoIDSEQ.AsString,dmCad.qryAux2);
   with dmCad.qryAux2 do
   begin
      while not dmcad.qryAux2.Eof do
      begin
         if Fieldbyname('ESTOQUEDIF').AsFloat > 0 then
            Estoque(Fieldbyname('IDPROD').AsInteger,0, BALANCO, ENTRADA, Fieldbyname('IDSEQ').AsString, 'AJUSTE DE BALANÇO PELA DIFERENÇA', 0, Fieldbyname('ESTOQUEDIF').AsFloat) else
            Estoque(Fieldbyname('IDPROD').AsInteger,0, BALANCO, SAIDA  , Fieldbyname('IDSEQ').AsString, 'AJUSTE DE BALANÇO PELA DIFERENÇA', 0, Fieldbyname('ESTOQUEDIF').AsFloat*-1);

         ExecutaSql('update balanco set STATUS='+QuotedStr('F')+' where IDBALANCO='+IntToStr(Fieldbyname('IDBALANCO').AsInteger),dmCad.qryAux);
         Next;
      end;
      try
         cxConsultaPropertiesChange(self);
         Msg('Estoque ajustado com sucesso, de acordo com a diferença!','I',':)');
      except
      end;
   end;
end;

procedure TFcad_Balanco.eCodProdExit(Sender: TObject);
begin
   inherited;
     if eCodProd.TExt <> '0' then
   begin
      eCodProduto.Text := ConsultaProduto(eCodProd.Text);

      if eCodProduto.Text ='0' then
      begin
         Limpa;
         eCodProd.Text := '0';
         eProduto.Text := 'NENHUM';
         eCodProd.Properties.OnButtonClick(Sender,0);
         eCodProduto.Text := ConsultaProduto(eCodProd.Text);
         if ecOdProduto.Text ='0' then
            MSg('Não encontramos o produto que esta indicando, verifique e tente novamente!','I',':O');
      end;

      eCodProduto.TExt  := dmcad.qryAux.Fieldbyname('IDPROD').asString;
      eProduto.TExt     := dmCad.qryAux.Fieldbyname('NOMEPROD').asString;
      eUn. text         := dmCad.qryAux.Fieldbyname('UNPROD').asString;
      eEstoque.Value    := dmCad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFLoat;
      eRef.TExt         := dmCad.qryAux.Fieldbyname('REFPROD').asString;
   end;
end;

procedure TFcad_Balanco.eCodProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   AbreTelaComShowModal(TFcad_Produto, TObject(Fcad_Produto), Fcad_Balanco, 'PRODUTO');

   if ID > 0 then
   begin
      eCodProd.Text   := intToStr(ID);
      eProduto.Text   := DESCRICAO;
   end;
end;

procedure TFcad_Balanco.eContagemExit(Sender: TObject);
begin
   inherited;
   if ecodPRod.TExt='0' then
   begin
      eCodPRod.SetFOcus;
      Abort;
   end;
   if (eContagem.Value <=0) then
   begin
      MessageDlg('Preencha o valor da contagem!', mtWarning, [mbOK], 0);
      Abort;
   end;

///// Inicia Balanço
   rxBal.Append;
   rxBalIDPROD.Asinteger     := StrToInt(eCodProduto.Text);
   RxBalNOMEPROD.AsString    := eProduto.Text;
   RxBalUNPROD.AsString          := eUn.Text;
   rxBalREFPROD.AsString     := eRef.Text;
   rxBalESTOQUETOTAL.AsFloat := eEstoque.Value;
   rxBalESTOQUECONT.ASFloat  := eContagem.Value;
   rxBalESTOQUEDIF.AsFloat   := (eContagem.Value - eEstoque.Value);
   rxBal.Post;
/////
   Limpa;
   eCodPRod.SetFOcus;
end;

procedure TFcad_Balanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_Balanco     := Nil;
   Action           := CaFree;
end;

procedure TFcad_Balanco.FormShow(Sender: TObject);
begin
  inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Balanco.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   inherited;
   if (AViewInfo.Item.Index = grConsultaDBTableView1Campo1.Index) then
   begin
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo1.Index] = 'F') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end else
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end;
   end;
end;

Procedure TFcad_Balanco.Limpa;
Begin
   eCodpRoduto.Text  := '0';
   eCodProd.Text     := '0';
   eProduto.TExt     := 'NENHUM';
   eUn.Text          := 'UN';
   eRef.Clear;
   eEstoque.Value    := 0;
   eContagem.VaLue   := 1;

End;

end.
