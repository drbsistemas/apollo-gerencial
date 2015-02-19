unit uCad_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox, cxCheckBox, cxCalendar,
  cxButtonEdit, cxImage, dxGDIPlusClasses, RxMenus, StrUtils,
  cxPCdxBarPopupMenu, cxCurrencyEdit, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, UCHistDataset, UCBase;

type
  TFcad_Clientes = class(TFcad_Pai)
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    grConsultaDBTableView1Column9: TcxGridDBColumn;
    cxTipoClie: TcxComboBox;
    cxLabel23: TcxLabel;
    cxPage: TcxPageControl;
    cxDados: TcxTabSheet;
    pnDados: TPanel;
    eRazao: TcxTextEdit;
    eCodigo: TcxTextEdit;
    eEndereco: TcxTextEdit;
    eBairro: TcxTextEdit;
    eCidade: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxNome: TcxLabel;
    cxApelido: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    eUf: TcxTextEdit;
    cxLabel10: TcxLabel;
    eCep: TcxMaskEdit;
    cxLabel11: TcxLabel;
    eFone: TcxMaskEdit;
    cxLabel13: TcxLabel;
    eMail: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cbtpclie: TcxComboBox;
    cxLabel16: TcxLabel;
    cbDtNascimento: TcxDateEdit;
    cxLabel17: TcxLabel;
    eCpf: TcxMaskEdit;
    eRg: TcxMaskEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    eCelular: TcxMaskEdit;
    eObs: TcxTextEdit;
    cxLabel20: TcxLabel;
    eAtivo: TcxCheckBox;
    cxLabel21: TcxLabel;
    cbPessoa: TcxComboBox;
    eDtCad: TcxDateEdit;
    eFantasia: TcxTextEdit;
    cxLabel4: TcxLabel;
    eNum: TcxMaskEdit;
    eIbge: TcxMaskEdit;
    eComplemento: TcxTextEdit;
    cxLabel22: TcxLabel;
    cxJuridica: TPanel;
    cxLabel6: TcxLabel;
    eCnpj: TcxMaskEdit;
    cxLabel12: TcxLabel;
    eIe: TcxMaskEdit;
    cxLabel24: TcxLabel;
    eCodVend: TcxButtonEdit;
    eVendedor: TcxTextEdit;
    cxLabel25: TcxLabel;
    eCodCPagto: TcxButtonEdit;
    eCPagto: TcxTextEdit;
    cxLabel26: TcxLabel;
    eCodTransp: TcxButtonEdit;
    eTransportadora: TcxTextEdit;
    cxLabel27: TcxLabel;
    eCredito: TcxCurrencyEdit;
    eLimite: TcxCurrencyEdit;
    cxLabel28: TcxLabel;
    cxBloqueado: TcxCheckBox;
    cxAlerta: TcxCheckBox;
    cxPessoal: TcxTabSheet;
    cxREsidencia: TcxComboBox;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    eAluguel: TcxCurrencyEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    eEmpresa: TcxTextEdit;
    cxLabel33: TcxLabel;
    eFoneEmpresa: TcxMaskEdit;
    cxLabel34: TcxLabel;
    eEnderecoEmpresa: TcxTextEdit;
    cxLabel35: TcxLabel;
    eCidadeEmpresa: TcxTextEdit;
    cxLabel36: TcxLabel;
    eProfissao: TcxTextEdit;
    cxLabel37: TcxLabel;
    eSalario: TcxCurrencyEdit;
    cxLabel38: TcxLabel;
    eOutrasRendas: TcxCurrencyEdit;
    cxLabel39: TcxLabel;
    eDescricaoRenda: TcxTextEdit;
    cxTabSheet1: TcxTabSheet;
    cxLabel40: TcxLabel;
    eNomeConjuge: TcxTextEdit;
    cxLabel41: TcxLabel;
    eCpfConjuge: TcxMaskEdit;
    eRgConjuge: TcxMaskEdit;
    cxLabel: TcxLabel;
    cxLabel43: TcxLabel;
    eDataNasceConjuge: TcxDateEdit;
    cxLabel44: TcxLabel;
    eSalarioConjuge: TcxCurrencyEdit;
    cxLabel45: TcxLabel;
    eEmpresaConjuge: TcxTextEdit;
    cxLabel46: TcxLabel;
    eFoneEmpresaConjuge: TcxMaskEdit;
    cxLabel42: TcxLabel;
    eEmailConjuge: TcxTextEdit;
    cxLabel47: TcxLabel;
    eFoneConjuge: TcxMaskEdit;
    eTempoMoradia: TcxTextEdit;
    qryClie: TFDQuery;
    qryClieIDCLIE: TIntegerField;
    qryClieRAZAO: TStringField;
    qryClieFANTASIA: TStringField;
    qryClieENDERECO: TStringField;
    qryClieNUMERO: TStringField;
    qryClieCIDADE: TStringField;
    qryClieUF: TStringField;
    qryClieBAIRRO: TStringField;
    qryClieCEP: TStringField;
    qryClieCNPJ: TStringField;
    qryClieRG: TStringField;
    qryClieIE: TStringField;
    qryClieCPF: TStringField;
    qryClieFONE: TStringField;
    qryClieCELULAR: TStringField;
    qryClieEMAIL: TStringField;
    qryClieOBS: TStringField;
    qryClieCOMPLEMENTO: TStringField;
    qryClieDATACAD: TSQLTimeStampField;
    qryClieATIVO: TStringField;
    qryClieDATANASCE: TSQLTimeStampField;
    qryClieTIPOPESSOA: TStringField;
    qryClieTIPOCLIE: TStringField;
    qryClieIDVENDEDOR: TIntegerField;
    qryClieIDCPAGTO: TIntegerField;
    qryClieIDTRANSP: TIntegerField;
    qryClieCREDITO: TFloatField;
    qryClieLIMITEFINANCEIRO: TFloatField;
    qryClieBLOQUEADO: TStringField;
    qryClieALERTACLIE: TIntegerField;
    qryClieTIPORESID: TStringField;
    qryClieALUGUEL: TFloatField;
    qryClieTEMPORESID: TStringField;
    qryClieRAZAOTRABALHO: TStringField;
    qryClieFONETRABALHO: TStringField;
    qryClieENDTRABALHO: TStringField;
    qryClieCIDADETRABALHO: TStringField;
    qryCliePROFISSAO: TStringField;
    qryClieSALARIO: TFloatField;
    qryClieOUTRASRENDAS: TFloatField;
    qryClieRENDADESCRICAO: TStringField;
    qryClieNOMECONJ: TStringField;
    qryClieCPFCONJ: TStringField;
    qryClieRGCONJ: TStringField;
    qryClieDATANASCCONJ: TSQLTimeStampField;
    qryClieSALARIOCONJ: TFloatField;
    qryClieTRABALHOCONJ: TStringField;
    qryClieFONETRABCONJ: TStringField;
    qryClieEMAILCONJ: TStringField;
    qryClieFONECONJ: TStringField;
    qryClieNOMEVEND: TStringField;
    qryClieNOMETRANS: TStringField;
    qryClieDESCRICAO: TStringField;
    UpdtClie: TFDUpdateSQL;
    dsClie: TDataSource;
    cxEndereco: TcxButton;
    CrditodeCliente1: TMenuItem;
    uHis_Cliente: TUCHist_DataSet;
    UCControls1: TUCControls;
    Endereos1: TMenuItem;
    procedure cxVoltarClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cbPessoaPropertiesChange(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure eCpfExit(Sender: TObject);
    procedure eCnpjExit(Sender: TObject);
    procedure eUfExit(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxVerClick(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure cbDtNascimentoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eCepExit(Sender: TObject);
    procedure eCodVendExit(Sender: TObject);
    procedure eCodVendPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodVendKeyPress(Sender: TObject; var Key: Char);
    procedure eCodCPagtoExit(Sender: TObject);
    procedure eCodCPagtoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodTranspExit(Sender: TObject);
    procedure eCodTranspPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qryClieAfterInsert(DataSet: TDataSet);
    procedure cxEnderecoClick(Sender: TObject);
    procedure CrditodeCliente1Click(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
  private
    { Private declarations }
      indice : String;
      procedure Edita;
      procedure Limpa;
  public
    { Public declarations }
  end;

var
  Fcad_Clientes: TFcad_Clientes;
  StrPessoa : String;

implementation

{$R *.dfm}

uses uDmCad, uRotinas, uCad_Cidade, uCad_Pagto, uCad_Credito,
  uRotinaDeImpressaoDeRelatorios, uPrinc;

procedure TFcad_Clientes.cbDtNascimentoExit(Sender: TObject);
begin
   inherited;
   cbDtNascimento.Text := DATAVALIDA(cbDtNascimento.Text);
end;

procedure TFcad_Clientes.cbPessoaPropertiesChange(Sender: TObject);
begin
   inherited;
   if cbPessoa.ItemIndex = 0 then // Fisica
   begin
      cxNome.Caption    := 'Nome:';
      cxApelido.Caption := 'Apelido:';
      cxJuridica.Visible:= false;
      eCpf.Enabled      := True;
      eRg.Enabled       := True;
      eRg.Tag           := 1;
      eCnpj.Tag         := 0;
   end;
   if cbPessoa.ItemIndex = 1 then // Juridica
   begin
      cxNome.Caption    := 'Razão:';
      cxApelido.Caption := 'Fantasia:';
      cxJuridica.Visible:= true;
      eCpf.Enabled      := False;
      eRg.Enabled       := False;
      eRg.Tag           := 0;
      eCnpj.Tag         := 1;
   end;
end;

procedure TFcad_Clientes.CrditodeCliente1Click(Sender: TObject);
begin
   inherited;
   Fcad_Credito := TFcad_Credito.Create(self);
   Fcad_Credito.eCodCliente.Text := qryClie.FieldByName('IDCLIE').AsString;
   Fcad_Credito.eCliente.TExt    := qryClie.FieldByName('RAZAO').AsString;
   Fcad_Credito.ShowModal;

   if FormATivo <> NIl then
   begin
      FormAtivo.WindowState := wsNormal;
      FormAtivo.WindowState := wsMaximized;
   end;
   FreeAndNil(FCad_Credito);
end;

procedure TFcad_Clientes.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         qryClie.Delete;
         qryClie.ApplyUpdates(0);
      Except
         qryClie.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Clientes.cxCancelaClick(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Clientes.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
    case cxConsulta.ItemIndex of
      0: indice := 'A.IDCLIE';
      1: indice := 'RAZAO';
      2: indice := 'FANTASIA';
      3: indice := 'FONE';
      4: indice := 'CELULAR';
      5: indice := 'CNPJ';
      6: indice := 'CPF';
   end;

   case cxTipoClie.ItemIndex of
      0: StrPessoa := 'CLI';
      1: StrPessoa := 'FOR';
      2: StrPessoa := 'VEN';
      3: StrPessoa := 'TRA';
   end;

   StrSql := 'Select '+#13+
      ' A.*, '+#13+
      ' B.RAZAO NOMEVEND, '+#13+
      ' C.RAZAO NOMETRANS, '+#13+
      ' D.DESCRICAO '+#13+
      ' from cliente A '+#13+
      ' left join CLIENTE B on A.idvendedor = B.idclie '+#13+
      ' left join CLIENTE C on A.idtransp = B.idclie '+#13+
      ' left join CPAGTO D on A.idcpagto = D.idcpagto '+#13+
      ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and A.ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   StrSql := StrSql + ' and A.TIPOCLIE='+QuotedStr(StrPessoa);

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, qryClie);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(qryClie.RecordCount);
end;

procedure TFcad_Clientes.cxEditaClick(Sender: TObject);
begin
   if qryClie.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
end;

procedure TFcad_Clientes.cxEnderecoClick(Sender: TObject);
begin
   inherited;
   AbreEnderecoDeCliente(qryClieIDCLIE.AsString, qryClieRAZAO.AsString, Fcad_Clientes);
end;

procedure TFcad_Clientes.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   if (BUSCACONF('NOVOCLIE') = 'SIM') then
   begin
      eCidade.Text := dmCad.qryParametro.FieldByName('CIDADEEMP').AsString;
      eUf.Text     := dmCad.qryParametro.FieldByName('UFEMP').AsString;
   end;

   cbPessoa.SetFocus;
end;

procedure TFcad_Clientes.cxPrintClick(Sender: TObject);
begin
///// Impresso
   Imprime(dsClie, NIL, NIL,
            'SIM',
            'Ficha de Cliente',
            dmCad.qryConf.FieldByName('PASTASERVIDOR').ASString + '\Relatorios\Impressos\ppFichaCliente.rtm',
            'SIM',qryClieEMAIL.ASString,
            1);
end;

procedure TFcad_Clientes.cxVerClick(Sender: TObject);
begin
  inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Clientes.cxVoltarClick(Sender: TObject);
begin
   inherited;
   ID               := qryClie.Fieldbyname('IDCLIE').AsInteger;
   DESCRICAO        := qryClie.FieldByName('RAZAO').AsString;
end;

procedure TFcad_Clientes.eCepExit(Sender: TObject);
begin
  inherited;
   ValidarCep(eCep.Text);
end;

procedure TFcad_Clientes.eCidadePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   inherited;
   Fcad_Cidade             := TFcad_Cidade.Create(Self);
   Fcad_Cidade.FormStyle   := fsNormal;
   Fcad_Cidade.WindowState := wsNormal;
   Fcad_Cidade.Visible     := False;
   Fcad_Cidade.Position    := poMainFormCenter;
   Fcad_Cidade.ShowModal;

   FCad_Clientes.WindowState := wsNormal;
   FCad_Clientes.WindowState := wsMaximized;

   if ID > 0 then
   begin
      eCidade.Text := DESCRICAO;
      eIBGE.Text   := intToStr(ID);
      eUF.Text     := OBS;
   end;
end;

procedure TFcad_Clientes.eCnpjExit(Sender: TObject);
begin
  inherited;
   if eCNPJ.Text<>'' then
   if (not VALIDACNPJ(eCNPJ.text)) then
   begin
      Msg('Verificamos que este CNPJ está invalido, verifique!','I',':S');
      eCNPJ.Text := EmptyStr;
   end;
end;

procedure TFcad_Clientes.eCodCPagtoExit(Sender: TObject);
begin
  inherited;
   eCPagto.Text :=  ConsultaCampoNomeAtivo(eCodCPagto.Text, 'CPAGTO');
   if eCPagto.Text ='NENHUM' then
      eCodCPagto.Text := '0';
end;

procedure TFcad_Clientes.eCodCPagtoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Pagto, TObject(Fcad_Pagto), Fcad_Clientes, '');

   if ID > 0 then
   begin
      eCPagto.Text     := DESCRICAO;
      eCodCPagto.Text  := intToStr(ID);
   end;
end;

procedure TFcad_Clientes.eCodTranspExit(Sender: TObject);
begin
   inherited;
   eTransportadora.Text :=  ConsultaCampoNomeAtivo(eCodTransp.Text, 'TRA');
   if eTransportadora.Text ='NENHUM' then
      eCodTransp.Text := '0';
end;

procedure TFcad_Clientes.eCodTranspPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Clientes, 'TRA');

   if ID > 0 then
   begin
      eTransportadora.Text := DESCRICAO;
      eCodTransp.Text      := intToStr(ID);
   end;
end;

procedure TFcad_Clientes.eCodVendExit(Sender: TObject);
begin
  inherited;
   eVEndedor.Text :=  ConsultaCampoNomeAtivo(eCodVend.Text, 'VEN');
   if eVEndedor.Text ='NENHUM' then
      eCodVend.Text := '0';
end;

procedure TFcad_Clientes.eCodVendKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Clientes.eCodVendPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Clientes, TObject(Fcad_Clientes), Fcad_Clientes, 'VEN');

   if ID > 0 then
   begin
      eVEndedor.Text := DESCRICAO;
      eCodVend.Text  := intToStr(ID);
   end;
end;

procedure TFcad_Clientes.eCpfExit(Sender: TObject);
begin
  inherited;
   if eCpf.Text<>'' then
   if (not VALIDACPF(eCPF.text)) then
   begin
      Msg('Verificamos que este CPF está invalido, verifique!','I',':S');
      eCpf.Text := EmptyStr;
   end;
end;

procedure TFcad_Clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := qryClie.Fieldbyname('IDCLIE').AsInteger;
   DESCRICAO        := qryClie.FieldByName('RAZAO').AsString;

   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_Clientes    := Nil;
      Action           := CaFree;
   end;
end;

procedure TFcad_Clientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      qryClie.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      qryClie.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(qryClie.RecordCount);
end;

procedure TFcad_Clientes.FormShow(Sender: TObject);
begin
   inherited;
   StrPessoa := StrTipoPessoa;
   case AnsiIndexStr(UpperCase(StrPessoa), ['CLI', 'FOR','VEN','TRA']) of
      0: cxTipoClie.ItemIndex := 0;
      1: cxTipoClie.ItemIndex := 1;
      2: cxTipoClie.ItemIndex := 2;
      3: cxTipoClie.ItemIndex := 3;
   end;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Clientes.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

procedure TFcad_Clientes.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Clientes);

   with qryClie do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('RAZAO').AsString           := eRazao.Text;
         FieldByName('FANTASIA').AsString        := eFantasia.Text;
         FieldByName('ENDERECO').AsString        := eEndereco.Text;
         FieldByName('NUMERO').AsString          := eNum.Text;
         FieldByName('COMPLEMENTO').AsString     := eComplemento.Text;
         FieldByName('CIDADE').AsString          := eCidade.Text;
         FieldByName('UF').AsString              := eUf.Text;
         FieldByName('BAIRRO').AsString          := eBairro.Text;
         FieldByName('CEP').AsString             := eCep.Text;
         FieldByName('CNPJ').AsString            := eCnpj.Text;
         FieldByName('RG').AsString              := eRg.Text;
         FieldByName('IE').AsString              := eIe.Text;
         FieldByName('CPF').AsString             := eCpf.Text;
         FieldByName('FONE').AsString            := eFone.Text;
         FieldByName('CELULAR').AsString         := eCelular.Text;
         FieldByName('DATACAD').AsDateTime       := eDtCad.Date + Time;
         FieldByName('ATIVO').AsString           := ifs(eAtivo.Checked, 'S', 'N');
         FieldByName('DATANASCE').AsDateTime     := cbDtNascimento.Date;
         FieldByName('TIPOPESSOA').AsString      := Copy(cbPessoa.Text,1,1);
         FieldByName('TIPOCLIE').AsString        := Copy(cbtpclie.Text,1,3);
         Fieldbyname('EMAIL').AsString           := eMail.Text;
         Fieldbyname('OBS').AsString             := eObs.Text;

         Fieldbyname('IDVENDEDOR').AsString      := eCodVend.Text;
         Fieldbyname('IDCPAGTO').AsString        := eCodCPagto.Text;
         Fieldbyname('IDTRANSP').AsString        := eCodTransp.Text;
         Fieldbyname('CREDITO').AsFloat          := eCredito.Value;
         Fieldbyname('LIMITEFINANCEIRO').AsFloat := eLimite.Value;
         Fieldbyname('BLOQUEADO').AsString       := ifs(cxBloqueado.Checked = True, 'S', 'N');
         Fieldbyname('ALERTACLIE').AsInteger     := ifs(cxAlerta.Checked = True, 1, 0);

         Fieldbyname('TIPORESID').AsString       := cxREsidencia.Text;
         Fieldbyname('ALUGUEL').AsFloat          := eAluguel.Value;
         Fieldbyname('TEMPORESID').AsString      := eTempoMoradia.Text;
         Fieldbyname('RAZAOTRABALHO').AsString   := eEmpresa.Text;
         Fieldbyname('FONETRABALHO').AsString    := eFoneEmpresa.Text;
         Fieldbyname('ENDTRABALHO').AsString     := eEnderecoEmpresa.Text;
         Fieldbyname('CIDADETRABALHO').AsString  := eCidadeEmpresa.Text;
         Fieldbyname('PROFISSAO').AsString       := eProfissao.Text;
         Fieldbyname('SALARIO').AsFloat          := eSalario.Value;
         Fieldbyname('OUTRASRENDAS').AsFloat     := eOutrasREndas.Value;
         Fieldbyname('RENDADESCRICAO').AsString  := eDescricaoRenda.Text;

         Fieldbyname('NOMECONJ').AsString        := eNomeConjuge.Text;
         Fieldbyname('CPFCONJ').AsString         := eCpfConjuge.TExt;
         Fieldbyname('RGCONJ').AsString          := eRgConjuge.Text;
         Fieldbyname('DATANASCCONJ').AsDAteTime  := eDataNasceConjuge.Date;
         Fieldbyname('SALARIOCONJ').AsFloat      := eSalarioConjuge.Value;
         Fieldbyname('TRABALHOCONJ').AsString    := eEmpresaConjuge.Text;
         Fieldbyname('FONETRABCONJ').AsString    := eFoneEmpresaConjuge.Text;
         Fieldbyname('EMAILCONJ').AsString       := eEmailConjuge.TExt;
         Fieldbyname('FONECONJ').AsString        := eFoneConjuge.TExt;

         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Clientes.Edita;
