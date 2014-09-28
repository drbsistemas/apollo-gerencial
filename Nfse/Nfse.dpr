program Nfse;

uses
  Vcl.Forms,
  UPrinc in 'UPrinc.pas' {FPrinc},
  uCad_Captcha in '..\Acesso\uCad_Captcha.pas' {Fcon_Captcha},
  uCad_Ini in '..\Acesso\uCad_Ini.pas' {FCad_Ini},
  uConexao in '..\Acesso\uConexao.pas',
  uDmCad in '..\Acesso\uDmCad.pas' {dmCad: TDataModule},
  uDmCon in '..\Acesso\uDmCon.pas' {dmCon: TDataModule},
  uMsg in '..\Acesso\uMsg.pas' {Fmsg},
  uSerial in '..\Acesso\uSerial.pas' {FCad_Serial},
  uRotinas in '..\Rotinas\uRotinas.pas',
  uCad_Clientes in '..\Cadastros\uCad_Clientes.pas' {Fcad_Clientes},
  uPai in '..\Cadastros\uPai.pas' {Fcad_Pai};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
