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
  uPai in '..\Cadastros\uPai.pas' {Fcad_Pai},
  uSerial in '..\Acesso\uSerial.pas' {FCad_Serial},
  uCad_Captcha in '..\Acesso\uCad_Captcha.pas' {Fcon_Captcha},
  uCad_Clientes in '..\Cadastros\uCad_Clientes.pas' {Fcad_Clientes},
  uCad_Cidade in '..\Cadastros\uCad_Cidade.pas' {Fcad_Cidade},
  uCad_Animais in '..\Cadastros\uCad_Animais.pas' {Fcad_Animais},
  uCon_Generica in '..\Cadastros\uCon_Generica.pas' {Fcad_Generica},
  uDmRel in '..\Acesso\uDmRel.pas' {dmRel: TDataModule},
  uRelatorios in '..\Rotinas\uRelatorios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema PetClinic - Desenvolvido por DRB Sistemas Comerciais (44) 3264-5078';
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
