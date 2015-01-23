unit uRotinas;

interface

uses
   MMSystem, Graphics, System.SysUtils, Forms, System.Classes, TypInfo,
   cxButtons, CxGroupBox, cxLabel, cxCheckBox, cxTextEdit, cxMaskEdit, Controls,
   FireDAC.Comp.Client, Windows, StdCtrls, Vcl.DIalogs, ComObj, ComCtrls, cxImage,
   NFe_Util_2G_TLB ; // acrescentar essa linha no use da unit para NF-E DLL;

   // Mensagens
   FUNCTION Msg(Mensagem, TipoMsg, Rosto: String): Boolean;
   // Licenca
   FUNCTION Crypt(Action, Src: String): String;

   // Calculos
   FUNCTION CalculoCorreto(N1, N2: Extended; Operador: string; Decimal: Integer): Extended;

   // Validaçoes
   FUNCTION    VALIDAUF(Dado : string) : boolean;
   FUNCTION    VALIDACNPJ(Dado : string) : boolean;
   FUNCTION    VALIDACPF(Dado : string) : boolean;
   PROCEDURE   ValidaCampoTag(Form: TForm);
   FUNCTION    DATAVALIDA(Dado: string): String;
   FUNCTION    Temletra(texto:string) : boolean;
   FUNCTION    DigitoCodigodeBar(EREFERENCIA:string):integer;
   FUNCTION    DataSql(Data: TDateTime): string;
   FUNCTION    ValidarCEP(const CEP: string): string;

   // Envio de E-mails
   PROCEDURE EnviaEmailDLL(Assunto, Destino, Anexo: String);

   // Executa Processos
   FUNCTION    ExecutaGen(StrTabela : String) : Integer;
   FUNCTION    ExecutaSql(StrConsulta: String; qrDados: TFDQuery): Boolean;
   FUNCTION    ConsultaSql(StrConsulta: String; qrDados: TFDQuery): Boolean;
   FUNCTION    ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: Variant): Variant;
   FUNCTION    BuscaNomeAtivo(TABELA:String;CODIGO:Integer):String;
   FUNCTION    BUSCACONF(CAMPO:String):String;
   FUNCTION    ConsultaCampoNomeAtivo(StrCodigo, StrTabela: String):String;
   FUNCTION    ConsultaProduto(StrProd: String): String;


   // Chama/Configura Forms
   PROCEDURE   ExecutaForm(FormClasse: TFormClass; var NewForm: TObject);
   PROCEDURE   AbreTelaComShowModal(FormClasse: TFormClass; var NewForm: TObject; FNomeFormRetorno: TForm; StrTabela: String);

   PROCEDURE   PFundo(mostra: integer);

const
   SqlBuscaProduto = 'SELECT IDPROD, NOMEPROD, UNPROD, ESTOQUETOTAL, REFPROD, CODBAR, NCMPROD, MARCAPROD, PRECOVENDA, DTVALIDADE, FOTOPROD FROM PRODUTO';

var
   FVisualizaImagem,
   FormAtivo                          : TForm;
   FCorSelec, FCorLista               : TColor;
   Lista                              : TStringList;
   CaminhoExe,
   CaminhoIni,
   StrSql,
   StrRazao,
   PalavraSecreta,
   Terminais,
   DataExpira,
   Cnpj,
   Usuario,
   DESCRICAO, OBS,
   StrTipoPessoa,
   NomeEmpresa                        : String;
   Diasfim                            : Real;
   Liberacao                          : Boolean;
   ID: Integer;

implementation

uses uMsg, uDmCad, uDmCon, UPrinc, uCon_Generica, uCad_Produto, uPai,
  uCad_Clientes;

function VALIDACNPJ(Dado : string) : boolean;
var  D1            : array[1..12] of byte;
     I,
     DF1,
     DF2,
     DF3,
     DF4,
     DF5,
     DF6,
     Resto1,
     Resto2,
     PrimeiroDigito,
     SegundoDigito : integer;
