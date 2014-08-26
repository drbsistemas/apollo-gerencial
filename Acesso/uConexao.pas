unit uConexao;

interface

Uses
   Graphics, System.SysUtils, Forms, IniFiles;

   //Conexão
   Procedure AbreConexao;
   // Arquivo INI
   FUNCTION DadosdoIni(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
   Procedure CriaIni();
   Procedure AbreIni();

implementation

uses uRotinas, uCad_Ini;

procedure AbreConexao;
begin
   CaminhoExe := ExtractFilePath(Application.ExeName);
   CaminhoIni := CaminhoExe + 'DRBSIS.INFO';
   if (FileExists(CaminhoIni)) then
      AbreIni() else
      CriaIni();

{   FdCon.Close;
   if not FileExists((ExtractFilePath(Application.ExeName) + 'wINfo.DRB')) then
   begin
      MessageDlg('Arquivo de Informações não foi encontrado!'+#13+'Contate o Suporte.',mtError,[mbok],0);

   end;
   try
       StrCaminho := CAMINHODOSERVIDOR(ExtractFilePath(Application.ExeName) + 'wINFo.DRB', 'LOJA 1', 'BANCO');
      if SQLCon.Connected then
         SQLCon.Connected := False;
      SQLCon.Params.Values['database'] := StrCaminho;
      SQLCon.Params.Values['sqldialect'] := '3';
      SQLCon.Connected := True;
   except
      on EDatabaseError do
      begin
         MessageDlg('Erro ao conectar o Banco de dados', mtError, [mbOK], 0);
         Application.terminate;
      end;
   end; }
end;

procedure AbreINI();

begin
   try
      NomeEmpresa := '';

   except
      Application.terminate;
   end;
end;

procedure CriaIni();
begin
   Msg('de abrir o software não encontrou o arquivo de dados, confirme para nós!','I',':|');
   Fcad_Ini := TFCad_ini.Create(Fcad_Ini);
   Fcad_Ini.ShowModal;
   FCad_Ini.Free;
   AbreIni;

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
END;

end.
