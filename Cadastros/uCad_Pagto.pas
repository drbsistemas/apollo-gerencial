unit uCad_Pagto;

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
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxCurrencyEdit, UCBase;

type
  TFcad_Pagto = class(TFcad_Pai)
    eCodigo: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    eDescricao: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxLabel18: TcxLabel;
    eDias: TcxCurrencyEdit;
    cxSalvaFoto: TcxButton;
    cxApagaFoto: TcxButton;
    cxLabel4: TcxLabel;
    eJuros: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    ePercentual: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    UCControls1: TUCControls;
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxApagaFotoClick(Sender: TObject);
    procedure cxSalvaFotoClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    indice : String;
    procedure  Limpa;
    procedure Edita;
    procedure ConsultaItemCPagto(intCPagto: integer);
    procedure LimpaItem;
  public
    { Public declarations }
  end;

var
  Fcad_Pagto: TFcad_Pagto;

implementation

{$R *.dfm}

uses uDmCad, uRotinas, uPrinc;

procedure TFcad_Pagto.cxApagaFotoClick(Sender: TObject);
begin
   inherited;
   if cxSalvar.Enabled = false then
   begin
      Msg('Não é possível completar esta ação!','I',':P');
      abort;
   end;
   dmcad.qryCPagtoItem.Delete;
end;

procedure TFcad_Pagto.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         ConsultaItemCPagto(dmcad.qryCPagto.FieldByName('IDCPAGTO').AsInteger);
         while not dmcad.qryCPagtoItem.Eof do
         begin
            dmcad.qryCPagtoItem.Delete;
         end;
         dmcad.qryCPagto.Delete;
         dmcad.qryCPagtoItem.ApplyUpdates(0);
         dmcad.qryCPagto.ApplyUpdates(0);
      Except
         dmcad.qryCPagto.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Pagto.cxCancelaClick(Sender: TObject);
begin
   inherited;
   dmcad.qryCPagto.CancelUpdates;
   dmcad.qryCPagtoItem.CancelUpdates;
end;

procedure TFcad_Pagto.cxConsultaPropertiesChange(Sender: TObject);
begin
  inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCPAGTO';
      1: indice := 'DESCRICAO';
   end;
   StrSql := ' SELECT * FROM CPAGTO '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');
   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmcad.qryCPagto);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryCPagto.RecordCount);
end;

procedure TFcad_Pagto.cxEditaClick(Sender: TObject);
begin
  inherited;
   if dmCad.qryCPagto.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
   eDescricao.SetFocus;
end;

procedure TFcad_Pagto.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   dmCad.qryCPagto.Insert;
   eCodigo.TExt := dmCad.qryCPagto.Fieldbyname('IDCPAGTO').AsString;
   ConsultaItemCPagto(StrToInt(ecodigo.Text));
   eDescricao.SetFocus;
end;

procedure TFcad_Pagto.cxSalvaFotoClick(Sender: TObject);
begin
  inherited;
   if cxSalvar.Enabled = false then
   begin
      Msg('Não é possível completar esta ação!','I',':P');
      abort;
   end;
   dmcad.qryCPagtoItem.Append;
   dmcad.qryCPagtoItem.Fieldbyname('IDCPAGTO').AsInteger   := StrToInt(ecodigo.Text);
   dmcad.qryCPagtoItem.Fieldbyname('DIAS').AsInteger       := StrToInt(eDias.Text);
   dmcad.qryCPagtoItem.Fieldbyname('JUROS').AsFloat        := eJuros.Value;
   dmcad.qryCPagtoItem.Fieldbyname('PERCENTUAL').AsFloat   := ePercentual.Value;
   dmcad.qryCPagtoItem.Fieldbyname('PARCELA').AsInteger    := dmcad.qryCPagtoItem.RecordCount+1;
   dmcad.qryCPagtoItem.Post;
   LimpaItem;

end;

procedure TFcad_Pagto.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_Pagto);
   if dmcad.qryCPagtoItem.RecordCount <= 0 then
   begin
      MSg('É necessário ter itens na condição de pagamento para salvar, verifique!','I', ';S');
      Abort;
   end;
  dmCad.qryCPagto.FieldByName('DESCRICAO').AsString := eDescricao.Text;
  dmcad.qryCPagto.Post;
  try
     dmcad.qryCPagto.ApplyUpdates(0);
     dmCad.qryCPagtoItem.ApplyUpdates(0);
     inherited;
  except
     dmcad.qryCPagto.CancelUpdates;
     dmCad.qryCPagtoItem.CancelUpdates;
  end;
end;

procedure TFcad_Pagto.cxVerClick(Sender: TObject);
begin
   cxEditaClick(self);
   inherited;
end;

procedure TFcad_Pagto.Edita;
begin
   eCodigo.Text := dmcad.qryCPagto.FieldByName('IDCPAGTO').AsString;
   eDescricao.TExt := dmcad.qryCPagto.FieldByName('DESCRICAO').AsString;
   ConsultaItemCPagto(dmcad.qryCPagto.FieldByName('IDCPAGTO').AsInteger);
end;

procedure TFcad_Pagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   ID               := dmCad.qryCPagto.Fieldbyname('IDCPAGTO').AsInteger;
   DESCRICAO        := dmCad.qryCPagto.FieldByName('DESCRICAO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_Pagto       := Nil;
   Action           := CaFree;
end;

Procedure TFcad_Pagto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryCPagto.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmcad.qryCPagto.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryCPagto.RecordCount);
end;

procedure TFcad_Pagto.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Pagto.Limpa;
begin
   eCodigo.Text := '0';
   eDescricao.Clear;
end;

procedure TFcad_Pagto.LimpaItem;
begin
   eDias.Value       := 0;
   eJuros.Value      := 0;
   ePercentual.Value := 0;
   eDias.SetFocus;
end;

procedure TFcad_Pagto.ConsultaItemCPagto(intCPagto: integer);
begin
   ConsultaSql('SELECT * FROM CPAGTOITEM WHERE IDCPAGTO='+intToStr(intCPagto)+' order by IDCPAGTOITEM', dmcad.qryCPagtoItem);
end;

end.
