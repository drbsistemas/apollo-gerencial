unit uCad_Empresa;

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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxButtonEdit, cxCheckBox,
  cxPCdxBarPopupMenu, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon,
  cxShellComboBox, cxPC, RxMenus;

type
  TFCad_Empresa = class(TFcad_Pai)
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    grConsultaDBTableView1Column6: TcxGridDBColumn;
    eCodigo: TcxTextEdit;
    cxLabel19: TcxLabel;
    eAtivo: TcxCheckBox;
    cxNome: TcxLabel;
    eRazao: TcxTextEdit;
    cxApelido: TcxLabel;
    eFantasia: TcxTextEdit;
    cxLabel3: TcxLabel;
    eCnpj: TcxMaskEdit;
    cxLabel4: TcxLabel;
    eIe: TcxMaskEdit;
    cxLabel5: TcxLabel;
    eEndereco: TcxTextEdit;
    cxLabel6: TcxLabel;
    eNum: TcxMaskEdit;
    cxLabel9: TcxLabel;
    eCep: TcxMaskEdit;
    cxLabel7: TcxLabel;
    eBairro: TcxTextEdit;
    eCidade: TcxButtonEdit;
    cxLabel10: TcxLabel;
    cxLabel8: TcxLabel;
    eUf: TcxTextEdit;
    eIbge: TcxMaskEdit;
    eComplemento: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    eContato: TcxTextEdit;
    cxLabel13: TcxLabel;
    eFone: TcxMaskEdit;
    cxLabel14: TcxLabel;
    eEmail: TcxTextEdit;
    cxLabel15: TcxLabel;
    eSite: TcxTextEdit;
    cxPage: TcxPageControl;
    cxEspecificos: TcxTabSheet;
    cxLabel18: TcxLabel;
    cxLabel16: TcxLabel;
    eDataBkp: TcxTextEdit;
    cxLabel20: TcxLabel;
    eDataLic: TcxTextEdit;
    eQtdeLic: TcxTextEdit;
    cxLabel21: TcxLabel;
    cbLogo: TcxShellComboBox;
    eBackup: TcxShellComboBox;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    ePastaServidor: TcxShellComboBox;
    cxEmail: TcxTabSheet;
    eHost: TcxTextEdit;
    eUsuario: TcxTextEdit;
    eSenha: TcxTextEdit;
    cbSSL: TcxComboBox;
    ePorta: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxButton1: TcxButton;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxNovoClick(Sender: TObject);
    procedure eCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
     indice : String;
    procedure Limpa;
    procedure Edita;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Empresa: TFCad_Empresa;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uCad_Cidade;

procedure TFCad_Empresa.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmcad.qryConf.Delete;
         dmcad.qryConf.ApplyUpdates(0);
      Except
         dmcad.qryConf.CancelUpdates;
      end;
   end;
end;

procedure TFCad_Empresa.cxButton1Click(Sender: TObject);
begin
  inherited;
   EnviaEmailDLL('','comercial@drbsistemas.com.br','');
end;

procedure TFCad_Empresa.cxCancelaClick(Sender: TObject);
begin
   inherited;
   //
end;

procedure TFCad_Empresa.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCONF';
      1: indice := 'RAZAOEMP';
   end;
   StrSql := 'select * from CONF where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   ConsultaSql(StrSql, dmcad.qryConf);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryConf.RecordCount);
end;

procedure TFCad_Empresa.cxEditaClick(Sender: TObject);
begin
   inherited;
   Limpa;
   Edita;
   eRazao.SetFocus;
end;

procedure TFCad_Empresa.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
end;

procedure TFCad_Empresa.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Empresa);

   with dmCad.qryConf do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         Fieldbyname('IDCONF').AsString         := eCodigo.Text;
         Fieldbyname('RAZAOEMP').AsString       := eRazao.Text;
         Fieldbyname('FANTASIAEMP').AsString    := eFantasia.Text;
         Fieldbyname('CNPJEMP').AsString        := eCnpj.Text;
         Fieldbyname('IEEMP').AsString          := eIe.Text;
         Fieldbyname('ENDERECOEMP').AsString    := eEndereco.Text;
         Fieldbyname('NUMEROEMP').AsString      := eNum.Text;
         Fieldbyname('COMPLEMENTOEMP').AsString := eComplemento.Text;
         Fieldbyname('BAIRROEMP').AsString      := eBairro.Text;
         Fieldbyname('CEPEMP').asString         := eCep.Text;
         Fieldbyname('UFEMP').AsString          := eUf.Text;
         Fieldbyname('CIDADEEMP').AsString      := eCidade.Text;
         Fieldbyname('FONEEMP').AsString        := eFone.Text;
         Fieldbyname('EMAILEMP').AsString       := eEmail.Text;
         Fieldbyname('SITEEMP').AsString        := eSite.Text;
         Fieldbyname('CONTATOEMP').AsString     := eContato.Text;
         Fieldbyname('ATIVO').AsString          := ifs(eAtivo.Checked=TRUE, 'SIM', 'NÃO');

         Fieldbyname('LOGOEMP').AsString        := cbLogo.Text;
         Fieldbyname('DATABACKUP').AsString     := eDataBkp.Text;
         Fieldbyname('VALIDADELIC').AsString    := eDataLic.Text;
         Fieldbyname('QTDELIC').AsString        := eQtdeLic.Text;
         ///// COMPONENTE É LENTO
         Fieldbyname('PROGRAMABACKUP').AsString := eBackup.Text;
         Fieldbyname('PASTASERVIDOR').AsString  := ePastaServidor.Text;

       ///// Email
         Fieldbyname('HOSTEMAIL').AsString      := eHost.Text;
         Fieldbyname('SENHAEMAIL').AsString     := eSenha.Text;
         Fieldbyname('USUARIOEMAIL').ASString   := eUsuario.Text;
         Fieldbyname('PORTAEMAIL').AsInteger    := StrToInt(ePorta.Text);
         Fieldbyname('SSLEMAIL').ASInteger      := cbSSL.ItemIndex;
      /////


         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFCad_Empresa.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFCad_Empresa.cxVoltarClick(Sender: TObject);
