unit Rotinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IniFiles, DB, WinProcs, Menus, ExtCtrls, Printers, Mask, MMSystem,
  cxButtons, dxStatusBar, CxGroupBox, cxLabel, cxCheckBox, cxTextEdit, cxMaskEdit; // acrescentar essa linha no use da unit para NF-E DLL;

///// Funções para Auxilio
   FUNCTION tirachar(texto: string): string;
   FUNCTION ConstStr(Ch: string; N: byte): string;
   FUNCTION StrZero(N: integer; Tamanho: integer): string;
   FUNCTION temletra(texto:string) : boolean;
   FUNCTION CAMINHODOSERVIDOR(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
   FUNCTION TrocaString(const S, OldPattern, NewPattern: string;
   Flags: TReplaceFlags): string;
   procedure Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);
   procedure FiltraRel(intCodRel: Integer);
   FUNCTION DifDatasHHHMMSS(data1, data2: TDateTime): String;
   Function Msg(Mensagem, TipoMsg: String): Boolean;

///// Validações
   PROCEDURE   VALIDACAMPOTAG(Form: TForm);
   PROCEDURE   CAIXAABERTO;
   PROCEDURE   CONTABAIXA;
   FUNCTION    VALIDAUF(Dado : string) : boolean;
   FUNCTION    VALIDACNPJ(Dado : string) : boolean;
   FUNCTION    VALIDACPF(Dado : string) : boolean;
   FUNCTION    DIGITOCODIGODEBAR(EREFERENCIA:string):integer;
   FUNCTION    CONTAUSUARIOLOGADO(): Integer;
   FUNCTION    VERIFICAVALIDADEDALICENCA(empresa, cnpj, dataexpira, terminais, palavrasecreta:string): Boolean;

///// Funções de Arquivos
   FUNCTION leini(arq,secao,chave:String):String;
   PROCEDURE GravaStreamGrid(CfgGrid:TStream; wCampo:String; wUsuid:Integer);
   PROCEDURE gravaini(arq,secao,chave,dado:String);
   PROCEDURE AddDados(NomeArq:String; Texto:String);
   PROCEDURE EnviaEmailDLL(Assunto, Destino, Anexo: String);

///// Segurança
   PROCEDURE SistemaLiberado;
   PROCEDURE ExecutaForm(FormClass: TFormClass; var Reference);
   function Crypt(Action, Src: String): String;
   procedure AbreConexao(intID: Integer);


///// Funções de controle
   procedure PFundo(mostra: integer);

///// Datas
   FUNCTION DataValida(const S: string): boolean;
   FUNCTION DataSql(Data: TDateTime): string;
   PROCEDURE datafim(data:tdatetime);
   FUNCTION MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;

///// Consultas
   FUNCTION BuscaNomeStr(TABELA: String; CODIGO:String):String;
   FUNCTION BuscaNomeAtivo(TABELA:String;CODIGO:Integer):String;
   FUNCTION BuscaNomeGen(TABELA:String;CODIGO:Integer):String;
   FUNCTION BUSCACONF(CAMPO:String):String;
   Function BuscaProduto(StrProd: String): String;
   Function BuscaRel(intRel: Integer): String;

///// Movimentações
   procedure LancamentoCaixa(DataBaixa: TDateTime; StrDocumento, StrHististorico, StrPlanoCt: string; Fcredito, FDebito: Double; intFpagto, intConta, intLote: Integer);
   Function Estoque(IDPROD: Integer; ORIGEM, DOC, TIPOMOV, DESCRICAO: String; QTDE: Double): Boolean;

var
   Usuario, wDrbAtivo, CAMPOPROD,
   StrTipoConta, StrTipoPedido,
   wEmpresa, NOME                : String;
   intCaixa, CODIGO              : Integer;
   FormAtivo                     : TForm;
   FCorSelec, FCorLista          : TColor;
   dataexpira                    : TdateTime;
   Liberacao                     :Boolean;    // Diz se o sistema esta liberado ou não
implementation

uses DateUtils, uMsg;

   type
      TEditBalloonTip = packed record
      cbStruct: DWORD ;
      pszTitle: LPCWSTR ;
      pszText: LPCWSTR;
      ttiIcon: Integer;
   end;

const
   ECM_FIRST = $1500;
   EM_SHOWBALLOONTIP = (ECM_FIRST + 3);
   EM_HIDEBALLOONTIP = (ECM_FIRST + 4);
   TTI_NONE = 0;
   TTI_INFO = 1;
   TTI_WARNING = 2;
   TTI_ERROR = 3;

procedure PFundo(mostra: integer);
begin
{   if Mostra=1 then
   begin
      Fprinc.cxFundo.Visible := true;
      FPrinc.pnfundo.Visible := true;
      FPrinc.pnTop.Visible   := true;
   end else
   if Mostra=0 then
   begin
      FPrinc.pnfundo.Visible := false;
      Fprinc.cxFundo.Visible := false;
      if Fcad_Mesa = NIL then
         FPrinc.pnTop.Visible   := false;
   end; }
