unit uCad_Pedido;

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
  cxNavigator, Data.DB, cxDBData, RxMenus, dxGDIPlusClasses, cxImage,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxButtonEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, cxCurrencyEdit, cxPCdxBarPopupMenu, cxPC,
  cxMemo;

type
  TFcad_Pedido = class(TFcad_Pai)
    cxLabel10: TcxLabel;
    eCodVend: TcxButtonEdit;
    eVendedor: TcxTextEdit;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    pnTopo: TPanel;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel14: TcxLabel;
    eDataPedido: TcxDateEdit;
    cxLabel4: TcxLabel;
    eCodFornec: TcxButtonEdit;
    eFornec: TcxTextEdit;
    cxLabel5: TcxLabel;
    eCodVendPedido: TcxButtonEdit;
    eVEndedorPedido: TcxTextEdit;
    eStatusPed: TcxTextEdit;
    cxLabel6: TcxLabel;
    eTotalItens: TcxCurrencyEdit;
    cxLabel32: TcxLabel;
    cxLabel7: TcxLabel;
    eTotalPedido: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    ePerDesc: TcxCurrencyEdit;
    eVlrDesc: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    eQtdeItens: TcxCurrencyEdit;
    cxPageControl1: TcxPageControl;
    cxPageItem: TcxTabSheet;
    pnItem: TPanel;
    cxPageDados: TcxTabSheet;
    cxTipoPedido: TcxComboBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    eDataValidade: TcxDateEdit;
    cxLabel15: TcxLabel;
    eCodProd: TcxButtonEdit;
    eProduto: TcxTextEdit;
    pnFotoCon: TPanel;
    cxFotoProd: TcxImage;
    eQtde: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    ePrecoVenda: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    eTotalItem: TcxCurrencyEdit;
    cxSalvarItem: TcxButton;
    cxApagarItem: TcxButton;
    cxLabel19: TcxLabel;
    eCodCPagto: TcxButtonEdit;
    eCPagto: TcxTextEdit;
    cxLabel20: TcxLabel;
    eDataEntrega: TcxDateEdit;
    eUn: TcxTextEdit;
    eMarca: TcxTextEdit;
    eNcm: TcxTextEdit;
    cxLabel21: TcxLabel;
    eCodTransp: TcxButtonEdit;
    eTransportadora: TcxTextEdit;
    cxLabel22: TcxLabel;
    eVlrFrete: TcxCurrencyEdit;
    eObs: TcxMemo;
    cxLabel23: TcxLabel;
    cxGrid1: TcxGrid;
    grConsultaItem: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    grConsultaItemColumn1: TcxGridDBColumn;
    grConsultaItemColumn2: TcxGridDBColumn;
    grConsultaItemColumn3: TcxGridDBColumn;
    grConsultaItemColumn4: TcxGridDBColumn;
    grConsultaItemColumn5: TcxGridDBColumn;
    eValidadeProd: TcxDateEdit;
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure eCodVendPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCodVendExit(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eCodVendKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure eCodFornecExit(Sender: TObject);
    procedure eCodFornecPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodVendPedidoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodVendPedidoExit(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure eCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodProdExit(Sender: TObject);
    procedure eDataPedidoExit(Sender: TObject);
    procedure eDataValidadeExit(Sender: TObject);
    procedure eDataEntregaExit(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    Procedure Limpa;
    Procedure Edita;
    procedure ConsultaItemPedido(intPedido: integer);
    procedure LimpaItem;
    procedure ABrePEdido;
  public
    { Public declarations }
  end;


var
  Fcad_Pedido: TFcad_Pedido;

implementation

{$R *.dfm}

uses uRotinas, udmMov, uCad_Clientes, uDmCad, uCad_Produto;

procedure TFcad_Pedido.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         ConsultaItemPedido(dmMov.qryItemPed.FieldByName('IDPEDIDOITEM').AsInteger);
         while not dmMov.qryItemPed.Eof do
         begin
            dmMov.qryItemPed.Delete;
         end;
         dmMov.qryItemPed.Delete;
         dmMov.qryPedido.ApplyUpdates(0);
         dmMov.qryPedido.ApplyUpdates(0);
      Except
         dmMov.qryItemPed.CancelUpdates;
         dmMov.qryPedido.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Pedido.cxCancelaClick(Sender: TObject);
begin
   inherited;
   dmMov.qryPedido.CancelUpdates;
   dmMov.qryItemPed.CancelUpdates;
end;

procedure TFcad_Pedido.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDPEDIDO';
      1: indice := 'NOMECLIE';
      2: indice := 'DATAPEDIDO';
      3: indice := 'DATAENTREGA';
   end;
   StrSql := 'select A.*, '+#13+
   ' B.ENDERECO, '+#13+
   ' B.NUMERO, '+#13+
   ' B.BAIRRO, '+#13+
   ' B.CEP, '+#13+
   ' C.RAZAO NOMEVENDEDOR, '+#13+
   ' D.RAZAO NOMETRANSP, '+#13+
   ' E.DESCRICAO FCOBRANCA '+#13+
   ' From PEDIDO A '+#13+
   ' left join CLIENTE B on A.IDCLIE = B.IDCLIE and B.tipoclie='+QuotedStr('CLI')+#13+
   ' left join CLIENTE C on A.IDVENDEDOR = C.IDCLIE and C.TIPOCLIE='+QuotedStr('VEND')+#13+
   ' left join CLIENTE D on A.idtransp = D.IDCLIE and D.TIPOCLIE='+QuotedStr('TRAN')+#13+
   ' left join CPAGTO E on A.IDCPAGTO = E.idCPAGTO ' +#13+
   ' where 1=1 and TIPOPEDIDO='+QuotedStr(ifs(TipoMov = ENTRADA, 'ENTRADA ', 'SAIDA '));

   if (indice='DATAPEDIDO') or (indice ='DATAENTREGA') then
      StrSql := StrSQl +' and '+indice+' = '+QuotedStr(DataSql(StrToDate(eConsulta.Text)) + ' 00:00:00');


   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmMov.qryPedido);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmMov.qryPedido.RecordCount);
end;

procedure TFcad_Pedido.cxEditaClick(Sender: TObject);
begin
   if dmMov.qryPedido.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;
   Limpa;
   Edita;
   eCodFornec.SetFocus;
end;

procedure TFcad_Pedido.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   eCodFornec.SetFocus;
end;

procedure TFcad_Pedido.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Pedido);

   with dmMov.qryPedido do
   begin
      try

