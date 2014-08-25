unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFPrinc = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
   if Msg('de fechar o sistema pode ser conclu�do?','P') then
      Application.Terminate else
      Abort;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;
   Application.OnHint := ShowHint;
   AbreConexao;
end;

end.