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
  cxMemo, FireDAC.Comp.Client;

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
    cxPageItens: TcxPageControl;
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
    eReferencia: TcxTextEdit;
    cxLabel24: TcxLabel;
    eDescItem: TcxCurrencyEdit;
    grConsultaDBTableView1Column9: TcxGridDBColumn;
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
    procedure cxSalvarItemClick(Sender: TObject);
    procedure eCodCPagtoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodCPagtoExit(Sender: TObject);
    procedure eQtdeExit(Sender: TObject);
    procedure ePerDescExit(Sender: TObject);
    procedure cxApagarItemClick(Sender: TObject);
    procedure eVlrDescExit(Sender: TObject);
    procedure eVlrFreteExit(Sender: TObject);
    procedure eCodTranspExit(Sender: TObject);
    procedure eCodTranspPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTipoPedidoExit(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    Procedure Limpa;
    Procedure Edita;
    procedure ConsultaItemPedido(intPedido: integer);
    procedure LimpaItem;
    procedure ABrePEdido;
    procedure VerFoto(StrCaminhoFoto: String);
    procedure CalculaTotalPedido;
    procedure CalculaTotalItens;
  public
    { Public declarations }
  end;


var
  Fcad_Pedido: TFcad_Pedido;

implementation

{$R *.dfm}

uses uRotinas, udmMov, uCad_Clientes, uDmCad, uCad_Produto, uCad_Pagto,
  uCalculosMovimentacao, uConsultaDadosCliente;

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

procedure TFcad_Pedido.cxApagarItemClick(Sender: TObject);
begin
   inherited;
   dmMov.qryItemPed.Delete;
   CalculaTotalPedido;
end;

procedure TFcad_Pedido.cxCancelaClick(Sender: TObject);
begin
   inherited;
   dmMov.qryPedido.Cancel;
   dmMov.qryItemPed.Cancel;
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
      ' B.RAZAO NOMECLIE, '+#13+
      ' B.ENDERECO, '+#13+
      ' B.NUMERO, '+#13+
      ' B.BAIRRO, '+#13+
      ' B.CEP, '+#13+
      ' C.RAZAO NOMEVEND, '+#13+
      ' D.RAZAO NOMETRANS, '+#13+
      ' E.DESCRICAO '+#13+
      ' From PEDIDO A '+#13+
      ' left join CLIENTE B on A.IDCLIE = B.IDCLIE and B.tipoclie='+QuotedStr('CLI')+#13+
      ' left join CLIENTE C on A.IDVENDEDOR = C.IDCLIE and C.TIPOCLIE='+QuotedStr('VEN')+#13+
      ' left join CLIENTE D on A.idtransp = D.IDCLIE and D.TIPOCLIE='+QuotedStr('TRA')+#13+
      ' left join CPAGTO E on A.IDCPAGTO = E.IDCPAGTO' +
      ' where 1=1 and TIPOMOV='+QuotedStr(ifs(TipoMov = ENTRADA, 'ENT', 'SAI'));

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
   LimpaItem;
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
   if (eCodFornec.Text = '0') or
      (eCodVendPedido.Text = '0') or
      (eCodCPagto.Text = '0') or
      (eTotalPedido.Value <=0) then
   begin
      Msg('Há campos á serem preenchidos, verifique!','I',':|');
      abort;
   end;


   with dmMov.qryPedido do
   begin
      try

         FieldByName('TIPOMOV').AsString           := ifs(TipoMov = ENTRADA,'ENT','SAI');
         FieldByName('IDCLIE').AsInteger           := StrToInt(eCodFornec.Text);

         FieldByName('IDVENDEDOR').AsInteger       := StrToInt(eCodVendPedido.Text);
         FieldByName('IDTRANSP').AsInteger         := StrToInt(eCodTransp.Text);
         FieldByName('IDCPAGTO').AsInteger         := StrToInt(eCodCPagto.Text);

         FieldByName('DATAPEDIDO').AsDateTime      := eDataPedido.Date;
         FieldByName('DATAVALIDADE').AsDateTime    := eDataValidade.Date;
         FieldByName('DATAENTREGA').AsDateTime     := eDataEntrega.Date;

         FieldByName('TIPOPEDIDO').AsString        := ifs(cxTipoPedido.ItemIndex = 0,'ORÇAMENTO','PEDIDO');

         FieldByName('STATUS').AsString            := eStatusPed.Text;
         FieldByName('OBS').AsString               := eObs.Lines.Text;
         FieldByName('MOTIVOCAN').AsString         := '';


         FieldByName('QTDEITENS').AsFloat          := eQtdeItens.Value;
         FieldByName('TOTALITENS').AsFloat         := eTotalItens.Value;
         FieldByName('TOTALDESC').AsFloat          := eVlrDesc.Value;
         FieldByName('TOTALFRETE').AsFloat         := eVlrFrete.Value;
         FieldByName('TOTALPEDIDO').AsFloat        := eTotalPedido.Value;

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

procedure TFcad_Pedido.cxSalvarItemClick(Sender: TObject);
begin
  inherited;
   if (eCodProd.Text='0') or
      (eQtde.Value = 0) or
      (ePrecoVEnda.Value = 0) then
   begin
      Msg('Há dados do item em branco, verifique!','I',':T');
      eCodProd.SetFocus;
      abort;
   end;

   with dmMov.qryItemPed do
   begin
      Insert;
      FieldByName('IDPEDIDO').AsInteger      := StrToInt(ecodigo.Text);
      FieldByName('IDPROD').AsInteger        := StrToInt(eCodProd.Text);

      FieldByName('NOMEPROD').AsString       := eProduto.Text;
      FieldByName('UNPROD').AsString         := eUn.Text;
      FieldByName('REFPROD').AsString        := eReferencia.Text;

      FieldByName('QTDE').AsFloat            := eQtde.Value;
      FieldByName('VLRUNITARIO').AsFloat     := ePrecoVenda.Value;
      FieldByName('VLRDESCONTO').AsFloat     := eDescItem.Value;
      FieldByName('VLRTOTALITEM').AsFloat    := eTotalItem.Value;
      FieldByName('OBSITEM').AsString        := '';
      FieldByName('DATAVALIDADE').AsDAteTIme := eValidadeProd.Date;
      FieldByName('SALDOQTDE').AsFloat       := eQtde.Value;
      FieldByName('STATUSITEM').AsString     := 'ABERTO';
      post;
   end;
   CalculaTotalPedido;
   LimpaItem;
   eCodProd.SetFocus;
end;

procedure TFcad_Pedido.cxTipoPedidoExit(Sender: TObject);
begin
   inherited;

   if dm.qr_orcamentoTIPOORCAMENTO.AsString = 'ORCAMENTO' then
          if (Application.MessageBox('Deseja realmente alterar este orçamento para pedido? É uma opção irreversivel!', 'Aviso Importante', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes) then
            OrcamentoParaPedido else
            cbTipo.Itemindex := 0;
end;

procedure TFcad_Pedido.cxVerClick(Sender: TObject);
begin
   cxEditaClick(self);
   inherited;
end;

procedure TFcad_Pedido.eCodCPagtoExit(Sender: TObject);
begin
  inherited;
   eCPagto.Text :=  ConsultaCampoNomeAtivo(eCodCPagto.Text, 'CPAGTO');
   if eCPagto.Text ='NENHUM' then
      eCodCPagto.Text := '0';

   if (eCodigo.Text = '0') then
      AbrePEdido;
end;

procedure TFcad_Pedido.eCodCPagtoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Pagto, TObject(Fcad_Pagto), Fcad_Pedido, '');

   if ID > 0 then
   begin
      eCPagto.Text     := DESCRICAO;
      eCodCPagto.Text  := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eCodFornecExit(Sender: TObject);
begin
  inherited;
   eFornec.Text :=  ConsultaCampoNomeAtivo(eCodFornec.Text, 'CLI');
   eFornec.Text := VerificaDadoDoCliente(eCOdFOrnec.TExt);

   if (eFornec.Text ='NENHUM') then
      eCodFornec.Text := '0' else
end;

procedure TFcad_Pedido.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, 'CLI');

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
         LimpaItem;
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
      eReferencia.Text   := dmCad.qryAux.FieldByName('REFPROD').AsString;
      eValidadeProd.Date := dmcad.qryAux.FieldByName('DTVALIDADE').AsDateTime;
      ePrecoVEnda.Value  := dmcad.qryAux.FieldByName('PRECOVENDA').AsFloat;
      VerFoto(dmcad.qryAux.FieldByName('FOTOPROD').AsString);
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

