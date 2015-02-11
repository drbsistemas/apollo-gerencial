unit uCad_Baixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Silver, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.Grids, Vcl.DBGrids, cxGroupBox,
  cxRadioGroup, cxCurrencyEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Datasnap.DBClient;

type
  TFcad_Baixa = class(TForm)
    pnTop: TPanel;
    cxContas: TcxLabel;
    cxLabel14: TcxLabel;
    eData: TcxDateEdit;
    grSelec: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    STATUS: TcxGridDBColumn;
    IDCONTA: TcxGridDBColumn;
    NOMECLIE: TcxGridDBColumn;
    DTEMISSAO: TcxGridDBColumn;
    DCUMENTO: TcxGridDBColumn;
    VENCTO: TcxGridDBColumn;
    VLRINI: TcxGridDBColumn;
    VLRJUROS: TcxGridDBColumn;
    VLRMULTA: TcxGridDBColumn;
    VLRBRUTO: TcxGridDBColumn;
    DIASATRASO: TcxGridDBColumn;
    VLRPAGO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnCorpo: TPanel;
    pnCond: TcxGroupBox;
    eFPagto: TcxTextEdit;
    eCodFpagto: TcxTextEdit;
    cxLabel6: TcxLabel;
    eVlrPago: TcxCurrencyEdit;
    cxBaixa: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    eVlrIni: TcxCurrencyEdit;
    cxGroupBox3: TcxGroupBox;
    eJuros: TcxCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    eDesc: TcxCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    eTotal: TcxCurrencyEdit;
    cxGroupBox5: TcxGroupBox;
    ePago: TcxCurrencyEdit;
    cxGroupBox7: TcxGroupBox;
    eRestante: TcxCurrencyEdit;
    cxGroupBox8: TcxGroupBox;
    cxOpcao: TcxRadioGroup;
    DBGrid1: TDBGrid;
    pnMenu: TPanel;
    cxSalvar: TcxButton;
    cxCancela: TcxButton;
    cdsFPagto: TClientDataSet;
    dsFPagto: TDataSource;
    cdsFPagtoID: TIntegerField;
    cdsFPagtoDESCRICAO: TStringField;
    cdsBaixa: TClientDataSet;
    dsBaixa: TDataSource;
    cdsBaixaDATAMOV: TDateTimeField;
    cdsBaixaIDCAIXA: TIntegerField;
    cdsBaixaIDPLANO: TIntegerField;
    cdsBaixaIDCARTAO: TIntegerField;
    cdsBaixaTXCARTAO: TFloatField;
    cdsBaixaVLRPAGO: TFloatField;
    cdsBaixaHISTORICO: TStringField;
    cdsBaixaIDFPAGTO: TIntegerField;
    cdsBaixaDESCRICAO: TStringField;
    cdsBaixaDOCUMENTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCodFpagtoKeyPress(Sender: TObject; var Key: Char);
    procedure eCodFpagtoExit(Sender: TObject);
    procedure eVlrPagoExit(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxSalvarClick(Sender: TObject);
  private
    procedure CalculaBaixa;
    procedure PreencheFPagto;
    procedure BaixaFPagto;
    procedure CalculaFPagto;
    procedure GeraTroco;
    procedure ApagaBaixa;
    procedure AbreCds;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Baixa: TFcad_Baixa;

implementation

{$R *.dfm}

uses udmFin, uRotinas, uRotinaDeCalculosMovimentacao;


Procedure TFcad_Baixa.CalculaBaixa;
begin
   eData.DAte := DAte;
   with dmFin do
   begin
      cdsSelec.DisableControls;
      cdsSelec.first;
   ///// Zera os CAmpos
      eVlrini.Value  := 0;
      eJuros.VAlue   := 0;
      eDesc.Value    := 0;
      eTotal.Value   := 0;
      eRestante.VAlue:= 0;
      ePago.Value    := 0;
   /////
      while not cdsSelec.eof do
      begin
         eVlrIni.Value     := eVlrIni.Value + cdsSelecVLRINI.Value;
         eJuros.Value      := ejuros.VAlue + (cdsSelecVLRJUROS.Value + cdsSelecVLRMULTA.Value);
         eDesc.Value       := eDesc.Value + cdsSelecVLRDESC.Value;
         eTotal.Value      := (eVlrini.Value + eJuros.Value) - eDesc.Value;
         eRestante.Value   := eTotal.Value - ePago.Value;
         cdsSelec.Next;
      end;
      cdsSelec.first;
      cdsSelec.EnableControls;
   end;
end;

procedure TFcad_Baixa.cxCancelaClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Baixa.cxGridDBTableView2DblClick(Sender: TObject);
begin
   ApagaBaixa;
end;

procedure TFcad_Baixa.cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_DELETE) and (cxOpcao.Visible = true) then
   begin
      ApagaBaixa;
      pnCond.Visible := true;
   end;