begin
   inherited;
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

procedure TFCad_Empresa.eCidadePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   Fcad_Cidade             := TFcad_Cidade.Create(Self);
   Fcad_Cidade.FormStyle   := fsNormal;
   Fcad_Cidade.WindowState := wsNormal;
   Fcad_Cidade.Visible     := False;
   Fcad_Cidade.Position    := poMainFormCenter;
   Fcad_Cidade.ShowModal;

   FCad_Empresa.WindowState := wsNormal;
   FCad_Empresa.WindowState := wsMaximized;

   if ID > 0 then
   begin
      eCidade.Text := DESCRICAO;
      eIBGE.Text   := intToStr(ID);
      eUF.Text     := OBS;
   end;
end;

procedure TFCad_Empresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   ID               := dmCad.qryConf.Fieldbyname('IDCONF').AsInteger;
   DESCRICAO        := dmCad.qryConf.FieldByName('RAZAOEMP').AsString;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      Fcad_Empresa := Nil;
   end;
   pFundo(1);
   Action           := CaFree;
end;

procedure TFCad_Empresa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Key = VK_F3) and (pnBUsca.Visible = true) then
      cxConsultaPropertiesChange(self);
   if (key = Vk_F2) then
   begin
      if cxConsulta.Itemindex=  1 then
         cxConsulta.Itemindex:= 0 else
         cxConsulta.Itemindex:= cxConsulta.ItemIndex +1;
      cxConsultaPropertiesChange(self);
   end;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryConf.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryConf.Prior;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryConf.RecordCount);
end;

procedure TFCad_Empresa.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFCad_Empresa.grConsultaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

Procedure TFcad_Empresa.Limpa;
begin
   cxPage.ActivePage := cxEspecificos;
end;

Procedure TFcad_Empresa.Edita;
begin
   with dmCad.qryConf do
   begin
      eCodigo.TExt        := Fieldbyname('IDCONF').AsString;
      eRazao.Text         := Fieldbyname('RAZAOEMP').AsString;
      eFantasia.Text      := Fieldbyname('FANTASIAEMP').AsString;
      eCnpj.Text          := Fieldbyname('CNPJEMP').AsString;
      eIe.Text            := Fieldbyname('IEEMP').AsString;
      eEndereco.Text      := Fieldbyname('ENDERECOEMP').AsString;
      eNum.Text           := Fieldbyname('NUMEROEMP').AsString;
      eComplemento.Text   := Fieldbyname('COMPLEMENTOEMP').AsString;
      eBairro.Text        := Fieldbyname('BAIRROEMP').AsString;
      eCep.Text           := Fieldbyname('CEPEMP').asString;
      eUf.Text            := Fieldbyname('UFEMP').AsString;
      eCidade.Text        := Fieldbyname('CIDADEEMP').AsString;
      eFone.Text          := Fieldbyname('FONEEMP').AsString;
      eEmail.Text         := Fieldbyname('EMAILEMP').AsString;
      eSite.Text          := Fieldbyname('SITEEMP').AsString;
      eContato.Text       := Fieldbyname('CONTATOEMP').AsString;
      eAtivo.Checked      := ifs(Fieldbyname('ATIVO').AsString = 'SIM', True, False);

      cbLogo.Text         := Fieldbyname('LOGOEMP').AsString;
      eDataBkp.Text       := Fieldbyname('DATABACKUP').AsString;
      eDataLic.Text       := Fieldbyname('VALIDADELIC').AsString;
      eQtdeLic.Text       := Fieldbyname('QTDELIC').AsString;
      ///// LENTO
      eBackup.Text        := Fieldbyname('PROGRAMABACKUP').AsString;
      ePastaServidor.Text := Fieldbyname('PASTASERVIDOR').AsString;


    ///// Email
      eHost.Text           := Fieldbyname('HOSTEMAIL').AsString;
      eSenha.Text          := Fieldbyname('SENHAEMAIL').AsString;
      eUsuario.Text        := Fieldbyname('USUARIOEMAIL').ASString;
      ePorta.Text          := IntTOStr(Fieldbyname('PORTAEMAIL').AsInteger);
      cbSSL.ItemIndex      := Fieldbyname('SSLEMAIL').ASInteger;
   /////



   end;
end;

end.