procedure TFcad_Pedido.eCodTranspExit(Sender: TObject);
begin
  inherited;
   eTransportadora.Text :=  ConsultaCampoNomeAtivo(eCodTransp.Text, 'TRA');
   if eTransportadora.Text ='NENHUM' then
      eCodTransp.Text := '0';
end;

procedure TFcad_Pedido.eCodTranspPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, 'TRA');

   if ID > 0 then
   begin
      eTransportadora.Text := DESCRICAO;
      eCodTransp.Text      := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eCodVendExit(Sender: TObject);
begin
  inherited;
   eVEndedor.Text :=  ConsultaCampoNomeAtivo(eCodVend.Text, 'VEN');
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
   eVEndedorPedido.Text :=  ConsultaCampoNomeAtivo(eCodVendPedido.Text, 'VEN');
   if eVEndedorPedido.Text ='NENHUM' then
      eCodVendPedido.Text := '0';
end;

procedure TFcad_Pedido.eCodVendPedidoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, 'VEN');

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
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Pedido, 'VEN');

   if ID > 0 then
   begin
      eVEndedor.Text := DESCRICAO;
      eCodVend.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Pedido.eDataEntregaExit(Sender: TObject);
begin
  inherited;
   DATAVALIDA(eDataEntrega.Text);
