program Nfse;

{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}

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
  uPai in '..\Cadastros\uPai.pas' {Fcad_Pai},
  Vcl.Themes,
  Vcl.Styles,
  uCad_Cidade in '..\Cadastros\uCad_Cidade.pas' {Fcad_Cidade},
  uCad_Servico in '..\Cadastros\uCad_Servico.pas' {FCad_Servicos},
  uCad_Empresa in '..\Cadastros\uCad_Empresa.pas' {FCad_Empresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Slate Classico');
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
