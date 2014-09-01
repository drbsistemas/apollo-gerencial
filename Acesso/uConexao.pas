unit uConexao;

interface

Uses
   Graphics, System.SysUtils, Forms, IniFiles;

   //Conexão
   Procedure AbreConexao;
   // Arquivo INI
   FUNCTION DadosdoIni(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
   Procedure AbreIni();

implementation

uses uRotinas, uDmCon, uPrinc;

procedure AbreConexao;
begin
   CaminhoExe := ExtractFilePath(Application.ExeName);
   CaminhoIni := CaminhoExe + 'DRBSIS.INFO';
   if (FileExists(CaminhoIni)) then
      AbreIni() else
      begin
         Msg('de abrir o software não encontrou o arquivo de configuração, verifique por favor! - Cód: 00001','I',':(');
         Application.Terminate;
      end;

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
//      dmCon.FdCon.Connected := True;
   except
      Msg('não encontrou o banco de dados, contate suporte! - Cód: 00002','I',':(');
      Application.terminate;
   end;
end;

procedure AbreINI();

begin
   try
      NomeEmpresa    := DadosdoIni(CaminhoIni, 'LOJA 1', 'NOME');
      EnderecoBanco  := DadosdoIni(CaminhoIni, 'LOJA 1', 'BANCO');
   except
      Application.terminate;
   end;
end;

FUNCTION DadosdoIni(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
var
  ArqIni : tIniFile;
begin
  Result := '';
  SESSAO    := UpperCase(SESSAO) ;
  PARAMETRO := UpperCase(PARAMETRO) ;
  ArqIni := tIniFile.Create(ARQUIVO);
  Try
    Result := ArqIni.ReadString(SESSAO, PARAMETRO, Result)
  Finally
    ArqIni.Free;
  end;
end;

end.