begin
     Result := true;
     if Length(Dado) = 14 then
     begin
          for I := 1 to 12 do
               if Dado[I] in ['0'..'9'] then
                    D1[I] := StrToInt(Dado[I])
               else
                    Result := false;
          if Result then
          begin
               DF1 := 5*D1[1] + 4*D1[2] + 3*D1[3] + 2*D1[4] + 9*D1[5] + 8*D1[6] +
                      7*D1[7] + 6*D1[8] + 5*D1[9] + 4*D1[10] + 3*D1[11] + 2*D1[12];
               DF2 := DF1 div 11;
               DF3 := DF2 * 11;
               Resto1 := DF1 - DF3;
               if (Resto1 = 0) or (Resto1 = 1) then
                    PrimeiroDigito := 0
               else
                    PrimeiroDigito := 11 - Resto1;
               DF4 := 6*D1[1] + 5*D1[2] + 4*D1[3] + 3*D1[4] + 2*D1[5] + 9*D1[6] +
                      8*D1[7] + 7*D1[8] + 6*D1[9] + 5*D1[10] + 4*D1[11] + 3*D1[12] +
                      2*PrimeiroDigito;
               DF5 := DF4 div 11;
               DF6 := DF5 * 11;
               Resto2 := DF4 - DF6;
               if (Resto2 = 0) or (Resto2 = 1) then
                    SegundoDigito := 0
               else
                    SegundoDigito := 11 - Resto2;
               if (PrimeiroDigito <> StrToInt(Dado[13])) or
                  (SegundoDigito <> StrToInt(Dado[14])) then
                    Result := false;
          end;
     end
     else
          if Length(Dado) <> 0 then
               Result := false;
end; {TESTA_CNPJ}


{Valida dígito verificador de CPF}
function VALIDACPF(Dado : string) : boolean;
var  D1            : array[1..9] of byte;
     I,
     DF1,
     DF2,
     DF3,
     DF4,
     DF5,
     DF6,
     Resto1,
     Resto2,
     PrimeiroDigito,
     SegundoDigito : integer;
begin
     Result := true;
     if Length(Dado) = 11 then
     begin
          for I := 1 to 9 do
               if Dado[I] in ['0'..'9'] then
                    D1[I] := StrToInt(Dado[I])
               else
                    Result := false;
          if Result then
          begin
               DF1 := 10*D1[1] + 9*D1[2] + 8*D1[3] + 7*D1[4] + 6*D1[5] + 5*D1[6] +
                      4*D1[7] + 3*D1[8] + 2*D1[9];
               DF2 := DF1 div 11;
               DF3 := DF2 * 11;
               Resto1 := DF1 - DF3;
               if (Resto1 = 0) or (Resto1 = 1) then
                    PrimeiroDigito := 0
               else
                    PrimeiroDigito := 11 - Resto1;
               DF4 := 11*D1[1] + 10*D1[2] + 9*D1[3] + 8*D1[4] + 7*D1[5] + 6*D1[6] +
                      5*D1[7] + 4*D1[8] + 3*D1[9] + 2*PrimeiroDigito;
               DF5 := DF4 div 11;
               DF6 := DF5 * 11;
               Resto2 := DF4 - DF6;
               if (Resto2 = 0) or (Resto2 = 1) then
                    SegundoDigito := 0
               else
                    SegundoDigito := 11 - Resto2;
               if (PrimeiroDigito <> StrToInt(Dado[10])) or
                  (SegundoDigito <> StrToInt(Dado[11])) then
                    Result := false;
          end;
     end
     else
          if Length(Dado) <> 0 then
               Result := false;

end;

function VALIDAUF(Dado : string) : boolean;
var i:integer;
const Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
begin
     i:=1;
     While ((Estados[i]+Estados[i+1])<>Dado) and (i<>59) do
      i:=i+2;

     If i<59
      then Result:=True
      else Result:=False;
end; {TESTA_UF}

procedure PFundo(mostra: integer);
begin
   if Mostra=1 then
   begin
      FPrinc.dxMenu.Visible := True;
      FPrinc.pnTop.Visible  := true;
   end else
   if Mostra=0 then
   begin
      FPrinc.dxMenu.Visible := False;
   end;
end;


procedure ExecutaForm(FormClasse: TFormClass; var NewForm: TObject);
begin
     Try
