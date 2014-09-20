unit uSerial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxMemo, cxLabel, cxGroupBox;

type
  TFCad_Serial = class(TForm)
    cxPanel: TcxGroupBox;
    cxRosto: TcxLabel;
    cxMSg: TcxMemo;
    cxSim: TcxButton;
    cxNao: TcxButton;
    eSerial: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxNaoClick(Sender: TObject);
    procedure cxSimClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Serial: TFCad_Serial;

implementation

{$R *.dfm}

uses uPrinc, uCad_Captcha, uRotinas;

procedure TFCad_Serial.cxNaoClick(Sender: TObject);
begin
   if (Fprinc = NIl) or (Fprinc.Showing = false) then
   begin
      Msg('Nosso software não pode trabalhar sem uma licença válida, teremos que fechar, contate nosso suporte!','I','=/');
      Application.Terminate
   end
   else    // Verificar este terminate
      Close;
end;

procedure TFCad_Serial.cxSimClick(Sender: TObject);
begin
   Fcon_captcha := TFcon_Captcha.Create(selF);
   Fcon_captcha.ShowModal;
   if Fcon_Captcha.cxSim.Tag=0 then
      Abort;
   Fcon_Captcha.Free;
end;

procedure TFCad_Serial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F4 then
      cxSimClick(self) else
   if key = vk_F7 then
      cxNaoClick(self);
end;

procedure TFCad_Serial.FormShow(Sender: TObject);
begin
   eSerial.Clear;
   eSerial.SetFocus;
end;

end.