begin
   with qryClie do
   begin
      eCodigo.Text              := FieldbyName('IDCLIE').AsString;
      eRazao.Text              := FieldByName('RAZAO').AsString;
      eFantasia.Text           := FieldByName('FANTASIA').AsString;
      eEndereco.Text           := FieldByName('ENDERECO').AsString;
      eNum.Text                := FieldByName('NUMERO').AsString;
      eComplemento.Text        := FieldByName('COMPLEMENTO').AsString;
      eCidade.Text             := FieldByName('CIDADE').AsString;
      eUf.Text                 := FieldByName('UF').AsString;
      eBairro.Text             := FieldByName('BAIRRO').AsString;
      eCep.Text                := FieldByName('CEP').AsString;
      eCnpj.Text               := FieldByName('CNPJ').AsString;
      eRg.Text                 := FieldByName('RG').AsString;
      eIe.Text                 := FieldByName('IE').AsString;
      eCpf.Text                := FieldByName('CPF').AsString;
      eFone.Text               := FieldByName('FONE').AsString;
      eCelular.Text            := FieldByName('CELULAR').AsString;
      eDtCad.Date              := FieldByName('DATACAD').AsDateTime;
      eAtivo.Checked           := ifs(FieldByName('ATIVO').AsString = 'S', True, False);
      cbPessoa.Itemindex       := ifs(FieldByName('TIPOPESSOA').AsString = 'F',0,1);
      case AnsiIndexStr(UpperCase(FieldByName('TIPOCLIE').AsString), ['CLI', 'FOR','VEN']) of
         0: cbtpclie.ItemIndex := 0;
         1: cbtpclie.ItemIndex := 1;
         2: cbtpclie.ItemIndex := 2;
      end;
      cbDtNascimento.Date      := FieldByName('DATANASCE').AsDateTime;
      eMail.Text               := Fieldbyname('EMAIL').AsString;
      eObs.Text                := Fieldbyname('OBS').AsString;

      eCodVend.Text            := Fieldbyname('IDVENDEDOR').AsString;
      eCodVendExit(self);
      eCodCPagto.Text          := Fieldbyname('IDCPAGTO').AsString;
      eCodCPagtoExit(self);
      eCodTransp.Text          := Fieldbyname('IDTRANSP').AsString;
      eCodTranspExit(self);
      eCredito.Value           := Fieldbyname('CREDITO').AsFloat;
      eLimite.Value            := Fieldbyname('LIMITEFINANCEIRO').AsFloat;
      cxBloqueado.Checked      := ifs(Fieldbyname('BLOQUEADO').AsString = 'S', True, False);

      cxAlerta.Checked         := ifs(Fieldbyname('ALERTACLIE').AsInteger = 1, True, False);

      cxREsidencia.Properties.Items.IndexOfName(Fieldbyname('TIPORESID').AsString);
      eAluguel.Value           := Fieldbyname('ALUGUEL').AsFloat;
      eTempoMoradia.Text       := Fieldbyname('TEMPORESID').AsString;
      eEmpresa.Text            := Fieldbyname('RAZAOTRABALHO').AsString;
      eFoneEmpresa.Text        := Fieldbyname('FONETRABALHO').AsString;
      eEnderecoEmpresa.Text    := Fieldbyname('ENDTRABALHO').AsString;
      eCidadeEmpresa.Text      := Fieldbyname('CIDADETRABALHO').AsString;
      eProfissao.Text          := Fieldbyname('PROFISSAO').AsString;
      eSalario.Value           := Fieldbyname('SALARIO').AsFloat;
      eOutrasREndas.Value      := Fieldbyname('OUTRASRENDAS').AsFloat;
      eDescricaoRenda.Text     := Fieldbyname('RENDADESCRICAO').AsString;

      eNomeConjuge.Text        := Fieldbyname('NOMECONJ').AsString;
      eCpfConjuge.TExt         := Fieldbyname('CPFCONJ').AsString;
      eRgConjuge.Text          := Fieldbyname('RGCONJ').AsString;
      eDataNasceConjuge.Date   := Fieldbyname('DATANASCCONJ').AsDAteTime;
      eSalarioConjuge.Value    := Fieldbyname('SALARIOCONJ').AsFloat;
      eEmpresaConjuge.Text     := Fieldbyname('TRABALHOCONJ').AsString;
      eFoneEmpresaConjuge.Text := Fieldbyname('FONETRABCONJ').AsString;
      eEmailConjuge.TExt       := Fieldbyname('EMAILCONJ').AsString;
      eFoneConjuge.TExt        := Fieldbyname('FONECONJ').AsString;

      cxEndereco.Enabled       := True;
   end;
end;

procedure TFcad_Clientes.eUfExit(Sender: TObject);
begin
  inherited;
   if eUf.Text<>'' then
   if (not VALIDAUF(eUf.text)) then
   begin
      Msg('Verificamos que este UF está invalido, verifique!','I',':S');

      eUf.SetFocus;
   end;
end;

Procedure TFcad_Clientes.Limpa;
begin
   LimpaCampos(Fcad_Clientes);
   cbPessoaPropertiesChange(Self);
end;


procedure TFcad_Clientes.qryClieAfterInsert(DataSet: TDataSet);
begin
  inherited;
   qryClie.FieldByName('IDCLIE').AsInteger         := ExecutaGen('CLIENTE');
end;

end.

