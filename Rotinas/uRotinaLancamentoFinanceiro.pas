unit uRotinaLancamentoFinanceiro;

interface

Uses
   System.SysUtils;

   PROCEDURE LancaAdiantamento(DData: TDateTime; StrDoc, StrDescricao: String; FSAldoAntes, FCredito, FDebito: Double;
      IntCodCLie: Integer );
   FUNCTION LancamentoCaixa(DataBaixa: TDateTime; StrDocumento, StrHistorico: string;
      Fcredito, FDebito: Double; intFpagto, intPlanoConta, intConta, intLote: Integer): Boolean;

implementation

uses udmFin, uPrinc, uRotinas;

Procedure LancaAdiantamento(DData: TDateTime; StrDoc, StrDescricao: String; FSAldoAntes, FCredito, FDebito: Double;
   IntCodCLie: Integer );
begin
   with dmFin.qryCredito do
   try
      Append;
      FieldByName('DATA').AsDateTime    := DData;
      FieldByName('DOCUMENTO').AsString := StrDoc;
      FieldByName('SALDOANTES').AsFloat := FSaldoAntes; // Ver isso;
      FieldByName('CREDITO').AsFloat    := FCredito;
      FieldByName('DEBITO').AsFloat     := FDebito;
      FieldByName('SALDO').AsFloat      := (FSaldoAntes + FCredito) - FDebito;
      FieldByName('IDCLIE').AsInteger   := intCodCLie;
      FieldByName('DESCRICAO').AsString := StrDescricao;
      FieldByName('USUARIO').AsString   := FPrinc.UserControl1.CurrentUser.UserName;
      post;
      ApplyUpdates(0);

      ExecutaSql('update cliente set CREDITO='+FloatToStr((FSaldoAntes + FCredito) - FDebito)+' where IDCLIE='+IntToStr(IntCodCLie), dmFIn.qryAux);
   except
      CancelUpdates;
   end;
end;

Function LancamentoCaixa(DataBaixa: TDateTime; StrDocumento, StrHistorico: string;
   Fcredito, FDebito: Double; intFpagto, intPlanoConta, intConta, intLote: Integer): Boolean;
var
   Fsaldo: Double;
begin
   with dmFin do
   begin
      ConsultaSql('SELECT DTFECHADO, SALDOCAIXA FROM CAIXA WHERE IDCAIXA='+IntToStr(intConta), qryAux);
      ///// Pega o saldo do caixa
      FSaldo := qryAux.Fieldbyname('SALDOCAIXA').AsFloat;

      if qryAux.FieldByName('DTFECHADO').AsDateTime >= DATE then
      begin
         Msg('Identificamos que o caixa esta fechado, verifique!','I',':(');
         Abort;
      end;

      if qryCaixaItem.Active = False then
         qryCaixaItem.Open;

      // Atualiza o Saldo com a movimentação
      FSaldo := FSaldo + (Fcredito - FDebito);


      qryCaixaItem.Append;
      qryCaixaItem.FieldByName('DATAITEM').AsDateTime   := DataBaixa + Time;
      qryCaixaItem.FieldByName('DOCUMENTO').AsString    := StrDocumento;
      qryCaixaItem.FieldByName('CREDITO').AsFloat       := Fcredito;
      qryCaixaItem.FieldByName('DEBITO').AsFLoat        := FDebito;
      qryCaixaItem.FieldByName('HISTORICO').AsString    := StrHistorico;
      qryCaixaItem.FieldByName('IDCAIXA').ASinteger     := intConta;
      qryCaixaItem.FieldByName('IDLOTE').AsInteger      := intLote;
      qryCaixaItem.FieldByName('IDPLANO').ASinteger     := intPlanoConta;
      qryCaixaItem.FieldByName('USUARIO').AsString      := Usuario;
      qryCaixaItem.FieldByName('SALDOITEM').AsFloat     := FSaldo;
      qryCaixaItem.FieldByName('IDFPAGTO').AsInteger    := intFpagto;

      qryCaixaItem.Post;
      try
         ExecutaSql('update CAIXA set SALDOCAIXA='+trocaString(FormatFloat('0.00', FSaldo), ',', '.', [rfReplaceAll])+' where IDCAIXA=' + intToStr(intCOnta), qryAux);
         qryCaixaItem.ApplyUpdates(0);
      except
         qryCaixaItem.CancelUpdates;
      end;
      qryAux.Close;
   end;
end;

end.
