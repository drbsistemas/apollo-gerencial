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
  cxButtonEdit, cxImage, dxGDIPlusClasses, RxMenus;

type
  TFcad_Clientes = class(TFcad_Pai)
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
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    grConsultaDBTableView1Column7: TcxGridDBColumn;
    grConsultaDBTableView1Column8: TcxGridDBColumn;
    grConsultaDBTableView1Column9: TcxGridDBColumn;
    cxJuridica: TPanel;
    cxLabel6: TcxLabel;
    eCnpj: TcxMaskEdit;
    cxLabel12: TcxLabel;
    eIe: TcxMaskEdit;
    procedure cxVoltarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

implementation

{$R *.dfm}

uses uDmCad, uRotinas, uCad_Cidade;

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

procedure TFcad_Clientes.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmcad.qryClie.Delete;
         dmcad.qryClie.ApplyUpdates(0);
      Except
         dmcad.qryClie.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Clientes.cxCancelaClick(Sender: TObject);
begin
  inherited;
   //
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
   StrSql := 'select A.* from CLIENTE A where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   Consulta(StrSql, dmcad.qryClie);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryClie.RecordCount);
end;

procedure TFcad_Clientes.cxEditaClick(Sender: TObject);
begin
   inherited;
   Limpa;
   Edita;
end;

procedure TFcad_Clientes.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   cbPessoa.SetFocus;
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
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
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
   inherited;
   ID               := dmCad.qryClie.Fieldbyname('IDCLIE').AsInteger;
   DESCRICAO        := dmCad.qryClie.FieldByName('RAZAO').AsString;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      Fcad_Clientes := Nil;
   end;
   pFundo(1);
   Action           := CaFree;
end;

procedure TFcad_Clientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Key = VK_F3) and (pnBUsca.Visible = true) then
      cxConsultaPropertiesChange(self);
   if (key = Vk_F2) then
   begin
      if cxConsulta.Itemindex=  4 then
         cxConsulta.Itemindex:= 0 else
         cxConsulta.Itemindex:= cxConsulta.ItemIndex +1;
      cxConsultaPropertiesChange(self);
   end;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryClie.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryClie.Prior;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryClie.RecordCount);
end;

procedure TFcad_Clientes.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
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

   with dmCad.qryClie do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('RAZAO').AsString         := eRazao.Text;
         FieldByName('FANTASIA').AsString      := eFantasia.Text;
         FieldByName('ENDERECO').AsString      := eEndereco.Text;
         FieldByName('NUMERO').AsString        := eNum.Text;
         FieldByName('COMPLEMENTO').AsString   := eComplemento.Text;
         FieldByName('CIDADE').AsString        := eCidade.Text;
         FieldByName('UF').AsString            := eUf.Text;
         FieldByName('BAIRRO').AsString        := eBairro.Text;
         FieldByName('CEP').AsString           := eCep.Text;
         FieldByName('CNPJ').AsString          := eCnpj.Text;
         FieldByName('RG').AsString            := eRg.Text;
         FieldByName('IE').AsString            := eIe.Text;
         FieldByName('CPF').AsString           := eCpf.Text;
         FieldByName('FONE').AsString          := eFone.Text;
         FieldByName('CELULAR').AsString       := eCelular.Text;
         FieldByName('DATACAD').AsDateTime     := eDtCad.Date + Time;
         FieldByName('ATIVO').AsString         := ifs(eAtivo.Checked, 'S', 'N');
         FieldByName('DATANASCE').AsDateTime   := cbDtNascimento.Date;
         FieldByName('TIPOPESSOA').AsString    := Copy(cbPessoa.Text,1,1);
         FieldByName('TIPOCLIE').AsString      := Copy(cbtpclie.Text,1,3);

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
   with dmCad.qryClie do
   begin
      eCodigo.Text       := FieldbyName('IDCLIE').AsString;
      eRazao.Text        := FieldByName('RAZAO').AsString;
      eFantasia.Text     := FieldByName('FANTASIA').AsString;
      eEndereco.Text     := FieldByName('ENDERECO').AsString;
      eNum.Text          := FieldByName('NUMERO').AsString;
      eComplemento.Text  := FieldByName('COMPLEMENTO').AsString;
      eCidade.Text       := FieldByName('CIDADE').AsString;
      eUf.Text           := FieldByName('UF').AsString;
      eBairro.Text       := FieldByName('BAIRRO').AsString;
      eCep.Text          := FieldByName('CEP').AsString;
      eCnpj.Text         := FieldByName('CNPJ').AsString;
      eRg.Text           := FieldByName('RG').AsString;
      eIe.Text           := FieldByName('IE').AsString;
      eCpf.Text          := FieldByName('CPF').AsString;
      eFone.Text         := FieldByName('FONE').AsString;
      eCelular.Text      := FieldByName('CELULAR').AsString;
      eDtCad.Date        := FieldByName('DATACAD').AsDateTime;
      eAtivo.Checked     := ifs(FieldByName('ATIVO').AsString = 'S', True, False);
      cbPessoa.Itemindex := ifs(FieldByName('TIPOPESSOA').AsString = 'F',0,1);
      cbtpclie.ItemIndex := ifs(FieldByName('TIPOCLIE').AsString='CLI', 0,1);
      cbDtNascimento.Date:= FieldByName('DATANASCE').AsDateTime;
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
      eRazao.Text        := EmptyStr;
      eFantasia.Text     := EmptyStr;
      eEndereco.Text     := EmptyStr;
      eNum.Text          := EmptyStr;
      eComplemento.Text  := EmptyStr;
      eCidade.Text       := EmptyStr;
      eUf.Text           := EmptyStr;
      eBairro.Text       := EmptyStr;
      eCep.Text          := EmptyStr;
      eCnpj.Text         := EmptyStr;
      eRg.Text           := EmptyStr;
      eIe.Text           := EmptyStr;
      eCpf.Text          := EmptyStr;
      eFone.Text         := EmptyStr;
      eCelular.Text      := EmptyStr;
      eDtCad.Date        := Date;
      cbDtNascimento.Date:= Date;
      eAtivo.Checked     := True;
      cbPessoa.Itemindex := 0;
      cbPessoaPropertiesChange(Self);
      cbtpclie.ItemIndex := 0;
end;

end.
