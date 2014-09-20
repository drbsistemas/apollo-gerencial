program PetClinic;

uses
  Vcl.Forms,
  uPrinc in 'uPrinc.pas' {FPrinc},
  uRotinas in '..\Rotinas\uRotinas.pas',
  uDmCon in '..\Acesso\uDmCon.pas' {dmCon: TDataModule},
  uConexao in '..\Acesso\uConexao.pas',
  uMsg in '..\Acesso\uMsg.pas' {Fmsg},
  LoginWindow_U in 'C:\Program Files (x86)\Embarcadero\Studio\14.0\LibAdicional\UserControlXE6\Source\LoginWindow_U.pas' {frmLoginWindow},
  uDmCad in '..\Acesso\uDmCad.pas' {dmCad: TDataModule},
  uPai in '..\Cadastros\uPai.pas' {Form2},
  uSerial in '..\Acesso\uSerial.pas' {FCad_Serial},
  uCad_Captcha in '..\Acesso\uCad_Captcha.pas' {Fcon_Captcha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
