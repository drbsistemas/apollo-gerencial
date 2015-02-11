unit uCad_PlanoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxCheckBox, cxButtonEdit, cxCurrencyEdit,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinscxPCPainter;

type
  TFcad_PlanoConta = class(TFcad_Pai)
    eCodigo: TcxTextEdit;
    cxLabel3: TcxLabel;
    eAtivo: TcxCheckBox;
    cxLabel6: TcxLabel;
    eDescricao: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxTipoPlano: TcxComboBox;
    cxLabel4: TcxLabel;
    cxDre: TcxComboBox;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    cxSalvaFoto: TcxButton;
    cxApagaFoto: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel9: TcxLabel;
    eCodCusto: TcxButtonEdit;
    eCusto: TcxTextEdit;
    cxLabel16: TcxLabel;
    ePercentual: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    eTotalPerc: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxApagarClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodCustoExit(Sender: TObject);
    procedure eCodCustoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxApagaFotoClick(Sender: TObject);
    procedure cxSalvaFotoClick(Sender: TObject);
  private
    { Private declarations }
    indice      : String;
    Procedure Limpa;
    Procedure Edita;
    procedure ConsultaItemPlano(StrCodigo: Integer);
    procedure LimpaItem;
   Function VerificaCusto(intCCusto: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Fcad_PlanoConta: TFcad_PlanoConta;

implementation

{$R *.dfm}

uses uRotinas, uDmCad, uCon_Generica;


procedure TFcad_PlanoConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmCad.qryPlanoConta.Fieldbyname('IDPLANO').AsInteger;
   DESCRICAO        := dmCad.qryPlanoConta.FieldByName('NOMEPLANO').AsString;

  inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_PlanoConta   := Nil;
      Action            := CaFree;
   end;
end;

procedure TFcad_PlanoConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if pnCon.Visible = True then
   begin
      if (key = VK_DOWN) and (not grConsulta.Focused = true) then
         dmCad.qryPlanoCOnta.Next;
      if (key = VK_UP) and (not grConsulta.Focused = true) then
         dmCad.qryPlanoCOnta.Prior;
   end;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryPlanoCOnta.RecordCount);
end;

procedure TFcad_PlanoConta.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_PlanoConta.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

procedure TFcad_PlanoConta.cxApagaFotoClick(Sender: TObject);
begin
  inherited;
   if (cxSalvar.Enabled = false) or (dmCad.qryPlanoContaItem.RecordCount<=0) then
   begin
      Msg('Não é possível completar esta ação!','I',':P');
      abort;
   end;
   eTotalPerc.Value := eTotalPErc.Value - dmcad.qryPlanoContaItem.FIeldbyname('PERCENTUAL').AsFLoat;
   dmcad.qryPlanoContaItem.Delete;
end;

procedure TFcad_PlanoConta.cxApagarClick(Sender: TObject);
begin
   inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmCad.qryPlanoCOnta.Delete;
         dmCad.qryPlanoCOnta.ApplyUpdates(0);
      Except
         dmCad.qryPlanoCOnta.CancelUpdates;
      end;
   end;
end;

procedure TFcad_PlanoConta.cxCancelaClick(Sender: TObject);
begin
   inherited;
   dmcad.qryPlanoConta.CancelUpdates;
   dmcad.qryPlanoContaItem.CancelUpdates;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_PlanoConta.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDPLANO';
      1: indice := 'NOMEPLANO';
   end;

   StrSql := 'SELECT '+#13+
         ' * '+#13+
         ' FROM PLANOCONTA '+#13+
         ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   if cbAtivo.ItemIndex > 0 then
      StrSql := StrSql + ' and ATIVO='+QuotedStr(ifs(cbAtivo.ItemIndex=1, 'S','N'));
   if TipoPlano <> TODOS then
      StrSQl := StrSql + ' and TIPOPLANO LIKE '+QuotedStr('%'+ifs(TipoPlano = RECEITA,'RECEITAS', 'DESPESAS')+'%');

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmCad.qryPlanoConta);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryPlanoConta.RecordCount);
end;

procedure TFcad_PlanoConta.cxEditaClick(Sender: TObject);
begin
   if dmCad.qryPlanoConta.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   inherited;
   Limpa;
   Edita;
end;

procedure TFcad_PlanoConta.cxNovoClick(Sender: TObject);
begin
   inherited;
   dmCad.qryPlanoConta.Insert;
   eCodigo.TExt := dmCad.qryPlanoConta.Fieldbyname('IDPLANO').AsString;
   ConsultaItemPlano(StrToInt(ecodigo.Text));
   Limpa;
   eDescricao.SetFocus;
end;

