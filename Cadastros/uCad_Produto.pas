unit uCad_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, RxMenus, dxGDIPlusClasses,
  cxImage, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxPCdxBarPopupMenu, cxButtonEdit, cxMemo,
  cxCurrencyEdit, cxPC, cxCalendar, cxCheckBox, Vcl.ExtDlgs, cxDBEdit, UCBase;

type
  TFcad_Produto = class(TFcad_Pai)
    cxPage: TcxPageControl;
    cxVenda: TcxTabSheet;
    ePrecoCpr: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel15: TcxLabel;
    eCustoCpr: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    eCustoProd: TcxCurrencyEdit;
    eMl: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    ePrecoVenda: TcxCurrencyEdit;
    cxLabel21: TcxLabel;
    eCustoMedio: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    eComissao: TcxCurrencyEdit;
    cxEstoque: TcxTabSheet;
    eEstoqueDisp: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    eEstoqueTotal: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    eQtdeMin: TcxCurrencyEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    eQtdeMax: TcxCurrencyEdit;
    cxLabel27: TcxLabel;
    ePesoL: TcxCurrencyEdit;
    ePesoB: TcxCurrencyEdit;
    cxLabel28: TcxLabel;
    eObs: TcxMemo;
    cxLabel29: TcxLabel;
    eFile2: TOpenPictureDialog;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    cxBtnEstoque: TcxButton;
    pnDados: TPanel;
    eCodigo: TcxTextEdit;
    cxLabel3: TcxLabel;
    eAtivo: TcxCheckBox;
    cxLabel14: TcxLabel;
    eDtCad: TcxDateEdit;
    cxNome: TcxLabel;
    eNomeProd: TcxTextEdit;
    cxLabel5: TcxLabel;
    eMarca: TcxTextEdit;
    eRefProd: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel10: TcxLabel;
    eCodFornec: TcxButtonEdit;
    eFornec: TcxTextEdit;
    cxLabel9: TcxLabel;
    eCodGrupo: TcxButtonEdit;
    eGrupo: TcxTextEdit;
    cxLabel11: TcxLabel;
    eCodSub: TcxButtonEdit;
    eSubGrupo: TcxTextEdit;
    cxLabel7: TcxLabel;
    eUn: TcxTextEdit;
    eDtValidade: TcxDateEdit;
    cxLabel8: TcxLabel;
    eNcm: TcxTextEdit;
    cxLabelNcm: TcxLabel;
    cxImage: TcxImage;
    eFoto: TcxTextEdit;
    cxApagaFoto: TcxButton;
    cxSalvaFoto: TcxButton;
    eDtAtualizado: TcxDateEdit;
    cxLabel12: TcxLabel;
    eLocal: TcxTextEdit;
    eCodLocal: TcxButtonEdit;
    cxLabel19: TcxLabel;
    pnInfo: TPanel;
    pnFotoCon: TPanel;
    cxImage1: TcxImage;
    cxLabel13: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel34: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel35: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxSalvaFotoClick(Sender: TObject);
    procedure cxApagaFotoClick(Sender: TObject);
    procedure eCodFornecPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFornecKeyPress(Sender: TObject; var Key: Char);
    procedure eCodFornecExit(Sender: TObject);
    procedure eCodGrupoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodGrupoExit(Sender: TObject);
    procedure eCodSubExit(Sender: TObject);
    procedure eCodSubPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodLocalPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodLocalExit(Sender: TObject);
    procedure cxBtnEstoqueClick(Sender: TObject);
    procedure grConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImageClick(Sender: TObject);
    procedure eCustoProdExit(Sender: TObject);
    procedure eMlExit(Sender: TObject);
    procedure ePrecoVendaExit(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure eCodFornecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxVerClick(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    procedure Edita;
    procedure Limpa;
    procedure VerFoto;
    procedure FechaVisualizacaoImagem(sender: TObject);
    procedure VisualizaImagem;
  public
    { Public declarations }
  end;

var
  Fcad_Produto: TFcad_Produto;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uCon_Generica, uCad_Clientes, uCad_Estoque, uRotinaDeCalculosMatematicos,
  uRotinaDeImpressaoDeRelatorios, uPrinc;

procedure TFcad_Produto.cxApagaFotoClick(Sender: TObject);
begin
   DeleteFile(eFoto.Text);
   eFoto.Clear;
   eFoto.Text := '\Imagem\Sistema\Foto.png';
   cxImage.Picture.LoadFromFile(eFoto.Text);
   cxImage.Picture := NIl;
end;

procedure TFcad_Produto.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmcad.qryProd.Delete;
         dmcad.qryProd.ApplyUpdates(0);
      Except
         dmcad.qryProd.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Produto.cxBtnEstoqueClick(Sender: TObject);
begin
  inherited;
  AbreTelaComShowModal(TFcad_Estoque, TObject(FCad_Estoque), NIL, '');
end;

procedure TFcad_Produto.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDPROD';
      1: indice := 'REFPROD';
      2: indice := 'NOMEPROD';
      3: indice := 'MARCAPROD';
   end;
   StrSql := ' SELECT A.*, B.DESCRICAO GRUPO, C.DESCRICAO SUBGRUPO, D.RAZAO, E.DESCRICAO NOMELOCAL '+#13+
   ' FROM PRODUTO A '+#13+
   ' LEFT JOIN GENERICA B ON A.idgrupo=B.IDGENERICA AND  b.TABELA='+QuotedStr('GRUPOS')+#13+
   ' LEFT JOIN GENERICA C ON A.idSUBgrupo=C.IDGENERICA AND C.TABELA='+QuotedStr('SUBGRUPO')+#13+
   ' LEFT JOIN GENERICA E ON A.idLocal=E.IDGENERICA AND E.TABELA='+QuotedStr('LOCALIZACAO')+#13+
   ' LEFT JOIN CLIENTE D ON A.IDFORNEC=D.IDCLIE '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmcad.qryProd);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryProd.RecordCount);
