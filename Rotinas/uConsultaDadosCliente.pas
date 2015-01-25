unit uConsultaDadosCliente;

interface

Uses
   System.SysUtils;

   Function VerificaDadoDoCliente(StrCodCLiente: String): String;
   Function ConsultaLimiteFinanceirodoCliente(StrCodCLiente: String): Double;

implementation

uses uRotinas, uDmCad;


Function VerificaDadoDoCliente(StrCodCLiente: String): String;
var
   FValorDePendenciasDoCliente: Double;
   intAlertaClie: Integer;
   StrClieBloqueado,
   StrObsClie,
   StrRazaoClie : String;
   FLimiteFinanceiroClie: Double;

begin
   if StrToInt(StrCodCLiente) > 0 then
   begin
      ConsultaSql('select RAZAO, alertaclie, bloqueado, obs, limitefinanceiro, credito '+#13+
         ' from cliente where TIPOCLIE='+QuotedStr('CLI')+' and idclie='+StrCodCLiente, dmCad.qryAux);

      StrClieBloqueado               := dmCad.qryAux.Fieldbyname('BLOQUEADO').AsString;
      intAlertaClie                  := dmCad.qryAux.Fieldbyname('ALERTACLIE').AsInteger;
      StrObsClie                     := dmCad.qryAux.Fieldbyname('OBS').AsString;
      StrRazaoClie                   := dmCad.qryAux.Fieldbyname('RAZAO').AsString;
      FLimiteFinanceiroClie          := dmCad.qryAux.Fieldbyname('limitefinanceiro').AsFloat;
      Result                         := StrRazaoClie;
      dmCad.qryAux.Close;


      if intAlertaClie > 0 then
         Msg(StrObsClie,'I',';D');

      if StrClieBloqueado = 'S' then
      begin
         Msg('Verificamos que este cadastro está bloqueado, não permitindo compras por ele, verifique!','I',';X');
         Result := 'NENHUM';
      end;

      if FLimiteFinanceiroClie > 0 then
      begin
         FValorDePendenciasDoCliente := ConsultaLimiteFinanceirodoCliente(StrCodCLiente);
         if  (FValorDePendenciasDoCliente > FLimiteFinanceiroClie) then
         begin
            if Msg('Verificamos que o Limite Financeiro do Cliente foi Atingido, Verifique!','P',';O') = False then
               Result := 'NENHUM';
         end;
      end;
   end else
      Result := 'NENHUM';
end;

Function ConsultaLimiteFinanceirodoCliente(StrCodCLiente: String): Double;
begin
   ConsultaSQl('select sum() ValorTotal from CONTAS where IDCLIE = '+StrCodCLiente, dmcad.qryAux);
   result := dmCad.qryAux.FieldByName('ValorTOtal').AsFloat;
   dmCad.qryAux.Close;
end;

end.
