unit uCad_Animais;

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
  cxNavigator, Data.DB, cxDBData, dxGDIPlusClasses, cxImage, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, RxMenus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, cxCheckBox, cxPCdxBarPopupMenu, cxButtonEdit, cxMemo,
  cxCurrencyEdit, cxPC, Vcl.ExtDlgs, System.DateUtils;

type
  TFcad_Animais = class(TFcad_Pai)
    cxPage: TcxPageControl;
    cxDados: TcxTabSheet;
    cxVacinas: TcxTabSheet;
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
    eFile2: TOpenPictureDialog;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    eAtivo: TcxCheckBox;
    cxLabel14: TcxLabel;
    eDtCad: TcxDateEdit;
    cxLabel6: TcxLabel;
    eIdade: TcxTextEdit;
    cxNome: TcxLabel;
    eNome: TcxTextEdit;
    cxLabel16: TcxLabel;
    eDtNascimento: TcxDateEdit;
    eDtAtualizado: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxLabel5: TcxLabel;
    eRga: TcxTextEdit;
    ePedigree: TcxTextEdit;
    cxLabel4: TcxLabel;
    cbSexo: TcxComboBox;
    cxLabelSexo: TcxLabel;
    cxImage: TcxImage;
    eFoto: TcxTextEdit;
    cxSalvaFoto: TcxButton;
    cxApagaFoto: TcxButton;
    cxLabel7: TcxLabel;
    ePesoAtual: TcxCurrencyEdit;
    eCor: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    eCodFornec: TcxButtonEdit;
    eFornec: TcxTextEdit;
    cxLabel11: TcxLabel;
    eCodRaca: TcxButtonEdit;
    eRaca: TcxTextEdit;
    cxLabel13: TcxLabel;
    eCodEspecie: TcxButtonEdit;
    eEspecie: TcxTextEdit;
    eObs: TcxMemo;
    cxLabel29: TcxLabel;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    procedure cxVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxApagaFotoClick(Sender: TObject);
    procedure cxSalvaFotoClick(Sender: TObject);
    procedure eCodFornecExit(Sender: TObject);
    procedure eCodFornecKeyPress(Sender: TObject; var Key: Char);
    procedure eCodFornecPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodRacaExit(Sender: TObject);
    procedure eCodRacaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodEspeciePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodEspecieExit(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure eDtNascimentoExit(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    procedure Edita;
    procedure Limpa;
  public
    { Public declarations }
  end;

var
  Fcad_Animais: TFcad_Animais;

implementation

{$R *.dfm}

uses uRotinas, uCad_Clientes, uDmCad, uPrinc, uCon_Generica;

procedure TFcad_Animais.cxApagaFotoClick(Sender: TObject);
begin
  inherited;
   DeleteFile(eFoto.Text);
   eFoto.Clear;
   eFoto.Text := '\Imagem\Sistema\Foto.png';
   cxImage.Picture.LoadFromFile(eFoto.Text);
   cxImage.Picture := NIl;
end;

procedure TFcad_Animais.cxApagarClick(Sender: TObject);
begin
   inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmcad.qryAnimais.Delete;
         dmcad.qryAnimais.ApplyUpdates(0);
      Except
         dmcad.qryAnimais.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Animais.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDANIMAL';
      1: indice := 'NOME';
      2: indice := 'RAZAO';
      3: indice := 'RGA';
      4: indice := 'NPEDIGREE';
   end;
   StrSql := 'SELECT A.*, B.DESCRICAO RACA, C.DESCRICAO ESPECIE, D.RAZAO '+#13+
   ' FROM ANIMAIS A '+#13+
   ' LEFT JOIN GENERICA B ON A.IDRACA=B.IDGENERICA AND  b.TABELA='+QuotedStr('RACA')+#13+
   ' LEFT JOIN GENERICA C ON A.IDESPECIE=B.IDGENERICA AND C.TABELA='+QuotedStr('ESPECIE')+#13+
   ' LEFT JOIN CLIENTE D ON A.IDCLIE=D.IDCLIE '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmcad.qryAnimais);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryAnimais.RecordCount);
end;

procedure TFcad_Animais.cxEditaClick(Sender: TObject);
begin
   if dmCad.qryAnimais.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
   eNome.SetFocus;
end;

procedure TFcad_Animais.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   eDtNascimento.SetFocus;
end;

procedure TFcad_Animais.cxSalvaFotoClick(Sender: TObject);
var
   DIR: String;
begin
  inherited;
   eFile2.Execute;
   Dir := ExtractFilePath(Application.ExeName)+'Imagem\FotosAnimais';
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

procedure TFcad_Animais.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Animais);

   with dmCad.qryAnimais do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('IDCLIE').AsString            := eCodFornec.Text;
         FieldByName('DATACAD').AsDateTime         := eDtCad.Date;
         FieldByName('DATAATUALIZACAO').AsDateTime := eDtAtualizado.Date + Time;
         FieldByName('DATANASCE').AsDateTime       := eDtNascimento.Date;

         FieldByName('NOME').AsString              := eNome.Text;
         FieldByName('COR').AsString               := eCor.Text;
         FieldByName('SEXO').AsString              := ifs(cbSexo.ItemIndex=0,'M','F');

         FieldByName('RGA').AsString               := eRga.Text;
         FieldByName('NPEDIGREE').AsString         := ePedigree.Text;
         FieldByName('IDESPECIE').AsInteger        := StrToInt(eCodEspecie.Text);
         FieldByName('IDRACA').AsInteger           := StrToInt(eCodRaca.Text);

         FieldByName('ATIVO').AsString             := ifs(eAtivo.Checked, 'S', 'N');
         FieldByName('USUARIO').AsString           := FPrinc.UserControl1.CurrentUser.UserName;
         FieldByName('HISTORICO').AsString         := eObs.Lines.Text;
         FieldByName('FOTO').AsString              := eFoto.Text;
         FieldByName('PESOATUAL').AsFloat          := ePesoAtual.Value;

         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Animais.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Animais.cxVoltarClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