end;

procedure TFcad_Produto.cxEditaClick(Sender: TObject);
begin
   if dmCad.qryProd.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
   eRefProd.SetFocus;
end;

procedure TFcad_Produto.cxImage1Click(Sender: TObject);
begin
  inherited;
   VisualizaImagem;
end;

procedure TFcad_Produto.cxImageClick(Sender: TObject);
begin
  inherited;
   VisualizaImagem;
end;

procedure TFcad_Produto.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   eRefProd.SetFocus;
end;

procedure TFcad_Produto.cxPrintClick(Sender: TObject);
begin
///// Impresso
   Imprime(dmCad.dsProd, NIL, NIL,
            'SIM',
            'Ficha de Produtos',
            dmCad.qryConf.FieldByName('PASTASERVIDOR').ASString + '\Relatorios\Impressos\ppFichaProd.rtm',
            'SIM','',
            1);
end;

procedure TFcad_Produto.eCodFornecExit(Sender: TObject);
begin
   inherited;
   eFornec.Text :=  ConsultaCampoNomeAtivo(eCodFornec.Text, 'CLI');
   if eFornec.Text ='NENHUM' then
      eCodFornec.Text := '0';
end;

procedure TFcad_Produto.eCodFornecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryProd.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryProd.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryProd.RecordCount);
end;

procedure TFcad_Produto.eCodFornecKeyPress(Sender: TObject; var Key: Char);
begin
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Produto.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Produto, 'CLI');

   if ID > 0 then
   begin
      eFornec.Text := DESCRICAO;
      eCodFornec.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Produto.eCodGrupoExit(Sender: TObject);
begin
  inherited;
   eGrupo.Text :=  ConsultaCampoNomeAtivo(eCodGrupo.Text, 'GRUPO');
   if eGrupo.Text ='NENHUM' then
      eCodGrupo.Text := '0';
end;

procedure TFcad_Produto.eCodGrupoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), Fcad_Produto, 'GRUPO');

   if ID > 0 then
   begin
      eCodGrupo.Text := intToStr(ID);
      eGrupo.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Produto.eCodLocalExit(Sender: TObject);
begin
  inherited;
   eLocal.Text :=  ConsultaCampoNomeAtivo(eCodLocal.Text, 'LOCALIZACAO');
   if eLocal.Text ='NENHUM' then
      eCodLocal.Text := '0';
end;