end;

procedure TFcad_Baixa.cxSalvarClick(Sender: TObject);
begin
   //
end;

procedure TFcad_Baixa.eCodFpagtoExit(Sender: TObject);
begin
   with dmFin do
   begin
///// BuscaFpagto
      if eCodFpagto.text ='0' then
         Exit;

      ConsultaSql('select * from GENERICA where TABELA='+QuotedStr('FPAGTO')+' and IDGENERICA='+QuotedStr(eCodFpagto.TExt)+' order by IDGENERICA',qryAux);

      if (qryAux.fieldbyname('IDGENERICA').AsInteger<=0) or ((TipoMov = ENTRADA) and (qryAux.fieldbyname('IDGENERICA').AsInteger=4)) then
      begin
         Msg('A forma de pagamento escolhida é inválida, verifique na tabela ao lado!','I',':P');
         eCodFpagto.Text := '0';
         eFpagto.Clear;
         ecodFpagto.SetFocus;
         abort;
      end;
      if (eCodFPagto.Text = qryAux.fieldbyname('IDGENERICA').asString) then
         eFPagto.Text := qryAux.fieldbyname('DESCRICAO').asString else
      begin
         eCodFPagto.Text := '0';
         eFpagto.CLear;
      end;
   end;
end;

procedure TFcad_Baixa.eCodFpagtoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #8, ',']) then key := #0;
end;

procedure TFcad_Baixa.eVlrPagoExit(Sender: TObject);
begin
   if (eCodFpagto.Text<>'0') and (eVlrPago.value>0) then
   begin
      BaixaFPagto;
   ///// Troco
      if eResTante.Value < 0 then
         GeraTroco;
   ///// Limpa
      ecodFpagto.Text   := '0';
      eFPagto.Clear;
      eVlrPago.Value    := 0;
      eCodFpagto.SetFocus;
   ///// Finaliza
      if eRestante.Value = 0 then
         pnCOnd.VIsible := false;
   end;
end;

procedure TFcad_Baixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcad_Baixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
///// Deletar formas de pagamento
   if Key = VK_F2 then
   begin
      cdsBaixa.Last;
      ApagaBaixa;
   end;
///// opção (F2)
   if Key = VK_F1 then
   begin
      if cxOpcao.Itemindex = 0 then
         cxOpcao.ItemIndex := 1 else
         cxOpcao.Itemindex  := 0;
   end;
//// Baixar (F4)
   if Key = Vk_F4 then
      cxSalvarClick(self);

///// Cancelar (F10)
   if key = VK_F10 then
      cxCancelaClick(self);
end;

procedure TFcad_Baixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Baixa.FormShow(Sender: TObject);
begin
   CalculaBaixa;
   AbreCds;
   PreencheFPagto;
end;