//       WaitMouse; // Veja outra dica para funções de ponteiro do mouse.
       if (TForm(NewForm) = Nil) Or (not TForm(NewForm).HandleAllocated) Then
          NewForm := FormClasse.Create(TForm(NewForm))
       else
          begin
           if (TForm(NewForm).WindowState = WsMinimized) Then
              TForm(NewForm).WindowState := wsNormal;
           end;
       TForm(NewForm).Show;
     Finally
//       ResetMouse;
         FormAtivo := TForm(NewForm);
       end;
   PFundo(0);
end;

Function Msg(Mensagem, TipoMsg, Rosto: String): Boolean;
begin
   // TipoMSg = 'I'nfo / 'P'ergunta
   FMsg                 := TFMsg.Create(FMSg);
   FMsg.cxMsg.TExt      := Mensagem;
   FMsg.cxRosto.Caption := Rosto;
   FMsg.cxSim.Visible   := false;
   FMsg.cxNao.Visible   := false;
   FMsg.cxOk.Visible    := false;
   ///// Lista de Sons no final da pagina.
   if TipoMsg = 'I' then
   begin
      FMsg.cxOK.Visible := true;
      PlaySound(PChar('SystemAsterisk'), 0, SND_ASYNC);
   end else
   begin
      FMsg.cxSim.Visible := true;
      FMsg.cxNao.Visible := true;
      PlaySound(PChar('SystemExclamation'), 0, SND_ASYNC);
   end;
   FMsg.ShowModal;
   if FmSg.cxSim.tag=1 then
      Result             := True else
      Result             := False;
   FMsg.Free;
   FMsg := nil;
end;

Function Crypt(Action, Src: String): String;
   Label Fim;
   var KeyLen : Integer;
   KeyPos : Integer;
   OffSet : Integer;
   Dest, Key : String;
   SrcPos : Integer;
   SrcAsc : Integer;
   TmpSrcAsc : Integer;
   Range : Integer;
begin
   if (Src = '') Then
   begin
      Result       := '';
      Goto Fim;
   end;
   //  Key         :='YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
   Key             := 'DRBALBJBVLB';
   Dest            := '';
   KeyLen          := Length(Key);
   KeyPos          := 0;
   SrcPos          := 0;
   SrcAsc          := 0;
   Range           := 256;
   if (Action = UpperCase('C')) then
   begin
      Randomize;
      OffSet       := Random(Range);
      Dest         := Format('%1.2x',[OffSet]);
      for SrcPos   := 1 to Length(Src) do
      begin
         Application.ProcessMessages;
         SrcAsc    := (Ord(Src[SrcPos]) + OffSet) Mod 255;
         if KeyPos < KeyLen then
            KeyPos := KeyPos + 1 else KeyPos := 1;
         SrcAsc    := SrcAsc Xor Ord(Key[KeyPos]);
         Dest      := Dest + Format('%1.2x',[SrcAsc]);
         OffSet    := SrcAsc;
      end;
   end
   Else if (Action = UpperCase('D')) then
   begin
      OffSet       := StrToInt('$'+ copy(Src,1,2));
      SrcPos       := 3;
   repeat
      SrcAsc       := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then
         KeyPos    := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc    := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
         TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
         TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest         := Dest + Chr(TmpSrcAsc);
      OffSet       := SrcAsc;
      SrcPos       := SrcPos + 2;
      until (SrcPos >= Length(Src));
   end;
   Result          := Dest;
   Fim:
end;

procedure GravaSql(StrTexto: String; NomeComponente: TComponentName);
var
   Arq                     : TextFile;
   nomeArq, Linha, Caminho : String;
   ch                      : Char;
   Rect                    : TRect;
   TD                      : PTypeData;
begin
   if Screen.ActiveForm <> nil then
   begin
      Caminho := CaminhoExe+ 'qry.sql';
      TD := GetTypeData(Screen.ActiveForm.ClassInfo);
      AssignFile(Arq, Caminho);

      if not FileExists(CAMINHO) then
         Rewrite(arq) else
            Append(arq);

      Writeln(arq, '');
      Writeln(arq, '/*----------------------------------------------------------------------------------------------------*/');
      Writeln(arq, '');
      Writeln(arq, StrTexto);
      Writeln(arq, '');
      Writeln(arq, uppercase('/* Data Hora: '+FormatDateTime('dd/mm/yyy hh:mm:ss', Now)+' - Componente: '+NomeComponente+ ' - Form: '+uppercase(Screen.ActiveForm.Name)+' - Unit: '+uppercase(TD^.UnitName)+' */'));
      CloseFile(Arq);
   end;
