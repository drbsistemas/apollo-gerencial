unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.TypInfo;

type
  TFPrinc = class(TForm)
    Procedure PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

{$R *.dfm}

uses uRotinas, uConexao;

procedure ShowHint(Sender: TObject);
begin
//  if Length(Application.Hint) > 0 then
//    stHint.caption := Application.Hint
//  else
//    StHint.caption := '';
end;

procedure TFPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Msg('de fechar o sistema pode ser concluído?','P',':(') then
      Application.Terminate else
      Abort;
end;

procedure TFPrinc.FormCreate(Sender: TObject);
begin
   Application.OnMessage := PegaNomeForm;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;
//   Application.OnHint := ShowHint;
   AbreConexao;
end;

procedure TFPrinc.PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
var
   Rect: TRect;
   TD: PTypeData;
begin
   if (GetASyncKeyState(VK_CONTROL) <> 0) then
      if (msg.Message = WM_RBUTTONDOWN) then
      begin
         TD := GetTypeData(Screen.ActiveForm.ClassInfo);
         ShowMessage('Titulo: '+Screen.ActiveForm.Caption +#13+
             'Form.: '+uppercase(Screen.ActiveForm.Name)+#13+
             'Unit...: '+uppercase(TD^.UnitName));
      end;
end;

end.