procedure TFcad_Animais.eCodEspecieExit(Sender: TObject);
begin
   inherited;
   eEspecie.Text :=  ConsultaCampoNomeAtivo(eCodEspecie.Text, 'ESPECIE');
   if eEspecie.Text ='NENHUM' then
      eCodEspecie.Text := '0';
end;

procedure TFcad_Animais.eCodEspeciePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), Fcad_Animais, 'ESPECIE');

   if ID > 0 then
   begin
      eCodEspecie.Text := intToStr(ID);
      eEspecie.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Animais.eCodFornecExit(Sender: TObject);
begin
  inherited;
   eFornec.Text :=  ConsultaCampoNomeAtivo(eCodFornec.Text, 'CLIENTE');
   if eFornec.Text ='NENHUM' then
      eCodFornec.Text := '0';
end;

procedure TFcad_Animais.eCodFornecKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Animais.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Animais, 'CLIENTE');

   if ID > 0 then
   begin
      eFornec.Text := DESCRICAO;
      eCodFornec.Text   := intToStr(ID);
   end;
end;

procedure TFcad_Animais.eCodRacaExit(Sender: TObject);
begin
  inherited;
   eRaca.Text :=  ConsultaCampoNomeAtivo(eCodRaca.Text, 'RACA');
   if eRaca.Text ='NENHUM' then
      eCodRaca.Text := '0';
end;

procedure TFcad_Animais.eCodRacaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), Fcad_Animais, 'RACA');

   if ID > 0 then
   begin
      eCodRaca.Text := intToStr(ID);
      eRaca.Text    := DESCRICAO;
   end;
end;

procedure TFcad_Animais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   ID               := dmCad.qryAnimais.Fieldbyname('IDCLIE').AsInteger;
   DESCRICAO        := dmCad.qryAnimais.FieldByName('RAZAO').AsString;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      Fcad_Animais  := Nil;
   end;
   pFundo(1);
   Action           := CaFree;
end;

procedure TFcad_Animais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryAnimais.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryAnimais.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryAnimais.RecordCount);
end;

procedure TFcad_Animais.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Animais.Limpa;
begin
   eCodFornec.Text    := '0';
   eDtCad.Date        := Date;
   eDtAtualizado.Date := Date;
   eDtAtualizado.Date := Date;
   eDtNascimento.Date := Date;
   eNome.Clear;
   eCor.Clear;
   cbSexo.ItemIndex   := 0;
   eRga.Clear;
   ePedigree.Clear;
   eCodEspecie.Text   := '0';
   eCodRaca.Text      := '0';
   eAtivo.Checked     := True;
   eObs.Lines.Clear;
   eFoto.Clear;
   ePesoAtual.Value   := 0;
end;

procedure TFcad_Animais.Edita;
begin
   with dmCad.qryAnimais do
   begin
      FieldByName('IDCLIE').AsString            := eCodFornec.Text;
      FieldByName('DATACAD').AsDateTime         := eDtCad.Date;
      FieldByName('DATAATUALIZACAO').AsDateTime := eDtAtualizado.Date + Time;
      FieldByName('DATANASCE').AsDateTime       := eDtNascimento.Date;
      FieldByName('NOME').AsString              := eNome.Text;
      FieldByName('COR').AsString               := eCor.Text;
      FieldByName('SEXO').AsString              := ifs(cbSexo.ItemIndex=0,'M','F');
      FieldByName('RGA').AsString               := eRga.Text;
      FieldByName('NPEDIGREE').AsString         := ePedigree.Text;
      FieldByName('IDESPECIE').AsInteger        := StrToInt(eCodEspecie.Text);
      FieldByName('IDRACA').AsInteger           := StrToInt(eCodRaca.Text);
      FieldByName('ATIVO').AsString             := ifs(eAtivo.Checked, 'S', 'N');
      FieldByName('USUARIO').AsString           := FPrinc.UserControl1.CurrentUser.UserName;
      FieldByName('HISTORICO').AsString         := eObs.Lines.Text;
      FieldByName('FOTO').AsString              := eFoto.Text;
      FieldByName('PESOATUAL').AsFloat          := ePesoAtual.Value;

   end;
end;

procedure TFcad_Animais.eDtNascimentoExit(Sender: TObject);
var
   intAnos, intMes, intDias: Integer;
begin
   if not ValidaData(eDtNascimento.Text) then eDtNascimento.Date := Date;

   intAnos := YearsBetween(Date, StrToDate(eDtNascimento.Text));
   intDias := DaysBetween(Date, (StrToDate(eDtNascimento.Text) + (intAnos*365)));
   intMes  := MonthsBetween(Date, (StrToDate(eDtNascimento.Text)+(intAnos*365)));

   if intAnos > 0 then
      eIdade.Text := IntToStr(intAnos)+' ano(s)';
   if intMes > 0 then
      eIdade.Text := eIdade.Text +', '+IntToStr(intMes)+' mês(es) ';
   if intDias > 0 then
      eIdade.Text := eIdade.Text +', '+IntToStr(intDias)+' dia(s) ';

end;

end.