{         FieldByName('NOMEPROD').AsString           := eNomeProd.Text;
         FieldByName('REFPROD').AsString            := eRefProd.Text;
         FieldByName('MARCAPROD').AsString          := eMarca.Text;
         FieldByName('IDGRUPO').AsInteger           := StrToInt(eCodGrupo.Text);
         FieldByName('IDFORNEC').AsInteger          := StrToInt(eCodFornec.Text);
         FieldByName('IDSUBGRUPO').AsInteger        := StrToInt(eCodSub.Text);
         FieldByName('IDLOCAL').AsInteger           := StrToInt(eCodLocal.Text);

         FieldByName('ESTOQUEDISP').AsFloat         := eEstoqueDisp.Value;
         FieldByName('ESTOQUETOTAL').AsFloat        := eEstoqueTotal.Value;
         FieldByName('ESTOQUEMIN').AsFloat          := eQtdeMin.Value;
         FieldByName('ESTOQUEMAX').AsFloat          := eQtdeMax.Value;
         FieldByName('DTCADASTRO').AsDateTIme       := eDtCad.Date + Time;
         if eDtValidade.Text <> '' then
            FieldByName('DTVALIDADE').AsDateTime    := eDtValidade.Date;
         FieldByName('PESOBRUTO').AsFloat           := ePesoB.Value;
         FieldByName('PESOLIQ').AsFloat             := ePesoL.Value;
         FieldByName('ATIVOPROD').AsString          := ifs(eAtivo.Checked, 'S', 'N');
         FieldByName('UNPROD').AsString             := eUn.Text;
         FieldByName('FOTOPROD').AsString           := eFOto.Text;
         Fieldbyname('NCMPROD').AsString            := eNcm.Text;

         Fieldbyname('PRECOCOMRPA').AsFloat         := ePrecoCpr.Value;
         Fieldbyname('CUSTOCOMPRA').AsFloat         := eCustoCpr.Value;
         Fieldbyname('CUSTOTOTAL').AsFloat          := eCustoProd.Value;
         Fieldbyname('MARGEMLUCRO').AsFloat         := eMl.Value;
         Fieldbyname('PRECOVENDA').AsFloat          := ePrecoVenda.Value;
         Fieldbyname('PERCCOMISSAO').AsFloat        := eComissao.Value;

         Fieldbyname('DTATUALIZADO').AsDateTime     := eDtAtualizado.Date+Time;
//         Fieldbyname('CODBAR').AsString             := eObs.Text;
         Fieldbyname('OBS').AsString                := eObs.Lines.Text;}

         Post;
         ApplyUpdates(0);
         dmMov.qryItemPed.ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
         dmMov.qryItemPed.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Pedido.cxVerClick(Sender: TObject);
