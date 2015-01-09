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
  Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider;

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
  private
    procedure Limpa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Balanco: TFcad_Balanco;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uPrinc, uCad_Produto;

procedure TFcad_Balanco.cxCancelaClick(Sender: TObject);
begin
   inherited;
   rxBal.Close;
end;

procedure TFcad_Balanco.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   inherited;
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
   rxBal.Close;
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
         if not dmcad.qryEstoque.Active = false then
            dmcad.qryEstoque.Open;

         ///// Começa a zerar o estoque dentro do While
         while not dmcad.qryAux.Eof do
         begin
            if dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat <> 0 then // Se ja for zero pula
            begin
               ///// Pega o Saldo Anterior
               StrSql := 'select SALDO from ESTOQUE where IDPROD=' + quotedstr(dmcad.qryAux.Fieldbyname('IDPROD').asString) +
                         ' AND IDESTOQUE =(select max(idestoque) from estoque where idprod=' + quotedstr(dmcad.qryAux.Fieldbyname('idprod').asString) + ')';
               ExecutaSql(StrSql, dmCAd.qryAux2);

               ///// Insere o registro de movimentação de estoque
               dmcad.qryEstoque.Insert;
               dmcad.qryEstoque.FieldByName('IDPROD').AsString     := dmcad.qryAux.Fieldbyname('IDPROD').asString;
               dmcad.qryEstoque.FieldByName('ORIGEM').AsString     := 'BALANÇO';
               dmcad.qryEstoque.FieldByName('DOCUMENTO').AsString  := '';
               dmcad.qryEstoque.FieldByName('USUARIO').AsString    := FPrinc. UserControl1.CurrentUser.UserName;
               dmcad.qryEstoque.FieldByName('DESCRICAO').AsString  := 'ESTOQUE ZERADO POR BALANÇO';
               dmcad.qryEstoque.FieldByName('DATA').AsDateTime     := Date + Time;
               ///// Verifica o tipo de estoque encontrato
               if dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat < 0 then // Se maior que zero
               begin
                  dmcad.qryEstoque.FieldByName('ENTRADA').AsFloat := dmcad.qryAux.FieldbyName('ESTOQUETOTAL').asFloat * -1;
                  dmcad.qryEstoque.FieldByName('SAIDA').AsFloat := 0;
               end;
               if dmcad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFloat > 0 then // Se menor
               begin
                  dmcad.qryEstoque.FieldByName('ENTRADA').AsFloat := 0;
                  dmcad.qryEstoque.FieldByName('SAIDA').AsFloat := dmcad.qryAux.FieldbyName('ESTOQUETOTAL').asFloat;
               end;
               dmcad.qryEstoque.FieldByName('SALDO').aSFloat       := dmcad.qryAux2.Fieldbyname('SALDO').asFloat + (dmcad.qryEstoque.FieldByName('ENTRADA').AsFloat - dmcad.qryEstoque.FieldByName('SAIDA').AsFloat);
               dmCad.qryEstoque.Post;
               ///// Após ter ajustado muda o registro
               dmcad.qryAux.NExt;
            end else // Se não tem estoque pula para outro
               dmcad.qryAUx.NExt;
         end;
         try // Tenta salvar os dados
            dmcad.qryEstoque.ApplyUpdates(0);
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
      MessageDlg('Não foram inseridos dados, verifique!', mtWarning, [mbOK], 0);
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
         inherited;
         eCOnsulta.SetFocus;
      except
         dmcad.qryBalanco.CancelUpdates;
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
   Fcad_Produto     := Nil;
   Action           := CaFree;
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