end;

Function ExecutaGen(StrTabela : String) : Integer;
begin
   with dmCad do
   begin
      ConsultaSql('select GEN_ID(GEN_'+StrTabela+'_ID,1) codigo from dual',dmCad.qryGen);
      Result := dmCad.qryGen.Fieldbyname('CODIGO').asInteger;
      dmcad.qryGen.Close;
   end;
end;

Function ConsultaSql(StrConsulta: String; qrDados: TFDQuery): Boolean;
begin
   try
      qrDados.Close;
      qrDados.Sql.Clear;
      qrDados.SQL.Text := StrConsulta;
      qrDados.Open;
      qrDados.First;
   Finally
      GravaSql(StrConsulta, qrDados.Name);
      Result := True;
   end;

end;

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: Variant): Variant;
begin
 if Expressao
  then Result:=CasoVerdadeiro
  else Result:=CasoFalso;
end;

function DATAVALIDA(Dado: string): String;
var
   SalvaFormato,
      DataExterna: string;
   DataInterna: TDateTime;
   Separador: string;
begin
   Result := Dado;
   Separador := FormatSettings.DateSeparator;
   while Pos(Separador, Dado) > 0 do
      Delete(Dado, Pos(Separador, Dado), 1);
   if Length(Dado) = 6 then
      Dado := Copy(Dado, 1, 2) + Separador +
         Copy(Dado, 3, 2) + Separador + '19' +
         Copy(Dado, 5, 2)
   else
      if Length(Dado) = 8 then
         Dado := Copy(Dado, 1, 2) + Separador +
            Copy(Dado, 3, 2) + Separador +
            Copy(Dado, 5, 4)
      else
      begin
         Result := '';
         Msg('A Data é inválida, verifique!','I',':(');
      end;
   if Result=Dado then
   begin
      SalvaFormato := FormatSettings.ShortDateFormat;
      DataInterna := 0;
      try
         FormatSettings.ShortDateFormat := 'd' + Separador + 'm' + Separador + 'y';
         DataInterna := StrToDate(Dado);
      except
         on EConvertError do
         begin
            Result := '';
            Msg('A Data é inválida, verifique!','I',':(');
            FormatSettings.ShortDateFormat := SalvaFormato;
         end;
      end;
      if Result=Dado then
      begin
         try
            FormatSettings.ShortDateFormat := 'dd' + Separador + 'mm' + Separador + 'yyyy';
            DataExterna := DateToStr(DataInterna);
         except
            on EConvertError do
            begin
               Result := '';
               Msg('A Data é inválida, verifique!','I',':(');
               FormatSettings.ShortDateFormat := SalvaFormato;
            end;
         end;
         if (Result=Dado) and (DataExterna <> Dado) then
         begin
            Result := '';
            Msg('A Data é inválida, verifique!','I',':(');
         end;
      end;
      FormatSettings.ShortDateFormat := SalvaFormato;
   end;
end;

Procedure ValidaCampoTag(Form: TForm);
var
   i, intPassou: integer;
   StrMsg, StrCorrige, StrPreenche : String;