procedure TFcad_PlanoConta.cxSalvaFotoClick(Sender: TObject);
begin
   inherited;
   if (cxSalvar.Enabled = false) then
   begin
      Msg('Não é possível completar esta ação!','I',':P');
      abort;
   end;
   if not VerificaCusto(StrToInt(eCodCusto.Text)) then
   begin
      Msg('Este Centro de Custo já foi incluído!','I',';P');
      abort;
   end;
   if ((eTotalPerc.Value+ePercentual.Value) >100) then
   begin
      Msg('O total de percentual para rateio deve ser de (100%)!','I',';P');
      Abort;
   end;
   dmcad.qryPlanoContaItem.Append;
   dmcad.qryPlanoContaItem.Fieldbyname('IDPLANO').AsInteger   := StrToInt(ecodigo.Text);
   dmcad.qryPlanoContaItem.Fieldbyname('IDCCUSTO').AsInteger  := StrToInt(eCodCusto.TExt);
   dmcad.qryPlanoContaItem.Fieldbyname('PERCENTUAL').AsFloat  := ePercentual.Value;
   dmcad.qryPlanoContaItem.Fieldbyname('DESCRICAO').AsString  := eCusto.Text;
   dmcad.qryPlanoContaItem.Post;
   eTotalPerc.Value := eTotalPErc.Value + ePercentual.Value;
   LimpaItem;
   eCodCusto.SetFOcus;
end;

Procedure TFcad_PlanoConta.LimpaItem;
begin
   ecodCusto.Text    := '0';
   eCusto.Text       := 'NENHUM';
   ePercentual.Value := 0;
end;

procedure TFcad_PlanoConta.cxSalvarClick(Sender: TObject);
begin
   ValidaCampoTag(Fcad_PlanoConta);

   if (eTotalPerc.Value >0) and (eTotalPerc.Value<100) then
   begin
      Msg('Atenção! O percentual dos rateios deve ser igual a 100%, verifique!','I',':|');
      abort;
   end;

   with dmCAd.qryPlanoConta do
   begin
      try
         Fieldbyname('NOMEPLANO').AsString := eDescricao.Text;
         FieldByName('TIPOPLANO').AsString := cxTipoPlano.Text;
         FieldByName('DRE').asString       := ifs(cxDre.Itemindex = 0, 'S', 'N');
         FieldByName('ATIVO').asString     := ifs(eAtivo.Checked = True, 'S', 'N');

         Post;
         ApplyUpdates(0);
         dmCad.qryPlanoContaItem.ApplyUpdates(0);
         inherited;
      Except
         CancelUpdates;
         dmCad.qryPlanoContaItem.CancelUpdates;
      end;
   end;
end;

procedure TFcad_PlanoConta.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_PlanoConta.eCodCustoExit(Sender: TObject);
begin
  inherited;
   eCusto.Text       :=  ConsultaCampoNomeAtivo(eCodCusto.Text, 'CCUSTO');
   if eCusto.Text ='NENHUM' then
      eCodCusto.Text := '0';
end;

procedure TFcad_PlanoConta.eCodCustoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   AbreTelaComShowModal(TFcad_Generica, TObject(Fcad_Generica), NIl, 'CCUSTO');

   if ID > 0 then
   begin
      eCodCusto.Text := intToStr(ID);
      eCusto.Text    := DESCRICAO;
   end;
end;

procedure TFcad_PlanoConta.Edita;
begin
   with dmCAd.qryPlanoConta do
   begin
      try
         eCodigo.TExt          := Fieldbyname('IDPLANO').AsString;
         eDescricao.Text       := Fieldbyname('NOMEPLANO').AsString;
         cxTipoPlano.ItemIndex := StrToInt(Copy(FieldByName('TIPOPLANO').AsString,1,1))-1;
         cxDre.Itemindex       := ifs(FieldByName('DRE').asString = 'S', 0, 1);
         eAtivo.Checked        := ifs(FieldByName('ATIVO').asString = 'S' , True, False);
         ConsultaItemPlano(StrToInt(Fieldbyname('IDPLANO').AsString));
         Edit;
      Except
      end;
   end;
end;

procedure TFcad_PlanoConta.Limpa;
begin
   eCodigo.TExt          := '0';
   eDescricao.Clear;
   cxTipoPlano.ItemIndex := 0;
   cxDre.Itemindex       := 0;
   eAtivo.Checked        := True;
   eTotalPerc.Value      := 0;
end;

Procedure TFcad_PLanoCOnta.ConsultaItemPlano(StrCodigo: Integer);
begin
   ConsultaSql('select Sum(PERCENTUAL) PERCENTUAL from PLANOCONTAITEM where IDPLANO='+IntToStr(StrCodigo),dmCAd.qryAux);
   eTotalPErc.Value := dmCad.qryAux.Fieldbyname('PERCENTUAL').AsFloat;

   ConsultaSql('SELECT A.*, B.DESCRICAO FROM PLANOCONTAITEM A '+#13+
      ' LEFT JOIN GENERICA B  on A.IDCCUSTO = B.IDGENERICA AND TABELA='+QuotedStr('CCUSTO')+' WHERE IDPLANO='+intToStr(StrCodigo)+' order by IDPLANOITEM', dmcad.qryPlanoContaItem);
end;

Function TFcad_PlanoConta.VerificaCusto(intCCusto: Integer): Boolean;
begin
   Result            := True;
   with dmCad.qryPlanoContaItem do
   begin
      First;
      While not Eof do
      begin
         if intCCusto = FieldByName('IDCCUSTO').AsInteger then
            Result   := False;
         Next;
      end;
   end;
end;

end.