end;

procedure TFcad_Pedido.eDataPedidoExit(Sender: TObject);
begin
   inherited;
   eDataPedido.Text := DATAVALIDA(eDataPedido.Text);

end;

procedure TFcad_Pedido.eDataValidadeExit(Sender: TObject);
begin
  inherited;
   DATAVALIDA(eDataValidade.Text);
end;

procedure TFcad_Pedido.Edita;
begin
   with dmMov.qryPedido do
   begin
      try
         eCodigo.Text           := IntToStr(FieldByName('IDPEDIDO').AsInteger);
         eCodFornec.Text        := IntToStr(FieldByName('IDCLIE').AsInteger);
         eCodFornecExit(self);
         eCodVendPedido.Text    := IntToStr(FieldByName('IDVENDEDOR').AsInteger);
         eCodVendPedidoExit(Self);
         eCodTransp.Text        := IntToStr(FieldByName('IDTRANSP').AsInteger);
         eCodTranspExit(Self);
         eCodCPagto.Text        := IntToStr(FieldByName('IDCPAGTO').AsInteger);
         eCodCPagtoExit(Self);

         eDataPedido.Date       := FieldByName('DATAPEDIDO').AsDateTime;
         eDataValidade.Date     := FieldByName('DATAVALIDADE').AsDateTime;
         eDataEntrega.Date      := FieldByName('DATAENTREGA').AsFloat;

         cxTipoPedido.ItemIndex := ifs(FieldByName('TIPOPEDIDO').AsString='ORÇAMENTO',0,1);

         eStatusPed.Text        := FieldByName('STATUS').AsString;
         eObs.Lines.Text        := FieldByName('OBS').AsString;

         eQtdeItens.Value       := FieldByName('QTDEITENS').AsFloat;
         eTotalItens.Value      := FieldByName('TOTALITENS').AsFloat;
         eVlrDesc.Value         := FieldByName('TOTALDESC').AsFloat;
         eVlrFrete.Value        := FieldByName('TOTALFRETE').AsFloat;
         eTotalPedido.Value     := FieldByName('TOTALPEDIDO').AsFloat;
         Edit;
         ConsultaItemPedido(StrToInt(eCodigo.Text));
      Except

      end;
   end;
end;

procedure TFcad_Pedido.ePerDescExit(Sender: TObject);
begin
  inherited;
   if eTotalItens.Value = 0 then
      eVlrDesc.Value := 0
   else
      eVlrDesc.Value := (eTotalItens.value) * (ePerDesc.Value / 100);

   CalculaTotalPedido;
end;