begin
   with Form do
   begin
      for i := 0 to ComponentCount-1 do
      begin
         if ((Components[i] is TcxTextEdit)) then
         begin
            if ((Components[i] as TcxTextEdit).Tag > 0) then
               (Components[i] as TcxTextEdit).Style.Color := clWhite;

            if ((Components[i] as TcxTextEdit).Tag = 1) and ((Components[i] as TcxTextEdit).Text = '') then
            begin
               (Components[i] as TcxTextEdit).Style.Color := FCorSelec;
               StrPreenche := StrPreenche + '-> '+(Components[i] as TcxTextEdit).Hint+#13;
               intPassou := intPassou + 1;
            end;

            if ((Components[i] as TcxTextEdit).Tag = 2) and (Pos('@', (Components[i] as TcxTextEdit).Text) = 0) then
            begin
               (Components[i] as TcxTextEdit).Style.Color := FCorSelec;
               StrCorrige := StrCorrige + '-> '+(Components[i] as TcxTextEdit).Hint+#13;
               intPassou := intPassou + 1;
            end;

            if intPassou = 1 then
            begin
               (Components[i] as TcxTextEdit).SetFocus;
               intPassou := 2;
            end;
         end;

         if ((Components[i] is TcxMaskEdit)) then
         begin
            if ((Components[i] as TcxMaskEdit).Tag = 1) then
               (Components[i] as TcxMaskEdit).Style.Color := clWhite;

            if ((Components[i] as TcxMaskEdit).Tag = 1) and ((Components[i] as TcxMaskEdit).Text = '') then
            begin
               (Components[i] as TcxMaskEdit).Style.Color := FCorSelec;
               StrPreenche := StrPreenche + '-> '+(Components[i] as TcxMaskEdit).Hint+#13;
               intPassou := intPassou + 1;
            end;

            if intPassou = 1 then
            begin
               (Components[i] as TcxMaskEdit).SetFocus;
               intPassou := 2;
            end;
         end;

      end;
   end; // with

   if StrPreenche <> '' then
      StrMsg := 'Opa! Verificamos que os campos abaixo precisam ser preenchidos.'+#13+StrPreenche+#13;
   if StrCorrige  <> '' then
      StrMsg := StrMsg + 'Corrija os Campos abaixo. '+#13+StrCorrige;

   if intPassou >= 1 then
   begin
      Msg(StrMsg,'I',':P');
      abort;
   end;
end;

procedure EnviaEmailDLL(Assunto, Destino, Anexo: String);
var
   Util:NFe_Util_2G_Interface;
   mensagem,
   msgResultado: WideString;
   cStat: integer;
begin
   Util := NFe_Util_2G_TLB.CoUtil.Create;
///// Anexos
      //ANexoPdf := dmNfe.cdsParNfePASTAPDF.AsString + '\' + FormatDateTIme('YYYYMM', now) + '\' + dmNfe.cdsNFEID.AsString + '.pdf';
      //AnexoXml := dmNfe.cdsParNfeXMLCANCELADO.AsString + '\' + FormatDateTIme('YYYYMM', now) + '\' + dmNfe.cdsNFEID.AsString + '-Nfe.xml';

///// Gera Mensagem
   Mensagem := 'Envio de E-mail por: '+Assunto+ #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'Emitente.......: ' + dmcad.qryConf.Fieldbyname('RAZAOEMP').AsString + #13 + #10 +
      'Data Emissão...: ' + FormatDateTime('DD/MM/YYYY hh:mm', Now) + #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'Atenção! As informações contidas neste e-mail é de responsabilidade do emitente.' + #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'E-mail automático enviado do Sistema  - Sistema PetClinic - (http://www.drbsistemas.com.br)' + #13 + #10 + '';
   // Configura Corpo do E-mail;


/////
   cStat := Util.EnvEmail(dmcad.qryConf.Fieldbyname('USUARIOEMAIL').ASString,
      dmcad.qryConf.Fieldbyname('FANTASIAEMP').AsString,
      Destino,
      '',
      Assunto,
      Mensagem,
      Anexo,
      dmcad.qryConf.Fieldbyname('HOSTEMAIL').ASString,
      dmcad.qryConf.Fieldbyname('PORTAEMAIL').AsString,
      dmcad.qryConf.Fieldbyname('SSLEMAIL').AsString,
      dmcad.qryConf.Fieldbyname('USUARIOEMAIL').AsString,
      dmcad.qryConf.Fieldbyname('SENHAEMAIL').AsString,
      '0',
      '1',
      msgResultado);
   if cStat = 7100 then
      MessageDlg('E-mail enviado com sucesso!', mtInformation, [mbOK], 0) else
      MessageDlg('E-mail não enviado Falha: '+inttoStr(cStat)+'!', mtInformation, [mbOK], 0);
   Util := nil;
