program Gerencial;

uses
  Vcl.Forms,
  uPrinc in 'uPrinc.pas' {FPrinc},
  uRotinas in '..\Rotinas\uRotinas.pas',
  uMsg in '..\Acesso\uMsg.pas' {Fmsg},
  uConexao in '..\Acesso\uConexao.pas',
  uCad_Ini in '..\Acesso\uCad_Ini.pas' {FCad_Ini};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