procedure TFcad_Produto.eCodLocalPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), Fcad_Produto, 'LOCALIZACAO');

   if ID > 0 then
   begin
      eCodLocal.Text := intToStr(ID);
      eLocal.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Produto.eCodSubExit(Sender: TObject);
begin
  inherited;
   eSubGrupo.Text :=  ConsultaCampoNomeAtivo(eCodSub.Text, 'SUBGRUPO');
   if eSubGrupo.Text ='NENHUM' then
      eCodSub.Text := '0';
end;

procedure TFcad_Produto.eCodSubPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), Fcad_Produto, 'SUBGRUPO');

   if ID > 0 then
   begin
      eCodSub.Text   := intToStr(ID);
      eSubGrupo.Text := DESCRICAO;
   end;
end;

procedure TFcad_Produto.eCustoProdExit(Sender: TObject);
begin
  inherited;
   eCustoProd.Value := (ePrecoCpr.Value + eCustoCpr.Value);
   if eMl.Value > 0 then
      eMLExit(self);

end;

procedure TFcad_Produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmCad.qryProd.Fieldbyname('IDPROD').AsInteger;
   DESCRICAO        := dmCad.qryProd.FieldByName('NOMEPROD').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;

   Fcad_Produto     := Nil;
   Action           := CaFree;
end;

procedure TFcad_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryProd.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryProd.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryProd.RecordCount);
   VerFoto;
end;

procedure TFcad_Produto.FormShow(Sender: TObject);
begin
   inherited;
   pnBotaoCon.Align := alBottom;
   cxConsultaPropertiesChange(self);
   VerFoto;
end;

procedure TFcad_Produto.grConsultaDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   VerFoto;
end;

procedure TFcad_Produto.grConsultaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

