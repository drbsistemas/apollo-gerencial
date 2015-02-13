unit uCad_Banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, RxMenus, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxImage;

type
  TFcad_Banco = class(TFcad_Pai)
    procedure FormShow(Sender: TObject);
    procedure cxConsultaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    indice :string;
  public
    { Public declarations }
  end;

var
  Fcad_Banco: TFcad_Banco;

implementation

{$R *.dfm}

uses uRotinas, uDmCad;

procedure TFcad_Banco.cxConsultaPropertiesChange(Sender: TObject);
begin
   inherited;
   case cxConsulta.ItemIndex of
      0: indice := 'IDBANCO';
      1: indice := 'BANCO';
   end;
   StrSql := ' SELECT * FROM BANCO '+#13+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%');


   StrSql := StrSql +' order by '+indice;
   ConsultaSql(StrSql, dmcad.qryBanco);

   cxQtdeReg.Caption := 'Registros: '+ intToStr(dmCad.qryBanco.RecordCount);
end;

procedure TFcad_Banco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ID               := dmCad.qryBanco.Fieldbyname('IDBANCO').AsInteger;
   DESCRICAO        := dmCad.qryBanco.FieldByName('BANCO').AsString;

   inherited;

   if pnBotaoCon.Visible = False then
   begin
      FormAtivo     := Nil;
      pFundo(1);
   end;
   Fcad_Banco       := Nil;
   Action           := CaFree;
end;

procedure TFcad_Banco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmCad.qryBanco.Next;
   if (key = VK_UP) and (not grConsulta.Focused = true) then
      dmCad.qryBanco.Prior;

   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.qryBanco.RecordCount);
end;

procedure TFcad_Banco.FormShow(Sender: TObject);
begin
   inherited;
   cxConsultaPropertiesChange(self);
end;

end.
