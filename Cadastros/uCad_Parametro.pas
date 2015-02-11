unit uCad_Parametro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPaiFinanceiro, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2010Silver, cxControls, cxContainer, cxEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxCurrencyEdit;

type
  TFCad_Parametro = class(TFcad_PaiFinanceiro)
    pnEdita: TPanel;
    eStr: TcxTextEdit;
    eVlr: TcxCurrencyEdit;
    eInt: TcxCurrencyEdit;
    eMsg: TcxLabel;
    cxLabel3: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxGrava: TcxButton;
    cxCancelar: TcxButton;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    procedure cxVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxGravaClick(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    indice : String;
  public
    { Public declarations }
  end;

var
  FCad_Parametro: TFCad_Parametro;

implementation

{$R *.dfm}

uses uRotinas, uDmCad;

procedure TFCad_Parametro.cxCancelarClick(Sender: TObject);
begin
   inherited;
   pnEdita.Visible         :=false;
   grConsulta.Enabled      :=true;
   pnBusca.Enabled         := true;
   pnBotaoCad.Enabled      := true;
   Application.ProcessMessages;
end;

procedure TFCad_Parametro.cxConsultaPropertiesChange(Sender: TObject);
begin
   case cxCOnsulta.ItemIndex of
      0: indice := 'IDPARAMETRO';
      1: indice := 'RESUMOCONF';
      2: indice := 'MODULO';
   end;
   StrSql := 'Select * from PARAMETRO where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+
      ' order by '+indice;
   ConsultaSql(StrSql, dmCad.qryParametro);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryParametro.RecordCount);
   inherited;
end;

procedure TFCad_Parametro.cxGravaClick(Sender: TObject);
begin
   inherited;
   dmCad.qryparametro.Edit;
   if cbAtivo.Visible=true then
      dmCad.qryParametro.FieldByName('VALORCONF').AsString := cbAtivo.Text else
   if eint.visible=true then
      dmCad.qryParametro.FieldByName('VALORCONF').AsString := eInt.Text else
   if eStr.Visible=true then
      dmCad.qryParametro.FieldByName('VALORCONF').AsString := eStr.Text else
   if eVlr.Visible=true then
      dmCad.qryParametro.FieldByName('VALORCONF').AsString := FormatFloat('###,###,##0.00',eVlr.Value) else
   if eStr.Visible=true then
      dmCad.qryParametro.FieldByName('VALORCONF').AsString := eStr.Text;

   try
      dmCad.qryParametro.Post;
      dmCad.qryParametro.ApplyUpdates(0);

      cxCancelarClick(Self);
   except
      Msg('O sistema não conseguiu atualizar esta configuração, tente novamente!','I',':O');
   end;
end;

procedure TFCad_Parametro.cxVoltarClick(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFCad_Parametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   FormAtivo        := Nil;
   pFundo(1);
   Fcad_parametro   := Nil;
   Action           := CaFree;
end;

procedure TFCad_Parametro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryParametro.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmCad.qryParametro.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryParametro.RecordCount);
end;

procedure TFCad_Parametro.FormShow(Sender: TObject);
begin
   inherited;
   FormAtivo     := FCad_Parametro;
   cxConsultaPropertiesChange(self);
end;

procedure TFCad_Parametro.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   inherited;
   pnEdita.BringToFront;
   pnEdita.VIsible       := true;
      pnBusca.Enabled    := False;
      pnBotaoCad.Enabled := False;
   grConsulta.Enabled    := false;

   ///// Deixa todos invisiveis
   cbAtivo.visible       := false;
   eStr.visible          := false;
   eInt.Visible          := False;
   eVLr.VIsible          := False;
/////
   ///// Alimenta o nome do parametro para saber a decisão a ser tomada
   eMsg.Caption := dmCad.qryParametro.Fieldbyname('RESUMOCONF').AsString;
   ///// Ve o tipo do parametro e mostra o campo correspondente.
   if dmCad.qryParametro.FieldByName('TIPOINFO').AsString='B' then
   begin
      cbAtivo.VIsible:=true;
      if dmCad.qryParametro.FieldByName('VALORCONF').AsString = 'SIM' then
         cbAtivo.itemindex:=0 else
         cbAtivo.itemindex:=1;
      cbAtivo.SetFOcus;
   end else
   if dmCad.qryParametro.FieldByName('TIPOINFO').AsString='F' then
   begin
      eVlr.Visible := true;
      eVlr.Value   := StrToFloat(dmCad.qryParametro.FieldByName('VALORCONF').AsString);
      eVlr.SetFocus;
   end else
   if dmCad.qryParametro.FieldByName('TIPOINFO').AsString='I' then
   begin
      eInt.Visible := true;
      eInt.Value   := StrToint(dmCad.qryParametro.FieldByName('VALORCONF').AsString);
      eInt.SetFocus;
   end else
   if dmCad.qryParametro.FieldByName('TIPOINFO').AsString='S' then
   begin
      eStr.Visible := true;
      eStr.Text    := dmCad.qryParametro.FieldByName('VALORCONF').AsString;
      eStr.SetFocus;
   end;
/////
   pnEdita.Left      := (Fcad_Parametro.ClientWidth div 2)-115;
   pnEdita.Top       := (Fcad_Parametro.ClientHeight div 2)-37;
/////
end;

end.
