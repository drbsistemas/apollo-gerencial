unit uConexao;

interface

Uses
   Graphics, System.SysUtils, Forms, IniFiles, System.Classes;

   //Acesso-Conexão
   Procedure AbreAcesso;
   Procedure AbreBanco(EnderecoBanco:String);
   // Licença
   Function VerificaLicenca(): Boolean;
   Function ValidaLicenca(StrSerial: String): Boolean;
   Function LeLicenca(StrSerial: String): Boolean;
   Procedure AtualizaLicenca(StrValidade, StrTerminais, StrKeygen: String);
   Function ContaUsuariosLogados():integer;
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

      with dmCon.FdConAcesso do
      begin
         Params.Clear;
         Close;
         Params.Add('Database='+DadosdoIni(CaminhoIni, 'ACESSO', 'BANCO'));
         Params.Add('User_Name=SYSDBA');
         Params.Add('Password=masterkey');
         Params.Add('DriverID=FB');
         dmCon.FDPhysFBDriverLink1.VendorLib := 'gds32.dll'; // Pasta do Aplicativo EXE
         Open();
      end;

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

      with dmCon.FdCon do
      begin
         Params.Clear;
         Close;
         Params.Add('Database='+EnderecoBanco);
         Params.Add('User_Name=SYSDBA');
         Params.Add('Password=masterkey');
         Params.Add('DriverID=FB');
         dmCon.FDPhysFBDriverLink1.VendorLib := 'gds32.dll'; // Pasta do Aplicativo EXE
         Open();
      end;

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

Function VerificaLicenca(): Boolean;
var
   LicencaValida: Boolean;
begin
   if (dmCad.qryConf.FieldbyName('KEYGEN').AsString='') or (not ValidaLicenca(dmCad.qryConf.FieldbyName('KEYGEN').AsString)) then
   begin
      Msg('Acabamos de identificar sua licença está inválida, precisamos atualizar, clique em ok para continuarmos!', 'I',':S');
      Fcad_Serial := TFcad_Serial.Create(Fcad_Serial);
      Fcad_Serial.ShowModal;
      Fcad_Serial.Free;
   end;

   if ContaUsuariosLogados > StrToInt(Terminais) then
   begin
      Msg('Verificamos e você já esta usando o máximo de usuários liberados, o sistema será fechado, porém para contratar mais usuários, contate nosso setor comercial!', 'I',':S');
      Application.terminate;
   end;

   Diasfim:=(StrToDate(Dataexpira)-date);
   if Date>StrToDate(dataexpira) then
   begin
      if Msg('Seu serial de uso do nosso software esta expirada desde: '+dataexpira+', quer atualizar o serial agora ?!', 'P',';)') then
      begin
         Liberacao := false; // trava liberacao do sistema
         Fcad_Serial := TFcad_Serial.Create(Fcad_Serial);
         Fcad_Serial.ShowModal;
         Fcad_Serial.Free;
         Msg('Precisamos reiniciar a aplicação para validar, acesse novamente o nosso software!', 'I',':S');
         Application.terminate;
      end
      else
      begin
         Msg('Seu sistema está com o serial expirado, mas você ainda pode usar para consulta dos dados!', 'I',':S');
//         FPrinc.StatusBar1.Panels[4].Text := 'Licença Expirada, Verifique!';
         Liberacao:=False;
      end;
   end else
   if (StrToDate(dataexpira)-date <= 5) then
   begin
      if Msg('Verificamos que faltam '+FormatFloat('#0',diasfim)+' para expirar o serial do seu software, o que acha de atualizar agora ?', 'P',':S') then
      begin
         FCad_serial := TFCad_serial.Create(FCad_serial);
         FCad_serial.ShowModal;
      end;
//      FPrinc.StatusBar1.Panels[0].Text := 'Usuário: '+usuario;
      Fprinc.UserControl1.Log('Aviso! Licença com data expirando em: '+FormatFloat('#0',diasfim)+' dias.', 3);
//      FPrinc.StatusBar1.Panels[3].Text := 'Aviso! Licença de Uso Expira em: '+FormatFloat('#0',diasfim)+' dias.';
   end;
   FPrinc.UserControl1.Log('Login.:'+ FPrinc.UserControl1.CurrentUser.UserName, 0);
end;

Function ValidaLicenca(StrSerial: String): Boolean;
begin
   LeLicenca(StrSerial);
   if (dmcad.qryConf.Fieldbyname('RAZAOEMP').asString          <> StrRazao) or
      (dmcad.qryConf.Fieldbyname('CNPJEMP').asString           <> cnpj) or
      (dmcad.qryConf.Fieldbyname('VALIDADELIC').AsString       <> dataexpira) or
      (strtoInt(dmcad.qryConf.Fieldbyname('QTDELIC').asString) <> StrToInt(terminais)) or
      ('RBDANILOSISTEMAS'                                      <> palavraSecreta) then
   begin
      AtualizaLicenca('','','');
      Result := False;
   end else
   begin
      AtualizaLicenca(dataexpira, terminais, StrSerial);
      Result := True;
   end;
end;

Function LeLicenca(StrSerial: String):Boolean;
Var
   Tamanho        : Integer;
   Cript,
   Descript       : String;
begin
   cript          := trim(StrSerial);
   descript       :=crypt('D',cript);
   Tamanho        := StrToInt(Copy(descript,17,3));

   StrRazao       := Copy(descript,20,tamanho);
   cnpj           := Copy(descript,(20+tamanho),14);
   DataExpira     := copy(descript,(44+tamanho),10);
   terminais      := Copy(descript,(54+tamanho),3);
   palavrasecreta := Copy(descript,1,16);
end;

procedure AtualizaLicenca(StrValidade, StrTerminais, StrKeygen: String);
begin
   with dmCAd.qryConf do
   begin
      Edit;
      FieldByName('DATAULTIMOACESSO').AsString := DateToStr(Date);
      FieldbyName('RAZAOEMP').AsString         := StrRazao;
      FIeldbyname('CNPJEMP').AsString          := CNPJ;
      Fieldbyname('VALIDADELIC').AsString      := StrValidade;
      Fieldbyname('QTDELIC').AsString          := StrTerminais;
      Fieldbyname('KEYGEN').AsString           := StrKeygen;
      Post;
      ApplyUpdates(0);
   end;
end;

Function ContaUsuariosLogados():integer;
begin
   StrSQl := 'select count(mon$user) from Mon$attachments';
   dmCad.qryAux.close;
   dmcad.qryAux.sql.Add(StrSql);
   dmcad.qryAux.Open;

   Result := dmcad.qryAux.FieldbyName('COUNT').asInteger;
end;

end.