end;

FUNCTION ConstStr(Ch: string; N: byte): string;
var
   St: string;
   I: Integer;
begin
   St := '';
   for I := 0 to N - 1 do
      St := St + Ch;
   Result := Copy(St, 1, N);
end;

FUNCTION StrZero(N: integer; Tamanho: integer): string;
var
   Conteudo: string;
   Diferenca: Integer;
begin
   Conteudo := IntToStr(N);
   Diferenca := Tamanho - Length(Conteudo);
   if Diferenca > 0 then
      Conteudo := ConstStr('0', Diferenca) + Conteudo;
   StrZero := Conteudo;
end;

FUNCTION BuscaNomeStr(TABELA: String; CODIGO:String):String;
var oNome:String;
begin
{   dmCad.qryAux.Close;

   If TABELA = 'PLANOCONTA'    then dmCad.qryAux.CommandText:='SELECT NOMEPLANO Nome FROM PLANOCONTA WHERE IDPLANO=:CODIGO and ATIVO='+QuotedStr('S');
   if TABELA = 'MUNICIPIOIBGE'  then dmCad.qryAux.CommandText:='SELECT CODMUN    Nome FROM CODIBGE WHERE MUNICIPIO =:CODIGO';
   if TABELA = 'NCM'            then dmcad.qryAux.CommandText:='SELECT DESCRICAO Nome FROM NCM      WHERE NCM=: CODIGO';

   dmCad.qryAux.ParamByName('CODIGO').AsString  :=  CODIGO;
   dmCad.qryAux.Open;

   If not dmCad.qryAux.IsEmpty then
      oNome := dmCad.qryAux.FieldbyName('NOME').AsString
   else
   begin
      oNome := 'ERRO';
      MessageDlg('Atenção! Código inexistente, verifique!', mtInformation, [mbOK], 0);
   end;
   dmCad.qryAux.Close;
   Result := oNome;}
end;

function BuscaNomeGen(TABELA:String;CODIGO:Integer):String;
var
   oNome:String;
begin
{   dmCad.qryAux.Close;
   dmCad.qryAux.Commandtext := 'SELECT DESCRICAO Nome FROM GENERICA WHERE TABELA='+QuotedStr(TABELA)+' AND IDGENERICA=:CODIGO';
   dmCad.qryAux.ParamByName('CODIGO').AsInteger :=  CODIGO;
   dmCad.qryAux.Open;

   If not dmCad.qryAux.IsEmpty then
      oNome := dmCad.qryAux.FieldbyName('NOME').AsString
   else
   begin
      oNome := 'ERRO';
      MessageDlg('Atenção! Código inexistente, verifique!', mtInformation, [mbOK], 0);
   end;
   dmCad.qryAux.Close;
   Result := oNome; }
end;

Function MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;
Var Continua : Boolean; DataAux : TDateTime;
begin
   Continua := True;
   DataAux := date;
   while Continua do
      Try
         DataAux := EncodeDate (Ano, Mes, Dia);
         Continua := False;
      Except
         Dec (Dia);
      End;
   MenorDataValida := DataAux;
end;

function DataSql(Data: TDateTime): string;
var
   FormatoData: string;
   DataS: string;
begin
{   FormatoData := ShortDateFormat;
   ShortDateFormat := 'mm/dd/yyyy';
   DataS := DateToStr(Data);
   ShortDateFormat := FormatoData;
   Result := DataS; }
end;

function BuscaNomeAtivo(TABELA:String;CODIGO:Integer):String;
var oNome:String;
begin
{   dmCad.qryAux.Close;

   If TABELA = 'CLIENTES'        then dmCad.qryAux.CommandText := 'SELECT RAZAO  Nome FROM CLIENTES WHERE IDCLIE=:CODIGO AND ATIVO = 1 AND TIPOCLIE='+QuotedStr('CLIENTE'); // Cliente
   if TABELA = 'FORNECEDOR'      then dmcad.qryAux.CommandText := 'SELECT RAZAO  Nome FROM CLIENTES WHERE IDCLIE=:CODIGO AND ATIVO = 1 AND TIPO='+QuotedStr('FORNECEDOR'); // Vendedor
   if TABELA = 'VENDEDOR'        then dmcad.qryAux.COmmandText := 'SELECT NOMEVEND  Nome FROM VENDEDOR WHERE IDVEND=:CODIGO AND ATIVOVEND <> '+QuotedStr('N');

   dmCad.qryAux.ParamByName('CODIGO').AsInteger  :=  CODIGO;
   dmCad.qryAux.Active   := true;

   If not dmCad.qryAux.IsEmpty then
      oNome := dmCad.qryAux.FieldbyName('NOME').AsString
   else
   begin
     oNome := 'ERRO';
     if TABELA = 'CLIENTE' then
       ShowMessage('Este código não pertence ao cadastro de '+TABELA+' ou '+TABELA+' não está Ativo')
     else
       ShowMessage('Este código não pertence ao cadastro de '+TABELA);
   end;
   dmCad.qryAux.Close;
   Result := oNome;     }
