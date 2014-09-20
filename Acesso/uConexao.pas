unit uConexao;

interface

Uses
   Graphics, System.SysUtils, Forms, IniFiles, System.Classes;

   //Acesso-Conexão
   Procedure AbreAcesso;
   Procedure AbreBanco(EnderecoBanco:String);
   // Licença
   Function ValidaLicenca(): Boolean;
   // Arquivo INI
   Procedure CarregaEmpresa(StrEmpresa: String);
   Function DadosdoIni(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
   Function AbreINI(): TStringList;

implementation

uses uRotinas, uDmCon, uPrinc, uDmCad, uSerial;

procedure AbreAcesso;
begin
   try
      if dmCon = nil then
         Application.CreateForm(TdmCon, dmCon);

      dmCon.FdConAcesso.Params.Clear;
      dmCon.FdConAcesso.Close;
      dmCon.FdConAcesso.Params.Add('Database='+DadosdoIni(CaminhoIni, 'ACESSO', 'BANCO'));
      dmCon.FdConAcesso.Params.Add('User_Name=SYSDBA');
      dmCon.FdConAcesso.Params.Add('Password=masterkey');
      dmCon.FdConAcesso.Params.Add('DriverID=FB');
      dmCon.FDPhysFBDriverLink1.VendorLib := 'gds32.dll'; // Pasta do Aplicativo EXE
      dmcon.FdConAcesso.Open();
   except
      Msg('Ei, não encontramos o banco de dados do acesso, entre em contato com nosso suporte!','I',':(');
      Application.terminate;
   end;
end;

procedure AbreBanco(EnderecoBanco:String);
begin
   try
      if dmCon = nil then
         Application.CreateForm(TdmCon, dmCon);

      dmCon.FdCon.Params.Clear;
      dmCon.FdCon.Close;
      dmCon.FdCon.Params.Add('Database='+EnderecoBanco);
      dmCon.FdCon.Params.Add('User_Name=SYSDBA');
      dmCon.FdCon.Params.Add('Password=masterkey');
      dmCon.FdCon.Params.Add('DriverID=FB');
      dmCon.FDPhysFBDriverLink1.VendorLib := 'gds32.dll'; // Pasta do Aplicativo EXE
      dmcon.FdCon.Open();

   except
      Msg('Encontramos um problema, banco de dados não esta no lugar correto, contate nosso suporte!','I',':(');
      Application.terminate;
   end;
end;

Function AbreINI(): TStringList;
var
   i, Total : Integer;
   StrEmpresa: String;
begin
   CaminhoExe := ExtractFilePath(Application.ExeName);
   CaminhoIni := CaminhoExe + 'DRBSIS.INFO';
   if not (FileExists(CaminhoIni)) then
   begin
      Msg('Tentamos abrir o software mas não encontramos o arquivo de configuração, contate nosso suporte!','I',':(');
      Application.Terminate;
   end;

   Total := StrToInt(DadosdoIni(CaminhoIni, 'LOJAS', 'TOTAL'));

   { Instancia a variável arquivo }
   Lista := TStringList.Create;

   for i:=1 to Total do {Total de Empresas}
   begin
      StrEmpresa :=    'LOJA '+FormatFloat('###0',i);
      Lista.Add(DadosdoIni(CaminhoIni, StrEmpresa, 'NOME'));
   end;
end;

Procedure CarregaEmpresa(StrEmpresa: String);
begin
   try
      NomeEmpresa    := DadosdoIni(CaminhoIni, StrEmpresa, 'NOME');
      AbreBanco(DadosdoIni(CaminhoIni, StrEmpresa, 'BANCO'));
   except
      Application.terminate;
   end;
end;

FUNCTION DadosdoIni(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
var
  ArqIni : tIniFile;
begin
   Result    := '';
   SESSAO    := UpperCase(SESSAO) ;
   PARAMETRO := UpperCase(PARAMETRO) ;
   ArqIni    := tIniFile.Create(ARQUIVO);
   Try
    Result   := ArqIni.ReadString(SESSAO, PARAMETRO, Result)
   Finally
    ArqIni.Free;
   end;
end;

Function ValidaLicenca(): Boolean;
var
   Tamanho        : Integer;
   PalavraSecreta,
   Terminais,
   DataExpira,
   Cnpj,
   Empresa,
   Cript,
   Descript       : String;
begin
   try
      Liberacao      := True;    // Abre a liberação para iniciar a verificação
      cript          := trim(dmCad.cdsConf.FieldbyName('KEYGEN').AsString);
      descript       :=crypt('D',cript);
      Tamanho        := StrToInt(Copy(descript,17,3));

   if (dmcad.cdsConf.Fieldbyname('RAZAOEMP').asString          <> Copy(descript,20,tamanho)) or
      (dmcad.cdsCOnf.Fieldbyname('CNPJEMP').asString           <> Copy(descript,(20+tamanho),14)) or
      (dmcad.cdsCOnf.Fieldbyname('VALIDADELIC').AsString       <> dateToStr(StrToDate(copy(descript,(44+tamanho),10)))) or
      (strtoInt(dmcad.cdsConf.Fieldbyname('QTDELIC').asString) <> StrToint(Copy(descript,(54+tamanho),3))) or
      ('RBDANILOSISTEMAS'                                      <> Copy(descript,1,16)) then
      begin
         Msg('Aiai sua licença expirou, precisamos atualizar, contate nosso suporte!', 'I',':S');

         dmcad.cdsConf.Edit;
         dmcad.cdsConf.Fieldbyname('VALIDADELIC').AsString := '';
         dmcad.cdsConf.Fieldbyname('QTDELIC').AsString     := '';
         dmcad.cdsConf.Post;
         dmcad.cdsConf.ApplyUpdates(0);

         Fcad_Serial := TFcad_Serial.Create(Fcad_Serial);
         Fcad_Serial.ShowModal;
      end;

   except
      Msg('Que estranho sua licenca está inválida, vamos corrigir isso dê um OK!', 'I',':S');
      Fcad_Serial := TFcad_Serial.Create(Fcad_Serial);
      Fcad_Serial.ShowModal;
      Abort;
   end;

//   if CONTAUSUARIOLOGADO > StrToInt(terminais) then
//   begin
//      Msg('0211 - Número máximo de licenças '+terminais+' atingido, verifique usuários logados','I');
//      Application.terminate;
//   end;
//
//   diasfim:=(dataexpira-date);
//   if date>dataexpira then
//   begin
//      if Msg('0212 - Atenção! Cópia expirada em '+DateToStr(dataexpira)+', deseja atualizar a licença agora?', 'P') then
//      begin
//         Liberacao := false; // trava liberacao do sistema
//         ExecutaForm(TFormLibera, FormLibera);
//      end
//      else
//      begin
//         Msg('0213 - Atenção! Sistema liberado apenas para consultas, atualize a sua licença!','I');
//         FPrinc.StatusBar1.Panels[4].Text := 'Licença Expirada, Verifique!';
//         Liberacao:=False;
//      end;
//   end
//   else
//   if (dataexpira-date <= 5) then
//   begin
//      if Msg('0214 - Faltam '+FormatFloat('#0',diasfim)+' para expirar o programa! Deseja Atualizar a licença agora?','P') then
//      begin
//         FormLibera := TFormLibera.Create(self);
//         FormLibera.ShowModal;
//      end;
//      FPrinc.StatusBar1.Panels[0].Text := 'Usuário: '+usuario;
//      Fprinc.UserControl1.Log('Aviso! Licença com data expirando em: '+FormatFloat('#0',diasfim)+' dias.', 3);
//      FPrinc.StatusBar1.Panels[3].Text := 'Aviso! Licença de Uso Expira em: '+FormatFloat('#0',diasfim)+' dias.';
//   end;
//
/////// Fim de verificar a licença de usuario.
//   if LoginUsuario<>'CANCELAR' then
//      Usuario := EditUsuario.Text;
//   if Usuario<>'' then
//      FPrinc.StatusBar1.Panels[1].Text := 'Usuário: '+usuario;
/////// Faz login no componente UserControl ( Informação + Usuario, Nivel );
//      FPrinc.UserControl1.Log('Login.:'+ FPrinc.UserControl1.CurrentUser.UserName, 0);
//  Action := caFree;

end;

end.
