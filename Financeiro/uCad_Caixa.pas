unit uCad_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Silver, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, RxMenus,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls, dxGDIPlusClasses, cxImage,
  cxGroupBox, Datasnap.DBClient;

type
  TFcad_Caixa = class(TFcad_Pai)
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    grConsultaDBTableView1Column4: TcxGridDBColumn;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dsResumo: TDataSource;
    cdsResumo: TClientDataSet;
    cdsResumoDESCRICAO: TStringField;
    cdsResumoVALOR: TFloatField;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
  private
    { Private declarations }
    indice : String;
    Procedure Limpa;
    Procedure Edita;
    procedure ConsultaMov;
    procedure SomaFpagto;
  public
    { Public declarations }
  end;

var
  Fcad_Caixa: TFcad_Caixa;

implementation

{$R *.dfm}

uses udmFin, uRotinas;

procedure TFcad_Caixa.cxApagarClick(Sender: TObject);
begin
  inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmFIn.qryCaixa.Delete;
         dmFIn.qryCaixa.ApplyUpdates(0);
      Except
         dmFIn.qryCaixa.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Caixa.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCAIXA';
      1: indice := 'BANCO';
   end;
   StrSQl := 'select * from CAIXA '+#13+
      ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');

   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmFin.qryCaixa);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryCaixa.RecordCount);
end;

procedure TFcad_Caixa.cxEditaClick(Sender: TObject);
begin
   if dmFin.qryCaixa.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;
   inherited;
   Limpa;
   Edita;
end;

procedure TFcad_Caixa.cxNovoClick(Sender: TObject);
begin
   inherited;
   Limpa;
   cbPessoa.SetFocus;
end;

procedure TFcad_Caixa.cxVerClick(Sender: TObject);
begin
   inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Caixa.cxVoltarClick(Sender: TObject);
begin
   inherited;
   ID               := dmFin.qryCaixa.Fieldbyname('IDCAIXA').AsInteger;
   DESCRICAO        := dmFin.qryCaixa.FieldByName('BANCO').AsString;
end;

procedure TFcad_Caixa.Edita;
begin
   //
end;

procedure TFcad_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmFin.qryCaixa.Fieldbyname('IDCAIXA').AsInteger;
   DESCRICAO        := dmFin.qryCaixa.FieldByName('BANCO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;

   Fcad_Caixa       := Nil;
   Action           := CaFree;
end;

procedure TFcad_Caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;

   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFin.qryCaixaItem.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFin.qryCaixaItem.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFin.qryCaixa.RecordCount);
end;

procedure TFcad_Caixa.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Caixa.grConsultaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if pnBotaoCon.Visible = false then
      cxEditaClick(Self) else
      Close;
end;

procedure TFcad_Caixa.Limpa;
begin
   //
end;

procedure TFcad_Caixa.ConsultaMov;
begin
{   dmFinanceiro.cdsItCaixa.Close;
   dmFinanceiro.cdsItCaixa.CommandText := 'Select * from ITEMCAIXA '+
   ' where IDITEMCAIXA>0 and IDCAIXA='+dmFInanceiro.cdsCaixaIDCAIXA.ASString +
   ' order by DATAITEM ';
   dmFinanceiro.cdsItCaixa.Open;
   dmFinanceiro.cdsItCaixa.Last;
   SomaFPagto; }
end;

procedure TFcad_Caixa.SomaFpagto;
begin
   StrSql := 'SELECT SUM(A.CREDITO-A.DEBITO) VALOR, A.IDFPAGTO, B.DESCRICAO FROM ITEMCAIXA A  '+#13+
      ' left join GENERICA B on A.IDFPAGTO=B.IDGENERICA and B.TABELA='+QuotedStr('FPAGTO') +#13+
      ' where A.IDCAIXA='+dmFin.qryCaixa.FieldbyName('IDCAIXA').AsString +
      ' group by IDFPAGTO, DESCRICAO ';

   ConsultaSql(StrSql, dmFin.qryAux);

   cdsResumo.Close;
   cdsResumo.CreateDataSet;
   cdsResumo.Open;
   cdsResumo.EmptyDataSet;
   while not dmFin.qryAux.Eof do
   begin
      cdsResumo.Append;
      cdsResumoDESCRICAO.AsString := dmFin.qryAux.Fieldbyname('DESCRICAO').asString;
      cdsResumoVALOR.AsFloat      := dmFin.qryAux.Fieldbyname('VALOR').AsFloat;
      cdsResumo.Post;
      dmFIn.qryAux.Next;
   end;
end;

end.