procedure TFcad_Pedido.eQtdeExit(Sender: TObject);
begin
   inherited;
   CalculaTotalItens;
end;

procedure TFcad_Pedido.eVlrDescExit(Sender: TObject);
begin
  inherited;
   if eTotalItens.Value = 0 then
      ePerDesc.Value := 0
   else
      ePerDesc.Value := (eVlrDesc.Value / (eTotalItens.Value)) * 100;
   CalculaTotalPedido;
end;

procedure TFcad_Pedido.eVlrFreteExit(Sender: TObject);
begin
   inherited;
   CalculaTotalPedido;
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
   eCodigo.Text                := '0';
   eStatusPed.Clear;
   eCodFornec.Text             := '0';
   eFornec.TExt                := 'NENHUM';
   eCodVEndPedido.Text         := '0';
   eVEndedorPedido.Text        := 'NENHUM';
   eCodCPagto.Text             := '0';
   eCPagto.Text                := 'NENHUM';
   eDataValidade.Date          := DAte;
   eDataEntrega.Date           := DAte;
   eDataPedido.Date            := DAte;
   cxTipoPedido.ItemIndex      := 0;
   eQtdeItens.Value            := 0;
   eTotalItens.Value           := 0;
   eTotalPedido.Value          := 0;
   ePerDesc.Value              := 0;
   eVlrDesc.Value              := 0;

   eVlrFrete.Value             := 0;
   eObs.Lines.Clear;
   eCodTransp.Text             := '0';
   eTransportadora.Text        := 'NENHUM';
   pnItem.Enabled              := False;
   cxPageItens.ActivePageIndex := 0;
end;

procedure TFCad_Pedido.LimpaItem;
begin
   eCodProd.Text     := '0';
   eProduto.Text     := 'NENHUM';
   eUn.CLear;
   eMarca.CLear;
   eNcm.Clear;
   eReferencia.Clear;
   eQtde.Value       := 0;
   ePRecoVEnda.Value := 0;
   eTotalItem.Value  := 0;
   eDescItem.Value   := 0;
   VerFoto('');
end;

procedure TFcad_Pedido.ConsultaItemPedido(intPedido: integer);
begin
   StrSQl := 'select A.*, '+#13+
      ' B.NOMEPROD, '+#13+
      ' B.UNPROD, '+#13+
      ' B.REFPROD '+#13+
      ' from PEDIDOITEM A '+#13+
      ' left join PRODUTO B on A.IDPROD = B.IDPROD '+#13+
      ' WHERE IDPEDIDO='+intToStr(intPedido)+' order by IDPEDIDOITEM';
   ConsultaSql(StrSql, dmMov.qryItemPed);
end;

procedure TFcad_Pedido.ABrePEdido;
begin
   dmMov.qryPedido.Insert;
   eCodigo.Text   := dmMov.qryPedido.FieldByName('IDPEDIDO').AsString;
   ConsultaItemPedido(StrToInt(eCodigo.Text));
   pnItem.Enabled := True;
end;

Procedure TFcad_Pedido.VerFoto(StrCaminhoFoto: String);
begin
   if (StrCaminhoFoto <> '') and (FileExists(StrCaminhoFoto)) then
   begin
      try
         cxFotoProd.Picture.LoadFromFile(StrCaminhoFoto);
      except
         cxFotoProd.Picture := nil;
      end;
   end
   else
      cxFotoProd.Picture := nil;
end;

Procedure TFcad_Pedido.CalculaTotalPedido;
begin
   CalculaitensPedido(dmMov.qryItemPed);
   eTotalItens.Value  := FTotalItem;
   eQtdeItens.Value   := FQtde;

   eTotalPedido.Value := (eVlrFrete.Value + eTotalItens.Value) - (eVlrDesc.Value);
end;

Procedure TFcad_Pedido.CalculaTotalItens;
var
   FPrecoVendaDesconto : Double;
Begin
   FPrecoVendaDesconto  := CalculoCOrreto(eQtde.Value, ePrecoVenda.Value, '*', 2);
   eTotalItem.Value     := CalculoCOrreto(FPrecoVendaDesconto,((eDescItem.Value/100)*FPrecoVendaDesconto) , '-', 2);
end;

end.
