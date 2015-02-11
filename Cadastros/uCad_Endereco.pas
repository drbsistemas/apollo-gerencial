unit uCad_Endereco;

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
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxCheckBox;

type
  TFcad_Endereco = class(TFcad_Pai)
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    eCodCliente: TcxTextEdit;
    eCliente: TcxTextEdit;
    cxLabel5: TcxLabel;
    eEndereco: TcxTextEdit;
    cxLabel4: TcxLabel;
    eNum: TcxMaskEdit;
    cxLabel10: TcxLabel;
    eCep: TcxMaskEdit;
    cxLabel22: TcxLabel;
    eCidade: TcxTextEdit;
    eBairro: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    eUf: TcxTextEdit;
    cxApelido: TcxLabel;
    eNomeLocal: TcxTextEdit;
    cxLabel20: TcxLabel;
    eContato: TcxTextEdit;
    cxLabel11: TcxLabel;
    eFone: TcxMaskEdit;
    eCodigo: TcxTextEdit;
    cxLabel6: TcxLabel;
    eAtivo: TcxCheckBox;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    grConsultaDBTableView1Column5: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxApagarClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    procedure Edita;
    Procedure Limpa;
  public
    { Public declarations }
  end;

var
  Fcad_Endereco: TFcad_Endereco;

implementation

{$R *.dfm}

uses uRotinas, uDmCad;

procedure TFcad_Endereco.cxApagarClick(Sender: TObject);
begin
   inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmCad.qryEndereco.Delete;
         dmCad.qryEndereco.ApplyUpdates(0);
      Except
         dmCad.qryEndereco.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Endereco.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
    case cxConsulta.ItemIndex of
      0: indice := 'IDEND';
      1: indice := 'LOCALEND';
      2: indice := 'CONTATOEND';
      3: indice := 'ENDERECOEND';
      4: indice := 'FONEEND';
   end;
   StrSql := 'Select * from ENDERECO '+#13+
      ' where idclie= '+eCodCliente.TExt+'and '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmCad.qryEndereco);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryEndereco.RecordCount);
end;

procedure TFcad_Endereco.cxEditaClick(Sender: TObject);
begin
   if dmCad.qryEndereco.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
end;

procedure TFcad_Endereco.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   eNomeLocal.SetFocus;
end;

procedure TFcad_Endereco.cxSalvarClick(Sender: TObject);
begin
  inherited;
   ValidaCampoTag(Fcad_Endereco);

   with dmCad.qryEndereco do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('IDCLIE').AsString           := eCodCliente.Text;
         FieldByName('LOCALEND').AsString         := eNomeLocal.Text;
         Fieldbyname('CONTATOEND').AsString       := eContato.Text;
         FieldByName('BAIRROEND').AsString        := eBairro.Text;
         FieldByName('FONEEND').AsString          := eFone.Text;
         FieldByName('CIDADEEND').AsString        := eCidade.Text;
         FieldByName('UFEND').AsString            := eUf.Text;
         FieldByName('CEPEND').AsString           := eCep.Text;
         FieldByName('NUMEROEND').AsString        := eNum.Text;
         FieldByName('ENDERECOEND').AsString      := eEndereco.Text;
         FieldByName('ATIVO').AsString            := ifs(eATivo.Checked = True,'S', 'N');

         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Endereco.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Endereco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   ID               := dmCad.qryEndereco.Fieldbyname('IDEND').AsInteger;
   DESCRICAO        := dmCAd.qryEndereco.FieldByName('LOCALEND').AsString;

   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_Endereco    := Nil;
      Action           := CaFree;
   end;
end;

procedure TFcad_Endereco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryEndereco.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmCad.qryEndereco.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryEndereco.RecordCount);
end;

procedure TFcad_Endereco.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Endereco.Limpa;
begin
   eCodigo.Text    := '0';
   eNomeLocal.Text := EmptyStr;
   eContato.Text   := EmptyStr;
   eBairro.Text    := EmptyStr;
   eFone.Text      := EmptyStr;
   eCidade.Text    := EmptyStr;
   eUf.Text        := EmptyStr;
   eCep.Text       := EmptyStr;
   eNum.Text       := EmptyStr;
   eEndereco.Text  := EmptyStr;
   eATivo.Checked  := True;

end;

procedure TFcad_Endereco.Edita;
begin
   with dmcad.qryEndereco do
   begin
      eCodigo.Text    := FieldByName('IDEND').AsString;
      eNomeLocal.Text := FieldByName('LOCALEND').AsString;
      eContato.Text   := Fieldbyname('CONTATOEND').AsString;
      eBairro.Text    := FieldByName('BAIRROEND').AsString;
      eFone.Text      := FieldByName('FONEEND').AsString;
      eCidade.Text    := FieldByName('CIDADEEND').AsString;
      eUf.Text        := FieldByName('UFEND').AsString;
      eCep.Text       := FieldByName('CEPEND').AsString;
      eNum.Text       := FieldByName('NUMEROEND').AsString;
      eEndereco.Text  := FieldByName('ENDERECOEND').AsString;
      eATivo.Checked  :=  ifs(FieldByName('ATIVO').AsString = 'S',True, False);
   end;
end;

end.

