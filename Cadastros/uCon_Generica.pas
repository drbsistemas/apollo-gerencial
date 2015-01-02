unit uCon_Generica;

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
  cxNavigator, Data.DB, cxDBData, cxGroupBox, RxMenus, dxGDIPlusClasses,
  cxImage, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TFcad_Generica = class(TFcad_Pai)
    pnTabela: TPanel;
    cxLabel3: TcxLabel;
    cxTabela: TcxComboBox;
    cxLabel4: TcxLabel;
    eCodigo: TcxTextEdit;
    cxNome: TcxLabel;
    eDescricao: TcxTextEdit;
    cxApelido: TcxLabel;
    eObs: TcxTextEdit;
    procedure AbreCom(StrAbre: String);
    procedure CaptionForm(StrNome: String);
    procedure CarregaTabelas();

    procedure FormShow(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure cxTabelaClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    procedure Edita;
    procedure Limpa;
  public
    { Public declarations }
     TABELA: string;
  end;

var
  Fcad_Generica: TFcad_Generica;

implementation

{$R *.dfm}

uses uDmCad, uRotinas;

procedure TFcad_Generica.cxApagarClick(Sender: TObject);
begin
  inherited;
   dmcad.qryGenerico.Delete;
end;

procedure TFcad_Generica.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDGENERICA';
      1: indice := 'DESCRICAO';
   end;
   StrSql := 'select * from generica where TABELA='+QuotedStr(TABELA)+' and '+indice+
                                  ' like '+QuotedStr('%'+eConsulta.Text+'%')+' order by '+indice;

   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   Consulta(StrSql, dmcad.qryGenerico);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryGenerico.RecordCount);
end;

procedure TFcad_Generica.cxEditaClick(Sender: TObject);
begin
  if dmCad.qryGenerico.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
end;

procedure TFcad_Generica.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   eDescricao.SetFocus;
end;

procedure TFcad_Generica.cxSalvarClick(Sender: TObject);
begin

   with dmCad.qryGenerico do
   begin
      if cxSalvar.Tag = 1 then // Salvar
         Insert else
         Edit;
      try
         FieldByName('DESCRICAO').AsString          := eDescricao.Text;
         FieldByName('OBS').AsString                := eObs.Text;
         FieldByName('VALOR').AsFloat               := 0;
         FieldByName('TABELA').AsString             := TABELA;

         Post;
         ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
      end;
   end;
end;

procedure TFcad_Generica.cxTabelaClick(Sender: TObject);
begin
   inherited;
   Consulta('select TABELA from generica where NOMETABELA='+QuotedStr(cxTAbela.Text), dmcad.qryAux);
   TABELA := dmCad.qryAux.FieldByName('TABELA').AsString;

   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Generica.cxVerClick(Sender: TObject);
begin
  inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Generica.cxVoltarClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Tag = 1 then
      MostraPainelBusca(Con) else
      Close;
end;

procedure TFcad_Generica.Edita;
begin
   eCodigo.Text    := dmCad.qryGenerico.FieldByName('IDGENERICA').AsString;
   eDescricao.Text := dmCad.qryGenerico.FieldByName('DESCRICAO').AsString;
   eObs.Text       := dmCad.qryGenerico.FieldByName('OBS').AsString;
end;

procedure TFcad_Generica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmCad.qryGenerico.Fieldbyname('IDGENERICA').AsInteger;
   DESCRICAO        := dmCad.qryGenerico.FieldByName('DESCRICAO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_Generica    := Nil;
   Action           := CaFree;
end;

procedure TFcad_Generica.FormCreate(Sender: TObject);
begin
  inherited;
   TABELA := EmptyStr;
end;

procedure TFcad_Generica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryGenerico.Next;

   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryGenerico.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryGenerico.RecordCount);
end;

procedure TFcad_Generica.FormShow(Sender: TObject);
begin
   inherited;
   if TABELA = '' then
      CarregaTabelas;
   CaptionForm(TABELA);
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Generica.Limpa;
begin
   eCodigo.Text := '0';
   eDescricao.Clear;
   eObs.Clear;
end;

procedure TFcad_Generica.AbreCom(StrAbre: String);
begin
   if StrAbre = 'CON' then
      pnTabela.Visible        := false;
   if (StrAbre = 'CAD') then
      pnTabela.Visible        := True;
end;

procedure TFcad_Generica.CaptionForm(StrNome: String);
begin
   if TABELA = 'CCUSTO' then
      Fcad_Generica.Caption := 'Cadastro de CENTRO DE CUSTO' else
   if TABELA = 'FPAGTO' then
      Fcad_Generica.Caption := 'Cadastro de FORMAS DE PAGAMENTO' else
   if TABELA = 'GRUPOS' then
      Fcad_Generica.Caption := 'Cadastro de GRUPOS' else
   if TABELA = 'SUBGRUPO' then
      Fcad_Generica.Caption := 'Cadastro de SUBGRUPOS' else
   if TABELA = 'FPAGTO' then
      Fcad_Generica.Caption := 'Cadastro de FORMAS DE PAGAMENTO';
end;

procedure TFcad_Generica.CarregaTabelas();
begin
   Consulta('select NOMETABELA from generica group by TABELA, NOMETABELA order by TABELA', dmcad.qryAux);
   dmcad.qryAux.First;

   cxTabela.Properties.Items.Clear;
   while not dmcad.qryAux.Eof do
   begin
      cxTabela.Properties.Items.Add(dmcad.qryAux.FieldByName('NOMETABELA').AsString);
      dmCad.qryAux.Next;
   end;
   cxTabela.ItemIndex := 0;
   cxTabelaClick(self);
end;

end.