begin
   cxEditaClick(self);
   inherited;
end;

procedure TFcad_Pedido.eCodFornecExit(Sender: TObject);
begin
  inherited;
   eFornec.Text :=  ConsultaCampoNomeAtivo(eCodFornec.Text, '0');
   if eFornec.Text ='NENHUM' then
      eCodFornec.Text := '0';
end;

procedure TFcad_Pedido.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, 'CLIENTE');

   if ID > 0 then
   begin
      eFornec.Text := DESCRICAO;
      eCodFornec.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eCodProdExit(Sender: TObject);
begin
  inherited;
   if eCodProd.TExt <> '0' then
   begin
      eCodProd.Text      := ConsultaProduto(eCodProd.Text);

      if eCodProd.Text ='0' then
      begin
         Limpa;
         eCodProd.Text   := '0';
         eProduto.Text   := 'NENHUM';
         eCodProd.Properties.OnButtonClick(Sender,0);
         eCodProd.Text   := ConsultaProduto(eCodProd.Text);
         if ecOdProd.Text ='0' then
            MSg('Não encontramos o produto que esta indicando, verifique e tente novamente!','I',':O');
      end;

      eCodProd.TExt      := dmcad.qryAux.Fieldbyname('IDPROD').asString;
      eProduto.TExt      := dmCad.qryAux.Fieldbyname('NOMEPROD').asString;
      eUn. text          := dmCad.qryAux.Fieldbyname('UNPROD').asString;
      eMarca.TExt        := dmCad.qryAux.Fieldbyname('MARCAPROD').AsString;
      eNcm.TExt          := dmCad.qryAux.Fieldbyname('NCMPROD').asString;
      eValidadeProd.Date := dmcad.qryAux.FieldByName('DTVALIDADE').AsDateTime;
   end;
end;

procedure TFcad_Pedido.eCodProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   AbreTelaComShowModal(TFcad_Produto, TObject(Fcad_Produto), Fcad_Pedido, '');

   if ID > 0 then
   begin
      eProduto.Text := DESCRICAO;
      eCodProd.Text := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eCodVendExit(Sender: TObject);
begin
  inherited;
   eVEndedor.Text :=  ConsultaCampoNomeAtivo(eCodVend.Text, 'VENDEDOR');
   if eVEndedor.Text ='NENHUM' then
      eCodVend.Text := '0';
end;