end;


Procedure AbreTelaComShowModal(FormClasse: TFormClass; var NewForm: TObject; FNomeFormRetorno: TForm; StrTabela: String);
begin
   with FormClasse.Create(Application) do
   begin

      FormStyle   := fsNormal;
      WindowState := wsNormal;
      Visible     := False;
      Position    := poMainFormCenter;

      if FormClasse = TFcad_Generica then
      begin
         Fcad_GEnerica.AbreCom('CON');
         Fcad_GEnerica.TABELA      := StrTabela;
      end;
      if (FormClasse = TFcad_Clientes) and (StrTabela <> '') then
      begin
         StrTipoPessoa := StrTabela;
      end;
      ShowModal;

   end;

//   TForm(NewForm) := NIl;
//   TForm(NewForm).Free;
   if FNomeFormRetorno <> NIL then
   begin
      TForm(FNomeFormRetorno).WindowState := wsNormal;
      TForm(FNomeFormRetorno).WindowState := wsMaximized;
   end;
end;

function BuscaNomeAtivo(TABELA:String;CODIGO:Integer):String;
var oNome:String;
begin
   dmCad.qryAux.Close;

   If TABELA = 'CLI'        then dmCad.qryAux.Sql.Text := 'SELECT RAZAO       Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('CLI') else
   If TABELA = 'FOR'        then dmCad.qryAux.Sql.Text := 'SELECT RAZAO       Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('FOR') else
   If TABELA = 'VEN'        then dmCad.qryAux.Sql.Text := 'SELECT RAZAO       Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('VEN') else
   If TABELA = 'TRA'        then dmCad.qryAux.Sql.Text := 'SELECT RAZAO       Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('TRA') else
   If TABELA = 'CPAGTO'     then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO   Nome FROM CPAGTO WHERE IDCPAGTO=:CODIGO  ' else

   if TABELA <> ''          then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';


   dmCad.qryAux.ParamByName('CODIGO').AsInteger  :=  CODIGO;
   dmCad.qryAux.Active   := true;

   If not dmCad.qryAux.IsEmpty then
      oNome := dmCad.qryAux.FieldbyName('NOME').AsString
   else
   begin
     oNome := 'NENHUM';
     Msg('Este código não pertence ao cadastro de '+TABELA+' ou este registro não está com cadastro ativo!', 'I',':Z');
   end;
   dmCad.qryAux.Close;
   Result := oNome;
end;

Function ConsultaCampoNomeAtivo(StrCodigo, StrTabela: String):String;
begin
   if (StrCodigo = '') or (StrCodigo='0') then
      Result := 'NENHUM' else
      Result := BuscaNomeAtivo(StrTabela, StrToInt(StrCodigo));
end;

function BUSCACONF(CAMPO:String):String;
var oNome:String;
begin
   ConsultaSql('select VALORCONF from ITEMCONF where CAMPO='+QuotedStr(CAMPO), dmCad.qryAux);

   if not dmcad.qryAux.IsEmpty then
      oNome:= dmCad.qryAux.FieldByname('VALORCONF').asString else
   begin
      oNome:='ERRO';
      ShowMessage('Atenção! Configuração não encontrada, contate suporte!');
      Msg('Não encontramos uma configuração correta, contate suporte!', 'I',':(');
   end;
   ReSult := oNome;
end;

Function ExecutaSql(StrConsulta: String; qrDados: TFDQuery): Boolean;
begin
   try
      qrDados.Close;
      qrDados.Sql.Clear;
      qrDados.SQL.Text := StrConsulta;
      qrDados.Execute;
      qrDados.Close;
   Finally
      GravaSql(StrConsulta, qrDados.Name);
      Result := True;
   end;
end;

function Temletra(texto:string) : boolean;
var i : integer;
    oresultado : boolean;
begin
    oresultado                                         := false;
    i                                                  :=1;
    while (i <= length(texto)) and (oresultado = false) do
    begin
       if not (texto[i] in ['0'..'9']) then oresultado := true;
       inc(i);
    end;

    result                                             := oresultado;
end;

function DigitoCodigodeBar(EREFERENCIA:string):integer;
var
   ean13:string;
   i,total,num,mult,digito:integer;