Procedure TFcad_BAixa.PreencheFPagto;
begin
   with dmFin do
   begin
      ConsultaSQl('SELECT * FROM GENERICA WHERE TABELA='+QuotedStr('FPAGTO')+' order By IDGENERICA',qryAUx);

      while not qryAux.Eof do
      begin
         if (TipoMov = ENTRADA) and (qryAux.fieldbyname('IDGENERICA').AsInteger=4) then
            qryAux.Next else
            begin
               cdsFPagto.Append;
               cdsFPagtoID.AsInteger       := qryAux.fieldbyname('IDGENERICA').AsInteger;
               cdsFPagtoDESCRICAO.AsString := qryAux.fieldbyname('DESCRICAO').asString;
               cdsFPagto.Post;
            end;
         qryAux.Next;
      end;
   end;
   eCOdFpagto.SetFocus;
end;

Procedure TFcad_Baixa.BaixaFPagto;
begin
   cdsBaixa.Append;
   cdsBaixaDOCUMENTO.AsString    := dmFIn.cdsSelecIDCONTA.AsString;
   cdsBaixaIDFPAGTO.AsInteger    := StrToInt(eCodFpagto.Text);
   cdsBaixaDESCRICAO.AsString    := eFpagto.Text;
   cdsBaixaDATAMOV.AsDateTime    := eData.Date + Time;
   cdsBaixaIDCAIXA.AsInteger     := StrToInt(BUSCACONF('IDCAIXAPADRAO'));
   cdsBaixaIDPLANO.AsInteger     := StrToint(BUSCACONF('IDPLANOPADRAO'));
   cdsBaixaIDCARTAO.AsInteger    := 0;
   cdsBaixaTXCARTAO.AsFloat      := 0;
   cdsBaixaVLRPAGO.AsFloat       := eVlrPago.Value;
   if TipoMov = ENTRADA then
      cdsBaixaHISTORICO.AsString := UpperCase('Receb. '+cdsBaixaDESCRICAO.AsString) else
   if TipoMov = SAIDA then
      cdsBaixaHISTORICO.AsString := UpperCase('Pagto. '+cdsBaixaDESCRICAO.AsString);
   cdsBaixa.Post;
   CalculaFPagto;
end;

procedure TFcad_Baixa.CalculaFPagto;
var FpValor: Double;
begin
   FpValor := 0;

   cdsBaixa.First;
   while not cdsBaixa.Eof do
   begin
      FpValor := FpValor + cdsBaixaVLRPAGO.VAlue;
      cdsBaixa.Next;
   end;
   ePago.Value := FpValor;
   eRestante.Value := eTotal.Value - FpValor;
end;

procedure TFcad_Baixa.GeraTroco;
begin
   cdsBaixa.Append;
   cdsBaixaIDFPAGTO.AsInteger        := 0;
   cdsBaixaDESCRICAO.AsString        := 'TROCO';
   cdsBaixaDATAMOV.AsDateTime        := eData.Date + Time;
   cdsBaixaIDCAIXA.AsInteger         := StrToInt(BUSCACONF('IDCAIXAPADRAO'));
   cdsBaixaIDPLANO.AsInteger         := StrToint(BUSCACONF('IDPLANOPADRAO'));
   cdsBaixaIDCARTAO.AsInteger        := 0;
   cdsBaixaTXCARTAO.AsFloat          := 0;
   cdsBaixaVLRPAGO.AsFloat           := eResTante.VAlue;
   cdsBaixa.Post;
   CalculaFPagto;
end;

Procedure TFCad_Baixa.ApagaBaixa;
begin
   if cdsBaixa.RecordCount > 0 then
   begin
      cdsBaixa.Delete;
      CalculaFPagto;
   end;
   pnCond.Visible := true;
   eCodFpagto.SetFocus;
end;

Procedure TFcad_Baixa.AbreCds;
begin
   cdsFpagto.Close;
   cdsFPagto.CreateDataSet;
   cdsFpagto.Open;
   cdsFpagto.EmptyDataSet;

   cdsBaixa.Close;
   cdsBaixa.CreateDataSet;
   cdsBaixa.Open;
   cdsBaixa.EmptyDataSet;
end;

end.
