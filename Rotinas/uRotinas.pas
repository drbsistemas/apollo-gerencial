unit uRotinas;

interface

uses
   MMSystem, Graphics, System.SysUtils, Forms, System.Classes, TypInfo,
   cxButtons, CxGroupBox, cxLabel, cxCheckBox, cxTextEdit, cxMaskEdit,
   FireDAC.Comp.Client, Windows, StdCtrls, Vcl.DIalogs, ComObj, ComCtrls,
   NFe_Util_2G_TLB ; // acrescentar essa linha no use da unit para NF-E DLL;

   // Mensagens
   FUNCTION Msg(Mensagem, TipoMsg, Rosto: String): Boolean;
   // Licenca
   FUNCTION Crypt(Action, Src: String): String;

   // Validaçoes
   FUNCTION    VALIDAUF(Dado : string) : boolean;
   FUNCTION    VALIDACNPJ(Dado : string) : boolean;
   FUNCTION    VALIDACPF(Dado : string) : boolean;
   PROCEDURE ValidaCampoTag(Form: TForm);
   FUNCTION ValidaData(const S: string): boolean;

   // Envio de E-mails
   PROCEDURE EnviaEmailDLL(Assunto, Destino, Anexo: String);

   // Executa Processos
   FUNCTION ExecutaGen(StrTabela : String) : Integer;
   FUNCTION Consulta(StrConsulta: String; qrDados: TFDQuery): Boolean;
   FUNCTION ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: Variant): Variant;
   FUNCTION ConsultaQuery(StrCOnsulta: string; intQuery: Integer): Integer;
   FUNCTION BuscaNomeAtivo(TABELA:String;CODIGO:Integer):String;
Function ConsultaCampoNomeAtivo(StrCodigo, StrTabela: String):String;


   // Chama/Configura Forms
   PROCEDURE ExecutaForm(FormClasse: TFormClass; var NewForm: TObject);
   PROCEDURE AbreTelaComShowModal(FormClasse: TFormClass; var NewForm: TObject; FNomeFormRetorno: TForm; StrTabela: String);

   PROCEDURE PFundo(mostra: integer);

var
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
      Fprinc.cxFundo.Visible := true;
      FPrinc.pnfundo.Visible := true;
      FPrinc.pnTop.Visible   := true;
   end else
   if Mostra=0 then
   begin
      FPrinc.pnfundo.Visible := false;
      Fprinc.cxFundo.Visible := false;
//      if Fcad_Mesa = NIL then
//         FPrinc.pnTop.Visible   := false;
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

Function ConsultaQuery(StrCOnsulta: string; intQuery: Integer): Integer;
begin
   with dmCAd do
   begin
      try
         Result:= -1;
         case intQuery of
            1: begin
               qryAux.Close;
               qryAux.sql.clear;
               qryAux.sql.add(StrConsulta);
               qryAux.open;
               qryAux.FetchAll;
               qryAux.First;
               Result := qryAux.REcordCount;
            end;
            2: begin
               qryAux.close;
               qryAux.sql.clear;
               qryAux.sql.add(StrConsulta);
               qryAux.open;
               qryAux.FetchAll;
               qryAux.First;
               Result := qryAux.REcordCount;
            end;
            3: begin
               qryAux.close;
               qryAux.sql.clear;
               qryAux.sql.add(StrConsulta);
               qryAux.open;
               qryAux.FetchAll;
               qryAux.First;
               Result := qryAux.REcordCount;
            end;
         end;
      Finally
         GravaSql(StrConsulta, 'qryAux'+IntToStr(intQuery));
      end;
   end;
end;

Function ExecutaGen(StrTabela : String) : Integer;
begin
   with dmCad do
   begin
      ConsultaQuery('select GEN_ID(GEN_'+StrTabela+'_ID,1) codigo from dual',1);
      Result := dmCad.qryAux.Fieldbyname('CODIGO').asInteger;
   end;
end;

Function Consulta(StrConsulta: String; qrDados: TFDQuery): Boolean;
begin
   try
      qrDados.Close;
      qrDados.Sql.Clear;
      qrDados.SQL.Text := StrConsulta;
      qrDados.Open;
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

function ValidaData(const S: string): boolean;
begin
   try
      StrToDate(S);
      Result := true;
   except
      Result := false;
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
   FreeAndNil(TForm(NewForm));

   if (TForm(NewForm) = Nil) Or (not TForm(NewForm).HandleAllocated) Then
//      NewForm := FormClasse.Create(TForm(Application));
      Application.CreateForm(FormClasse, NewForm);

   TForm(NewForm).FormStyle   := fsNormal;
   TForm(NewForm).WindowState := wsNormal;
   TForm(NewForm).Visible     := False;
   TForm(NewForm).Position    := poMainFormCenter;

   if TForm(NewForm) = Fcad_Generica then
   begin
      Fcad_GEnerica.AbreCom('CON');
      Fcad_GEnerica.TABELA      := StrTabela;
   end;
//   FAbreForm.MostraPainelBusca(Con);
   TForm(NewForm).ShowModal;

   TForm(NewForm) := NIl;
   TForm(NewForm).Free;
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

   If TABELA = 'CLIENTE'         then dmCad.qryAux.Sql.Text := 'SELECT RAZAO  Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('CLI'); // Cliente
   If TABELA = 'FORNECEDOR'      then dmCad.qryAux.Sql.Text := 'SELECT RAZAO  Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('FOR'); // Cliente
   If TABELA = 'VENDEDOR'        then dmCad.qryAux.Sql.Text := 'SELECT RAZAO  Nome FROM CLIENTE WHERE IDCLIE=:CODIGO AND ATIVO = '+QuotedStr('S')+' AND TIPOCLIE='+QuotedStr('VEN'); // Cliente
   if TABELA = 'GRUPOS'          then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';
   if TABELA = 'SUBGRUPO'       then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';
   if TABELA = 'FPAGTO'          then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';
   if TABELA = 'LOCALIZACAO'     then dmCad.qryAux.Sql.Text := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';


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

end.