procedure TFcad_Pedido.eCodVendKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Pedido.eCodVendPedidoExit(Sender: TObject);
begin
  inherited;
   eVEndedorPedido.Text :=  ConsultaCampoNomeAtivo(eCodVendPedido.Text, 'VENDEDOR');
   if eVEndedorPedido.Text ='NENHUM' then
      eCodVendPedido.Text := '0';
   AbrePEdido;
end;

procedure TFcad_Pedido.eCodVendPedidoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, '2');

   if ID > 0 then
   begin
      eVEndedorPedido.Text := DESCRICAO;
      eCodVendPedido.Text  := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eCodVendPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, '2');

   if ID > 0 then
   begin
      eVEndedor.Text := DESCRICAO;
      eCodVend.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eDataEntregaExit(Sender: TObject);
begin
  inherited;
   ValidaData(eDataEntrega.Text);
end;

procedure TFcad_Pedido.eDataPedidoExit(Sender: TObject);
begin
   inherited;
   ValidaData(eDataPedido.Text);
end;

procedure TFcad_Pedido.eDataValidadeExit(Sender: TObject);
begin
  inherited;
   ValidaData(eDataValidade.Text);
end;

procedure TFcad_Pedido.Edita;
begin
   //
end;

procedure TFcad_Pedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_Pedido     := Nil;
   Action           := CaFree;
end;

procedure TFcad_Pedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmMov.qryPedido.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmMov.qryPedido.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmMov.qryPedido.RecordCount);
end;

procedure TFcad_Pedido.FormShow(Sender: TObject);
begin
  inherited;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Pedido.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   if (AViewInfo.Item.Index = grConsultaDBTableView1Campo2.Index) then
   begin
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo2.Index] = 'ABERTO') then
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo2.Index] = 'PARCIAL') then
      begin
         ACanvas.Canvas.Brush.Color := clYellow;
         ACanvas.Canvas.Font.Color  := clYellow;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo2.Index] = 'ATENDIDO') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end else
      if (AViewInfo.GridRecord.Values[grConsultaDBTableView1Campo2.Index] = 'ABERTO') then
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end else
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end;
   end;
end;

procedure TFcad_Pedido.Limpa;
begin
   eCodigo.Text           := '0';
   eStatusPed.Clear;
   eCodFornec.Text        := '0';
   eFornec.TExt           := 'NENHUM';
   eCodVEndPedido.Text    := '0';
   eVEndedorPedido.Text   := 'NENHUM';
   eCodCPagto.Text        := '0';
   eCPagto.Text           := 'NENHUM';
   eDataValidade.Date     := DAte;
   eDataEntrega.Date      := DAte;
   eDataPedido.Date       := DAte;
   cxTipoPedido.ItemIndex := 0;
   eQtdeItens.Value       := 0;
   eTotalItens.Value      := 0;
   eTotalPedido.Value     := 0;
   ePerDesc.Value         := 0;
   eVlrDesc.Value         := 0;

   eVlrFrete.Value        := 0;
   eObs.Lines.Clear;
   eCodTransp.Text        := '0';
   eTransportadora.Text   := 'NENHUM';
   pnItem.Enabled         := False;
end;

procedure TFCad_Pedido.LimpaItem;
begin
   eCodProd.Text     := '0';
   eProduto.Text     := 'NENHUM';
   eUn.CLear;
   eMarca.CLear;
   eNcm.Clear;
   eQtde.Value       := 0;
   ePRecoVEnda.Value := 0;
   eTotalItem.Value  := 0;
end;

procedure TFcad_Pedido.ConsultaItemPedido(intPedido: integer);
begin
   ConsultaSql('SELECT * FROM PEDIDOITEM WHERE IDPEDIDOITEM='+intToStr(intPedido)+' order by IDPEDIDOITEM', dmMov.qryItemPed);
end;

procedure TFcad_Pedido.ABrePEdido;
begin
   dmMov.qryPedido.Insert;
   eCodigo.Text   := dmMov.qryPedido.FieldByName('IDPEDIDO').AsString;
   pnItem.Enabled := True;
end;

end.
