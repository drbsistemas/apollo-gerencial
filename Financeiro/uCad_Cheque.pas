unit uCad_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit,
  cxCalendar, cxCurrencyEdit;

type
  TFcad_Cheque = class(TFcad_Pai)
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eDtLancamento: TcxDateEdit;
    cxLabel5: TcxLabel;
    eCodPlano: TcxButtonEdit;
    ePlanoCta: TcxTextEdit;
    cxLabel6: TcxLabel;
    eDocumento: TcxTextEdit;
    cxLabel7: TcxLabel;
    eDtVencimento: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    pnTerceiro: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel10: TcxLabel;
    eValorInicial: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    eObs: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    eStatus: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit7: TcxTextEdit;
    cxLabel19: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxApagarClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
  private
    { Private declarations }
     indice :string;
     procedure Edita;
     procedure Limpa;
  public
    { Public declarations }
  end;

var
  Fcad_Cheque: TFcad_Cheque;

implementation

{$R *.dfm}

uses uRotinas, udmFin;

procedure TFcad_Cheque.cxApagarClick(Sender: TObject);
begin
   inherited;
   if Msg('Entendemos sua vontade, mas deseja realmente apagar o registro?','P', ':X') then
   begin
      try
         dmFin.qryCheque.Delete;
         dmFin.qryCheque.ApplyUpdates(0);
      Except
         dmFin.qryCheque.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Cheque.cxCancelaClick(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

procedure TFcad_Cheque.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDCHEQUE';
      1: indice := 'NCHEQUE';
      2: indice := 'NOMEPLANO';
      3: indice := 'DTEMISSAO';
      4: indice := 'DTVENCIMENTO';
   end;

   StrSql := 'select A.*, C.BANCO, D.NOMEPLANO, E.FANTASIA     '+#13+
             ' from cheque A                                   '+#13+
             ' left join caixa B on A.IDCAIXA = B.IDCAIXA      '+#13+
             ' left join banco C on B.IDBANCO = C.IDBANCO      '+#13+
             ' left join PLANOCONTA D on A.IDPLANO = D.IDPLANO '+#13+
             ' left join CLIENTE E on A.IDCLIE = E.IDCLIE      '+#13+
             ' Where '+indice+' LIKE '+QuotedStr('%'+eConsulta.Text+'%')+#13+
             '  order by '+indice;

   ConsultaSql(StrSql, dmFin.qryCheque);
   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmFin.qryCheque.RecordCount);
end;

procedure TFcad_Cheque.cxEditaClick(Sender: TObject);
begin
   if dmFin.qryCheque.RecordCount <= 0 then
   begin
      Msg('Olá, Verificamos que não há nenhum registro para editar, verifique a consulta dos dados','I',':)');
      Abort;
   end;

   inherited;

   Limpa;
   Edita;
   eNCheque.SetFocus;
end;

procedure TFcad_Cheque.cxNovoClick(Sender: TObject);
begin
  inherited;
   Limpa;
   eNCheque.SetFocus;
end;

procedure TFcad_Cheque.cxVerClick(Sender: TObject);
begin
  inherited;
   cxEditaClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcad_Cheque.Edita;
begin
   //
end;

procedure TFcad_Cheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   ID               := dmFin.qryCheque.Fieldbyname('IDCHEQUE').AsInteger;
   DESCRICAO        := dmFin.qryCheque.FieldByName('NOMEPLANO').AsString;

   inherited;
   if pnBotaoCon.Visible = False then
   begin
      FormAtivo        := Nil;
      pFundo(1);
   end;
   if (FormATivo=nil) then
   begin
      Fcad_Cheque    := Nil;
      Action           := CaFree;
   end;
end;

procedure TFcad_Cheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFin.qryCheque.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmFin.qryCheque.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFin.qryCheque.RecordCount);
end;

procedure TFcad_Cheque.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(Self);
end;

procedure TFcad_Cheque.Limpa;
begin
   //
end;

end.