procedure TFcad_Produto.cxSalvaFotoClick(Sender: TObject);
var DIR: String;
begin
   eFile2.Execute;
   Dir := ExtractFilePath(Application.ExeName)+'Imagem\FotosProd';
   if not DirectoryExists(Dir) then
      ForceDirectories(Dir);
   try
      if FileExists(eFile2.FileName) then
      begin
         if FileExists(Dir+'\'+eCodigo.Text+'.jpg') then
         begin
            if (MessageBox(0, 'Já existe um arquivo com o mesmo nome, deseja substituir?', 'Diretório já existe!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = idYes) then
            begin
               DeleteFile(eFOto.Text);
               cxImage.Picture := Nil;
               CopyFile(PChar(eFile2.FileName), PChar(Dir+'\'+eCodigo.Text+'.jpg'), true);
               Application.ProcessMessages;
            end
         end
         else
            CopyFile(PChar(eFile2.FileName), PChar(Dir+'\'+eCodigo.Text+'.jpg'), true);
         eFoto.Text := Dir+'\'+eCodigo.Text+'.jpg';
         cxImage.Picture.LoadFromFile(eFoto.Text);
      end;
   except
   end;
end;

procedure TFcad_Produto.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Produto);

   with dmCad.qryProd do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try

         FieldByName('NOMEPROD').AsString           := eNomeProd.Text;
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

         Fieldbyname('DTATUALIZADO').AsDateTime     := Date+Time;
//         Fieldbyname('CODBAR').AsString             := eObs.Text;
         Fieldbyname('OBS').AsString                := eObs.Lines.Text;

         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Produto.cxVerClick(Sender: TObject);
begin
   cxEditaClick(self);
  inherited;

end;

procedure TFcad_Produto.Limpa;
begin
   LimpaCampos(Fcad_Produto);
end;

procedure TFcad_Produto.Edita;
begin
   with dmCad.qryProd do
   begin
      eCodigo.Text                        := FieldByName('IDPROD').AsString;
      eNomeProd.Text                      := FieldByName('NOMEPROD').AsString;
      eRefProd.Text                       := FieldByName('REFPROD').AsString;
      eMarca.Text                         := FieldByName('MARCAPROD').AsString;
      eCodGrupo.Text                      := FieldByName('IDGRUPO').AsString;
      eCodGrupoExit(Self);
      eCodFornec.Text                     := FieldByName('IDFORNEC').AsString;
      eCodFornecExit(self);
      eCodSub.Text                        := FieldByName('IDSUBGRUPO').AsString;
      eCodSubExit(Self);
      eCodLocal.Text                      := FieldByName('IDLOCAL').AsString;
      eCodLocalExit(self);

      eEstoqueDisp.Value                  := FieldByName('ESTOQUEDISP').AsFloat;
      eEstoqueTotal.Value                 := FieldByName('ESTOQUETOTAL').AsFloat;
      eQtdeMin.Value                      := FieldByName('ESTOQUEMIN').AsFloat;
      eQtdeMax.Value                      := FieldByName('ESTOQUEMAX').AsFloat;
      eDtCad.Date                         := FieldByName('DTCADASTRO').AsDateTIme;
      eDtValidade.Date                    := FieldByName('DTVALIDADE').AsDateTime;
      ePesoB.Value                        := FieldByName('PESOBRUTO').AsFloat;
      ePesoL.Value                        := FieldByName('PESOLIQ').AsFloat;
      eAtivo.Checked                      := ifs(FieldByName('ATIVOPROD').AsString='S', True, False);
      eUn.Text                            := Fieldbyname('UNPROD').AsString;
      eFOto.Text                          := Fieldbyname('FOTOPROD').AsString;
      eNcm.Text                           := Fieldbyname('NCMPROD').AsString;

      ePrecoCpr.Value                     :=Fieldbyname('PRECOCOMRPA').AsFloat;
      eCustoCpr.Value                     := Fieldbyname('CUSTOCOMPRA').AsFloat;
      eCustoProd.Value                    := Fieldbyname('CUSTOTOTAL').AsFloat;
      eMl.Value                           := Fieldbyname('MARGEMLUCRO').AsFloat;
      ePrecoVenda.Value                   := Fieldbyname('PRECOVENDA').AsFloat;
      eComissao.Value                     := Fieldbyname('PERCCOMISSAO').AsFloat;

      eDtAtualizado.Date                  := Fieldbyname('DTATUALIZADO').AsDateTime;
//         Fieldbyname('CODBAR').AsString := eObs.Text;
      eObs.Lines.Text                     := Fieldbyname('OBS').AsString;
   end;
end;

procedure TFcad_Produto.eMlExit(Sender: TObject);
begin
   ePrecoVenda.Value := CalculaMargemLucro(eMl.Value, eCustoProd.Value);
end;

procedure TFcad_Produto.ePrecoVendaExit(Sender: TObject);
begin
   eMl.Value := ReCalculaMargemLucro(ePrecoVenda.Value, eCustoProd.Value);
end;

Procedure TFcad_Produto.VerFoto;
begin
   if (dmcad.QryProd.Fieldbyname('FOTOPROD').AsString <> '') and (FileExists(dmcad.QryProd.Fieldbyname('FOTOPROD').AsString)) then
   begin
      try
         cxImage1.Picture.LoadFromFile(dmcad.QryProd.Fieldbyname('FOTOPROD').AsString);
      except
         cxImage1.Picture := nil;
      end;
   end
   else
      cxImage1.Picture := nil;
end;

Procedure TFCad_Produto.VisualizaImagem;
var
   fImagemZoom: TcxImage;
begin
   if dmcad.qryProd.FieldByName('FOTOPROD').AsString <> '' then
   begin
      fVisualizaImagem          := TForm.Create(fVisualizaImagem);
      with fVisualizaImagem do begin
         Position               := poScreenCenter;
         BorderStyle            := bsSizeToolWin;
         BorderIcons            := [biSystemMenu];
         Color                  := clWhite;
         Width                  := 800;
         Height                 := 800;
         Caption                := 'Visualizador de Imagem';
         fImagemZoom            := TcxImage.Create(fVisualizaImagem);
         with fImagemZoom do begin
            Parent              := fVisualizaImagem;
            Align               := alClient;
            AutoSize            := False;
            Properties.Center   := True;
            Picture.LoadFromFile(dmcad.qryProd.FieldByName('FOTOPROD').AsString);
            Properties.Stretch  := False;
            fImagemZoom.OnClick := FechaVisualizacaoImagem;
         end;
         ShowModal;
      end;
   end;
end;

Procedure TFcad_PRoduto.FechaVisualizacaoImagem(sender: TObject);
begin
   fVisualizaImagem.Close;
end;


end.




