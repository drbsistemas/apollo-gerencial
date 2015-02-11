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
  uRotinaDeImpressaoDeRelatorios in '..\Rotinas\uRotinaDeImpressaoDeRelatorios.pas',
  uCad_Empresa in '..\Cadastros\uCad_Empresa.pas' {FCad_Empresa},
  NFe_Util_2G_TLB in 'C:\Users\DANILO\Documents\Embarcadero\Studio\14.0\Imports\NFe_Util_2G_TLB.pas',
  uCad_Produto in '..\Cadastros\uCad_Produto.pas' {Fcad_Produto},
  uRotinaDeEstoque in '..\Rotinas\uRotinaDeEstoque.pas',
  uCad_Estoque in '..\Cadastros\uCad_Estoque.pas' {FCad_Estoque},
  Vcl.Themes,
  Vcl.Styles,
  uRotinaDeCalculosMatematicos in '..\Rotinas\uRotinaDeCalculosMatematicos.pas',
  uCad_Balanco in '..\Cadastros\uCad_Balanco.pas' {Fcad_Balanco},
  uCon_Relatorio in '..\Relatorios\uCon_Relatorio.pas' {Fcon_Relatorio},
  udmMov in '..\Movimentacao\udmMov.pas' {dmMov: TDataModule},
  uCad_Pedido in '..\Movimentacao\uCad_Pedido.pas' {Fcad_Pedido},
  uCad_Pagto in '..\Cadastros\uCad_Pagto.pas' {Fcad_Pagto},
  uCad_Ncm in '..\Cadastros\uCad_Ncm.pas' {Fcad_NCM},
  uRotinaDeCalculosMovimentacao in '..\Rotinas\uRotinaDeCalculosMovimentacao.pas',
  uCad_Endereco in '..\Cadastros\uCad_Endereco.pas' {Fcad_Endereco},
  uCad_Credito in '..\Financeiro\uCad_Credito.pas' {FCad_Credito},
  uPaiFinanceiro in '..\Financeiro\uPaiFinanceiro.pas' {Fcad_PaiFinanceiro},
  uConsultaDadosCliente in '..\Rotinas\uConsultaDadosCliente.pas',
  udmFin in '..\Financeiro\udmFin.pas' {dmFin: TDataModule},
  uRotinaLancamentoFinanceiro in '..\Rotinas\uRotinaLancamentoFinanceiro.pas',
  uCad_Conta in '..\Financeiro\uCad_Conta.pas' {Fcad_Contas},
  uCad_PlanoConta in '..\Cadastros\uCad_PlanoConta.pas' {Fcad_PlanoConta},
  uCad_Baixa in '..\Financeiro\uCad_Baixa.pas' {Fcad_Baixa},
  uCad_Parametro in '..\Cadastros\uCad_Parametro.pas' {FCad_Parametro},
  uCad_Caixa in '..\Financeiro\uCad_Caixa.pas' {Fcad_Caixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema PetClinic - Desenvolvido por DRB Sistemas Comerciais (44) 3264-5078';
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