end;

procedure SistemaLiberado;
begin
   if Liberacao = false then
   begin
      Msg('Atenção! Sistema disponível apenas para consulta, verifique liberação.','I');
      Abort;
   end;
end;

procedure AddDAdos(NomeArq:String; Texto:String);
var Arq: TextFile;
begin
   AssignFile(Arq, ExtractFilePath(Application.ExeName)+'\Config\'+NomeArq);
   Append(Arq);
   try
      WriteLn(Arq, Texto);
   finally
      CloseFile(Arq)
   end;

end;

function BUSCACONF(CAMPO:String):String;
var oNome:String;
begin
{   dmcad.qryAux.Close;
   if CAMPO<>'' then
   begin
      dmcad.qryAux.CommandText:='select VALORCONF from ITEMCONF where CAMPO='+QuotedStr(CAMPO);
   end;
   dmCad.qryAux.Open;
   if not dmcad.qryAux.IsEmpty then
      oNome:= dmCad.qryAux.FieldByname('VALORCONF').asString else
   begin
      oNome:='ERRO';
      ShowMessage('Atenção! Configuração não encontrada, contate suporte!');
   end;

   ReSult := oNome;  }
end;

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

procedure GravaStreamGrid(CfgGrid:TStream; wCampo:String; wUsuid:Integer);
begin
   //
end;

function leini(arq,secao,chave:String): String;
var
  dadoini:TIniFile;
begin
  Dadoini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Ini\Parametros'+arq+'.ini');
  result:=Dadoini.ReadString(secao,chave,'');
end;

procedure gravaini(arq,secao,chave,dado:String);
var
  dadoini:TIniFile;
begin
  try
     Dadoini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Ini\Parametros'+arq+'.ini');
     Dadoini.WriteString(secao,chave,dado);
//     Dadoini.WriteString(secao,chave,dado);
     Dadoini.Free;
  except
     MessageDlg('Não foi possível gravar os Parametros na pasta Ini!'+#13+'Por favor verifique.',mtWarning,[mbok],0);
  end;
end;

function temletra(texto:string) : boolean;
var i : integer;
    oresultado : boolean;
begin
    oresultado := false;
    i:=1;
    while (i <= length(texto)) and (oresultado = false) do
    begin
       if not (texto[i] in ['0'..'9']) then oresultado := true;
       inc(i);
    end;

    result := oresultado;
end;

function DIGITOCODIGODEBAR(EREFERENCIA:string):integer;
var
   ean13:string;
   i,total,num,mult,digito:integer;
begin
    total:=0;
    ean13:='131313131313';
    for i:=1 to length(ereferencia) do
    begin
      num:=strtoint(eReferencia[i]);
      mult:=strtoint(ean13[i]);
      total:=total+(num*mult);
    end;

    if total mod 10 = 0 then
    begin
       digito:=0;
    end
    else
    begin
       digito:=10-(total mod 10);
    end;
    result:=digito;
end;

procedure datafim(data:tdatetime);
begin
   if data>dataexpira then
   begin
      MessageDlg('Data informada '+datetostr(data)+' maior que a'+#13+
                 'data máxima para utilização do sistema '+DatetoStr(dataexpira)+'!',
                  mtError,[mbok],0);
      application.terminate;
   end;
end;

function Crypt(Action, Src: String): String;
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
    Result:= '';
    Goto Fim;
  end;
//  Key :='YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
  Key := 'DRBALBJBVLB';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
    if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
    TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
    else TmpSrcAsc := TmpSrcAsc - OffSet;
    Dest := Dest + Chr(TmpSrcAsc);
    OffSet := SrcAsc;
    SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;

FUNCTION CAMINHODOSERVIDOR(ARQUIVO:STRING; SESSAO:STRING; PARAMETRO:STRING) :STRING;
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

function DataValida(const S: string): boolean;
begin
   try
      StrToDate(S);
      Result := true;
   except
      Result := false;
   end;
end;

procedure ExecutaForm(FormClass: TFormClass; var Reference);
begin
   Screen.Cursor := crHourGlass;
   try
      if TForm(Reference) = nil then
         Application.CreateForm(FormClass, TForm(Reference))
      else
      begin
         if TForm(Reference).WindowState = wsMinimized then
            TForm(Reference).WindowState := wsNormal;
         TForm(Reference).BringToFront;
      end;
   finally
      Screen.Cursor := crDefault;
      PFundo(0);
   end;
end;

procedure LancamentoCaixa(DataBaixa: TDateTime; StrDocumento, StrHististorico, StrPlanoCt: string; Fcredito, FDebito: Double; intFpagto, intConta, intLote: Integer);
var
   Fsaldo: Double;
begin
{   dmFinanceiro.qryAux.Close;
   dmfinanceiro.cdsAux.Close;
   dmfinanceiro.cdsAux.COmmandText := 'select DTFECHADO, SALDOCAIXA from caixa where IDCAIXA=' + intTOStr(intCOnta);
   dmfinanceiro.cdsAux.Open;
   ///// Pega o saldo do caixa
   FSaldo := dmfinanceiro.cdsAux.Fieldbyname('SALDOCAIXA').AsFloat;
   if dmfinanceiro.cdsAux.FieldByName('DTFECHADO').AsDateTime >= DATE then
   begin
      MessageDlg('O caixa esta fechado! Verifique!', mtWarning, [mbOK], 0);
      Abort;
   end;

   if dmFinanceiro.cdsItCaixa.Active = false then
      dmFinanceiro.cdsItCaixa.Active            := true;

   // Atualiza o Saldo com a movimentação
   FSaldo := FSaldo + (Fcredito - FDebito);

   dmFinanceiro.cdsItCaixa.Append;
   dmFinanceiro.cdsItCaixaDATAITEM.AsDateTime   := DataBaixa + Time;
   dmFinanceiro.cdsItCaixaDOCUMENTO.AsString    := StrDocumento;
   dmFinanceiro.cdsItCaixaCREDITO.AsFloat       := Fcredito;
   dmFinanceiro.cdsItCaixaDEBITO.AsFLoat        := FDebito;
   dmFinanceiro.cdsItCaixaHISTORICO.AsString    := StrHististorico;
   dmFinanceiro.cdsItCaixaIDCAIXA.ASinteger     := intConta;
   dmFinanceiro.cdsItCaixaIDLOTE.AsInteger      := intLote;
   dmFinanceiro.cdsItCaixaIDPLANOCTA.ASinteger  := StrToInt(StrPlanoCt);
   dmFinanceiro.cdsItCaixaUSUARIO.AsString      := FPrinc.UserControl1.CurrentUser.UserName;
   dmFinanceiro.cdsItCaixaSALDOITEM.AsFloat     := FSaldo;
   dmFinanceiro.cdsItCaixaIDFPAGTO.AsInteger    := intFpagto;

   dmFinanceiro.cdsItCaixa.Post;

   dmfinanceiro.cdsAux.Close;
   dmfinanceiro.cdsAux.CommandTexT := 'update CAIXA set SALDOCAIXA=:SALDO where IDCAIXA=' + intToStr(intCOnta);
   dmfinanceiro.cdsAux.Params.PArambyname('SALDO').asFloat := FSaldo;
   try
      dmFinanceiro.cdsItCaixa.ApplyUpdates(0);
      dmfinanceiro.cdsAux.Execute;
   except
      dmFinanceiro.cdsItCaixa.CancelUpdates;
      dmfinanceiro.cdsAux.CAncel;
   end;
   dmFinanceiro.qryAux.Close;
   dmfinanceiro.cdsAux.Close;   }
end;

procedure AbreConexao(intID: Integer);
begin
  { TD.TransactionID := intID;
   TD.IsolationLevel := xilREADCOMMITTED;
   dmCad.SQLCon.StartTransaction(TD); }
end;

function Estoque(IDPROD: Integer; ORIGEM, DOC, TIPOMOV, DESCRICAO: String;
  QTDE: Double): Boolean;
var
   FESTOQUEDISP, FESTOQUETOTAL, FSALDO: Double;
begin
///// PEGA SALDO DO PRODUTO
{   dmCad.qryAux.CLose;
   dmcad.cdsAux.close;
   dmCad.cdsAux.COmmandTExt := 'select ESTOQUETOTAL, ESTOQUEDISP from PRODUTO where IDPROD='+IntToStr(IDPROD);
   dmcad.cdsAux.Open;
   FESTOQUETOTAL:= dmcad.cdsAux.FIeldbyname('ESTOQUETOTAL').asFloat;
   FESTOQUEDISP := dmcad.cdsAux.FIeldbyname('ESTOQUEDISP').asFloat;

///// VERIFICA ESTOQUE NEGATIVO EM ORÇAMENTO
   if (ORIGEM='ORCVENDA') and (BUSCACONF('ESTOQUEORC') = 'NÃO') and (FESTOQUEDISP < QTDE) then
   begin
      ESTOQUE := False;
      exit;
   end;
///// VERIFICA ESTOQUE NEGATIVO NA VENDA
   if (ORIGEM='VENDA') and (BUSCACONF('ESTOQUEVENDA') = 'NÃO') and (FESTOQUETOTAL < QTDE) then
   begin
      ESTOQUE := False;
      exit;
   end;

///// INSERE ESTOQUE PEDIDO/ORCAMENTO
   if (ORIGEM='ORCVENDA') or (ORIGEM='PEDCPR') then
   begin
   ///// INICIA A QRY PARA UPDATE DO ORÇAMENTO/PEDIDO
      dmcad.qryAux.Close;
      dmcad.cdsAux.Close;
      dmCad.cdsAux.CommandText:=' UPDATE PRODUTO SET ';
      if (ORIGEM='ORCVENDA') then
         dmCad.cdsAux.CommandText := dmCad.cdsAux.CommandText + ' ESTOQUEORCAMENTO=ESTOQUEORCAMENTO+' + TrocaString(FormatFloat('0.00', QTDE), ',', '.', [rfReplaceAll]) else
      if (ORIGEM='PEDCPR') then
         dmCad.cdsAux.CommandText := dmCad.cdsAux.CommandText + ' ESTOQUEPEDIDO=ESTOQUEPEDIDO+' + TrocaString(FormatFloat('0.00', QTDE), ',', '.', [rfReplaceAll]);
      dmCad.cdsAux.CommandText := dmCad.cdsAux.CommandText + ', ESTOQUEDISP=ESTOQUEDISP+' + trocaString(FormatFloat('0.00', QTDE), ',', '.', [rfReplaceAll]) + ' where IDPROD=' + IntToStr(IDPROD);
      try
         dmcad.cdsAux.Execute;
         ESTOQUE := true;
      except
         dmcad.cdsAux.Cancel;
         ESTOQUE := False;
         MessageDlg('Não foi possível inserir o estoque, tente novamente!', mtWarning, [mbOK], 0);
      end;
   end else
///// INSERE ESTOQUE COMPRA/VENDA
   if (ORIGEM='VENDA') or (ORIGEM='COMPRA') or (ORIGEM='BALANCO') then
   begin
   ///// PEGA O SALDO ATUAL DO PRODUTO
      dmcad.qryAux.Close;
      dmCad.cdsAux.Close;
      dmCad.cdsAux.CommandText :='select SALDO from ESTOQUE where IDPROD='+IntToStr(IDPROD)+' and IDESTOQUE = (select max(idestoque) from estoque where IDPROD='+IntToStr(IDPROD)+')';
      dmCAd.cdsAux.Open;
      try
         FSALDO := dmCad.cdsAux.Fieldbyname('SALDO').asFloat;
      except
         FSALDO := 0;
      end;

      if not dmcad.cdsEstoque.Active = true then
         dmcad.cdsEstoque.Open;

   ///// Inicia Inserção
      dmcad.cdsEstoque.Insert;
      dmcad.cdsEstoqueIDPROD.AsINteger    := IDPROD;
      dmcad.cdsEstoqueORIGEM.AsString     := ORIGEM;
      dmCad.cdsEstoqueDATA.ASDateTime     := Date + Time;
      dmcad.cdsEstoqueDESCRICAO.AsString  := DESCRICAO;
      dmcad.cdsEstoqueUSUARIO.AsString    := FPrinc.UserControl1.CurrentUser.UserName;
      if TIPOMOV='E' then // ENTrADA
      begin
         dmcad.cdsEstoqueENTRADA.ASFLoat  := QTDE;
         dmcad.cdsEstoqueSAIDA.AsFloat    := 0;
      end else
      if TIPOMOV='S' then // SAIDA
      begin
         dmcad.cdsEstoqueENTRADA.ASFLoat  := 0;
         dmcad.cdsEstoqueSAIDA.AsFloat    := QTDE;
      end;
      dmcad.cdsEstoqueSALDO.AsFloat       := FSALDO + (dmcad.cdsEstoqueENTRADA.ASFLoat - dmcad.cdsEstoqueSAIDA.ASFLoat);
   ///// TENTA GRAVAR OS DADOS
      try
         dmcad.cdsEstoque.Post;
         dmcad.cdsEstoque.ApplyUpdates(0);
         Estoque := true;
      except
         dmcad.cdsEstoque.CancelUpdates;
         MessageDlg('Não foi possível inserir o estoque, tente novamente!', mtWarning, [mbOK], 0);
         Estoque := false;
      end;
   end;  }
end;

FUNCTION TrocaString(const S, OldPattern, NewPattern: string;
   Flags: TReplaceFlags): string;
var
   SearchStr, Patt, NewStr: string;
   Offset: Integer;
begin
   if rfIgnoreCase in Flags then
   begin
      SearchStr := UpperCase(S);
      Patt := UpperCase(OldPattern);
   end else
   begin
      SearchStr := S;
      Patt := OldPattern;
   end;
   NewStr := S;
   Result := '';
   while SearchStr <> '' do
   begin
      Offset := Pos(Patt, SearchStr);
      if Offset = 0 then
      begin
         Result := Result + NewStr;
         Break;
      end;
      Result := Result + Copy(NewStr, 1, Offset - 1) + NewPattern;
      NewStr := Copy(NewStr, Offset + Length(OldPattern), MaxInt);
      if not (rfReplaceAll in Flags) then
      begin
         Result := Result + NewStr;
         Break;
      end;
      SearchStr := Copy(SearchStr, Offset + Length(Patt), MaxInt);
   end;
end;

Function BuscaProduto(StrProd: String): String;
begin
{   dmcad.qryAux.Close;
///// Verifica se pode ser EAN
   if (Length(StrProd) = 13) and (not Temletra(StrProd)) then
   begin
///// Verifica se é EAN
      if  DIGITOCODIGODEBAR(copy(StrProd,1,12)) = StrToInt(StrProd[13]) then
      begin
///// Busca por REFERENCIA
         dmcad.qryAux.Close;
         dmcad.qryAux.CommandText := 'SELECT IDPROD PRODUTO WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
         dmcad.qryAux.Open;
///// Se não achou Busca por COD PRODUTO
         if dmcad.qryAux.IsEmpty then
         begin
            dmcad.qryAux.Close;
            dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE IDPROD='+QuotedStr(copy(StrProd,6,7))+' AND ATIVOPROD <> '+QuotedStr('N');
            dmcad.qryAux.Open;
         end;
///// Se não achou Busca por CODIGO DE BARRAS
         if dmcad.qryAux.IsEmpty then
         begin
            dmcad.qryAux.Close;
            dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
            dmcad.qryAux.Open;
         end;
      end
      else
      begin
///// Se não achou Busca por CODIGO PRODUTO
         dmcad.qryAux.Close;
         dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE IDPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
         dmcad.qryAux.Open;
///// Se não achou Busca por REFERENCIA
         if dmcad.qryAux.IsEmpty then
         begin
            dmcad.qryAux.Close;
            dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
            dmcad.qryAux.Open;
         end;
///// Se não achou Busca por CODIGO BARRAS
         if dmcad.qryAux.IsEmpty then
         begin
            dmcad.qryAux.Close;
            dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
            dmcad.qryAux.Open;
         end;
      end;
   end else
///// Se o tamnho é diferente ou menor que 13
   begin
///// Se não achou Busca por REFERENCIA
      dmcad.qryAux.Close;
      dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE REFPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
      dmcad.qryAux.Open;
///// Se não achou Busca por CODIGO PRODUTO
      if dmcad.qryAux.IsEmpty then
      begin
         dmcad.qryAux.Close;
         dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE IDPROD='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
         dmcad.qryAux.Open;
      end;
///// Se não achou Busca por CODIGO BARRAS
      if dmcad.qryAux.IsEmpty then
      begin
         dmcad.qryAux.Close;
         dmcad.qryAux.CommandText := 'SELECT IDPROD FROM PRODUTO WHERE CODBAR='+QuotedStr(StrProd)+' AND ATIVOPROD <> '+QuotedStr('N');
         dmcad.qryAux.Open;
      end;
   end;
///// Se não achou DEVOLVE 0
   If ((dmcad.qryAux.IsEmpty) or (dmcad.qryAux.RecordCount > 1)) then
      BuscaProduto := '0'
   else
///// Se achou devolve o codigo
      BuscaProduto := IntToStr(dmCad.qryAux.Fieldbyname('IDPROD').AsInteger);    }
end;

procedure Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);
var
   FileName: String;
begin
{   dmRel.dbPipeAux.DataSource                  := dsNome;
   dmRel.dbPipeAux.Active;
   if dsNome2 <> nIl then
   begin
      dmrel.dbPipeAux2.DataSOurce              := dsNome2;
      dmRel.dbPipeAux2.Active;
   end;
   dmRel.ppReport.Template.FileName            := LocalArquivo;
   dmRel.ppReport.Template.LoadFromFile;
   dmRel.ppReport.PrinterSetup.Copies          := Copias;
   dmRel.ppReport.PrinterSetup.DocumentName    := Caption;
   if TrocaImp = 'SIM' then
      dmRel.ppReport.ShowPrintDialog           := True else
      dmRel.ppReport.ShowPrintDialog           := False;
   if Preview = 'SIM' then
      dmRel.ppReport.DeviceType                := 'Screen' else
      dmRel.ppReport.DeviceType                := 'Printer';

   dmRel.ppReport.Print;

   /////
   if Length(EnviaEmail) > 0 then
   begin
      FileName := dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Temp\'+Caption+'.PDF';
      dmRel.ppReport.AllowPrintToFile := True;
      dmRel.ppReport.DeviceType := 'PDF';
      dmRel.ppReport.TextFileName := FileName;
      dmRel.ppReport.ShowPrintDialog :=False;
      dmRel.ppReport.PrintReport;
      EnviaEmailDll(Caption, EnviaEmail, dmRel.ppReport.TextFileName);
   end;   }
   /////
end;

Function BuscaRel(intRel: Integer): String;
begin
 {  dmRel.qryAux.Close;
   dmRel.qryAux.CommandText := 'select CAMINHO from RELATORIO where IDRELATORIO='+IntToStr(intRel);
   dmRel.qryAux.Open;
   Result := dmREl.qryAux.Fieldbyname('CAMINHO').AsString;   }
end;

procedure FiltraRel(intCodRel: Integer);
begin
///// Verifica a função do relatorio (cada um tem uma unit).
{   if (intCodRel >= 1) and (intCOdRel <= 100) then
      Listagem(intCodRel) else
   if (intCodRel >= 101) and (intCOdRel <= 200) then
      Faturamento(intCodRel) else
   if (intCodRel >= 201) and (intCOdRel <= 300) then
      Financeiro(intCodRel) else
   if (intCodRel >= 301) and (intCOdRel <= 400) then
      EstoqueRel(intCodRel);     }
end;

Procedure CaixaAberto;
begin
///// Valida parametro de caixa padrão
{   dmFinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select IDCAIXA from CAIXA where IDCAIXA='+(BUSCACONF('IDCAIXAPADRAO'));
   dmFinanceiro.qryAux.Open;
   if dmFinanceiro.qryAux.Fieldbyname('IDCAIXA').asInteger <= 0 then
   begin
      MessageDlg('Caixa não encontrado, verifique paramêtros!', mtWarning, [mbOK], 0);
      abort;
   end;

////// valida parametro de plano de conta venda
   dmFinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select IDPLANO from PLANOCONTA where IDPLANO='+(BUSCACONF('IDPLANOPADRAO'));
   dmFinanceiro.qryAux.Open;
   if dmFinanceiro.qryAux.Fieldbyname('IDPLANO').asInteger <= 0 then
   begin
      MessageDlg('Plano de contas não encontrado, verifique paramêtros!', mtWarning, [mbOK], 0);
      abort;
   end;      }
end;

procedure CONTABAIXA;
begin
///// Valida parametro de c/c PADRÃO 10/11
{   dmFinanceiro.qryAux.Close;
   if StrTipoConta='P' then
      dmFinanceiro.qryAux.CommandText := 'select IDCAIXA from CAIXA where IDCAIXA='+(BUSCACONF('CCPAGAR')) else
   if StrTipoConta='R' then
      dmFinanceiro.qryAux.CommandText := 'select IDCAIXA from CAIXA where IDCAIXA='+(BUSCACONF('CCRECEB'));
   dmFinanceiro.qryAux.Open;
   if dmFinanceiro.qryAux.Fieldbyname('IDCAIXA').asInteger <= 0 then
   begin
      MessageDlg('C/C não encontrado para baixa, verifique paramêtros!', mtWarning, [mbOK], 0);
      abort;
   end;

///// Valida parametro de Plano de contas PADRÂO 14/15
   dmFinanceiro.qryAux.Close;
   if StrTipoConta='P' then
      dmFinanceiro.qryAux.CommandText := 'select IDPLANO from PLANOCONTA where IDPLANO='+(BUSCACONF('PCONTAPAGAR')) else
   if StrTipoConta='R' then
      dmFinanceiro.qryAux.CommandText := 'select IDPLANO from PLANOCONTA where IDPLANO='+(BUSCACONF('PCONTARECEB'));
   dmFinanceiro.qryAux.Open;
   if dmFinanceiro.qryAux.Fieldbyname('IDPLANO').asInteger <= 0 then
   begin
      MessageDlg('Plano de Contas não encontrado para baixa, verifique paramêtros!', mtWarning, [mbOK], 0);
      abort;
   end;   }
end;

function tirachar(texto: string): string;
var aString: string;
   i: Integer;
begin
   aString := '';
   for i := 1 to length(texto) do
      if Texto[i] in ['0'..'9'] then aString := aString + Texto[i];
   Result := aString;
end;

function DifDatasHHHMMSS(data1, data2: TDateTime): String;
var hora, minuto, segundo: integer;
    ret: string;
begin
   if data1 < data2 then
      segundo:=Round(86400 * (data2 - data1))
   else
      segundo:=Round(86400 * (data1 - data2));
   hora:=segundo div 3600;
   segundo:=segundo - (hora * 3600);
   minuto:=segundo div 60;
   segundo:=segundo - (minuto * 60);
   if hora > 0 then
      ret:=FormatFloat('##0',hora)
   else
      ret:=FormatFloat('##0',0);
   ret:=ret + 'h ' + FormatFloat('00',minuto) + 'm ' + FormatFloat('00',segundo)+'s ';
   Result:=ret;
end;

procedure EnviaEmailDLL(Assunto, Destino, Anexo: String);
var
//   Util: NFe_Util_2G_Interface;
   mensagem,
   msgResultado: WideString;
   cStat: integer;
begin
{   Util := NFe_Util_2G_TLB.CoUtil.Create; // instancia DLL
///// Anexos
      //ANexoPdf := dmNfe.cdsParNfePASTAPDF.AsString + '\' + FormatDateTIme('YYYYMM', now) + '\' + dmNfe.cdsNFEID.AsString + '.pdf';
      //AnexoXml := dmNfe.cdsParNfeXMLCANCELADO.AsString + '\' + FormatDateTIme('YYYYMM', now) + '\' + dmNfe.cdsNFEID.AsString + '-Nfe.xml';

///// Gera Mensagem
   Mensagem := 'Envio de E-mail por: '+Assunto+ #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'Emitente.......: ' + dmcad.cdsCOnfRAZAOEMP.AsString + #13 + #10 +
      'Data Emissão...: ' + FormatDateTime('DD/MM/YYYY hh:mm', Now) + #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'Atenção! As informações contidas neste e-mail é de responsabilidade do emitente.' + #13 + #10 +
      '______________________________________________________________________________________' + #13 + #10 +
      'E-mail automático enviado do Sistema  - Apollo Bar - (http://www.drbsistemas.com.br)' + #13 + #10 + '';
   // Configura Corpo do E-mail;


/////
   cStat := Util.EnvEmail(dmcad.cdsCOnfUSUARIOEMAIL.ASString,
      dmcad.cdsCOnfFANTASIAEMP.AsString,
      Destino,
      '',
      Assunto,
      Mensagem,
      Anexo,
      dmcad.cdsCOnfHOSTEMAIL.ASString,
      dmcad.cdsCOnfPORTAEMAIL.AsString,
      dmcad.cdsCOnfSSLEMAIL.AsString,
      dmcad.cdsCOnfUSUARIOEMAIL.AsString,
      dmcad.cdsCOnfSENHAEMAIL.AsString,
      '0',
      '1',
      msgResultado);
   if cStat = 7100 then
      MessageDlg('E-mail enviado com sucesso!', mtInformation, [mbOK], 0) else
      MessageDlg('E-mail não enviado Falha: '+inttoStr(cStat)+'!', mtInformation, [mbOK], 0);
   Util := nil;   }
end;



Function CONTAUSUARIOLOGADO():integer;
begin
{   dmCad.qryAux.close;
   dmcad.qryAux.CommandText := 'select count(mon$user) from Mon$attachments';
   dmcad.qryAux.Open;

   Result := dmcad.qryAux.FieldbyName('COUNT').asInteger;    }
end;

FUNCTION VerificaValidadeDaLicenca(empresa, cnpj, dataexpira, terminais, palavrasecreta: string): Boolean;
begin
{   if (dmcad.cdsCOnfRAZAOEMP.asString            <> empresa) or
      (dmcad.cdsCOnfCNPJEMP.asString             <> cnpj) or
      (dmcad.cdsCOnfVALIDADELIC.AsString         <> dataexpira) or
      (strtoInt(dmcad.cdsCOnfQTDELIC.asString)   <> StrToint(terminais)) or
      ('RBDANILOSISTEMAS'                        <> palavrasecreta) then
      begin
         Msg('0209 - Licença Inválida, Contate Suporte', 'I');

         dmcad.cdsConf.Edit;
         dmcad.cdsCOnfVALIDADELIC.AsString := '';
         dmcad.cdsCOnfQTDELIC.AsString     := '';
         dmcad.cdsConf.Post;
         dmcad.cdsConf.ApplyUpdates(0);

         FormLibera := TFormLibera.Create(FormLibera);
         FormLibera.ShowModal;
      end;   }
end;


Procedure ValidaCAmpoTag(Form: TForm);
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
               (Components[i] as TcxTextEdit).Style.Color := $00BFBFFF;
               StrPreenche := StrPreenche + '-> '+(Components[i] as TcxTextEdit).Hint+#13;
               intPassou := intPassou + 1;
            end;

            if ((Components[i] as TcxTextEdit).Tag = 2) and (Pos('@', (Components[i] as TcxTextEdit).Text) = 0) then
            begin
               (Components[i] as TcxTextEdit).Style.Color := $00BFBFFF;
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
               (Components[i] as TcxMaskEdit).Style.Color := $00BFBFFF;
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
      StrMsg := 'Preencha os Campos Obrigatórios. '+#13+StrPreenche+#13;
   if StrCorrige  <> '' then
      StrMsg := StrMsg + 'Corrija os Campos abaixo. '+#13+StrCorrige;

   if intPassou > 0 then
   begin
      Msg(StrMsg,'I');
      abort;
   end;
end;

end.

{
SystemDefault
SystemAsterisk
SystemExclamation
SystemExit
SystemHand
SystemQuestion
SystemStart
}