begin
    total     :=0;
    ean13     :='131313131313';
    for i     :=1 to length(ereferencia) do
    begin
      num     :=strtoint(eReferencia[i]);
      mult    :=strtoint(ean13[i]);
      total   :=total+(num*mult);
    end;

    if total mod 10 = 0 then
    begin
       digito :=0;
    end
    else
    begin
       digito :=10-(total mod 10);
    end;
    result    :=digito;
end;

Function ConsultaProduto(StrProd: String): String;
begin
   dmcad.qryAux.Close;

///// Verifica se pode ser EAN
   if (Length(StrProd) = 13) and (not Temletra(StrProd)) then
   begin
///// Verifica se é EAN
      if  DIGITOCODIGODEBAR(copy(StrProd,1,12)) = StrToInt(StrProd[13]) then
      begin
         ///// Busca por REFERENCIA
         ConsultaSql(SqlBuscaProduto+' WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

         ///// Se não achou Busca por COD PRODUTO
         if dmcad.qryAux.IsEmpty then
            ConsultaSql(SqlBuscaProduto+' WHERE IDPROD='+QuotedStr(copy(StrProd,6,7))+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

///// Se não achou Busca por CODIGO DE BARRAS
         if dmcad.qryAux.IsEmpty then
            ConsultaSql(SqlBuscaProduto+' WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);
      end
      else
      begin
///// Se não achou Busca por CODIGO PRODUTO
         ConsultaSql(SqlBuscaProduto+' WHERE IDPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

///// Se não achou Busca por REFERENCIA
         if dmcad.qryAux.IsEmpty then
            ConsultaSql(SqlBuscaProduto+' WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

///// Se não achou Busca por CODIGO BARRAS
         if dmcad.qryAux.IsEmpty then
         begin
            ConsultaSql(SqlBuscaProduto+' WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

         end;
      end;
   end else
///// Se o tamnho é diferente ou menor que 13
   begin
      ///// Se não achou Busca por REFERENCIA
      ConsultaSql(SqlBuscaProduto+' WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);
      ///// Se não achou Busca por CODIGO PRODUTO
      if dmcad.qryAux.IsEmpty then
         ConsultaSql(SqlBuscaProduto+' WHERE IDPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);

///// Se não achou Busca por CODIGO BARRAS
      if dmcad.qryAux.IsEmpty then
         ConsultaSql(SqlBuscaProduto+' WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N'), dmCad.qryAux);
   end;
///// Se não achou DEVOLVE 0
   If ((dmcad.qryAux.IsEmpty) or (dmcad.qryAux.RecordCount > 1)) then
      Result := '0'
   else
///// Se achou devolve o codigo
      Result := IntToStr(dmCad.qryAux.Fieldbyname('IDPROD').AsInteger);
end;

Function DataSql(Data: TDateTime): string;
var
   FormatoData: string;
   DataS: string;
begin
   FormatoData := FormatSettings.ShortDateFormat;
   FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
   DataS := DateToStr(Data);
   FormatSettings.ShortDateFormat := FormatoData;
   Result := DataS;
end;

function CalculoCorreto(N1, N2: Extended; Operador: string; Decimal: Integer): Extended;
var Masc: string;
   I: Integer;
   Resultado: Extended;
begin
   Masc := '0.';
   for I := 0 to decimal - 1 do
      Masc := Masc + '0';
   N1 := StrToFloat(FormatFloat(Masc, N1));
   N2 := StrToFloat(FormatFloat(Masc, N2));
   if Operador = '+' then
      Resultado := N1 + N2
   else if Operador = '-' then
      Resultado := N1 - N2
   else if Operador = '/' then
      begin
         if (N1 = 0) then
            Resultado := 0
         else
            try
               Resultado := N1 / N2;
            except
               Resultado := 0;
            end;
      end
   else if Operador = '*' then
      Resultado := N1 * N2;
   Result := Resultado;
end;

Function ValidarCEP(const CEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
    if CEP[I] in ['0'..'9'] then
      Result := Result + CEP[I];
    if Length(Result) <> 8 then
      Msg('Cep é inválido!','I',':(')
    else
      Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

end.
