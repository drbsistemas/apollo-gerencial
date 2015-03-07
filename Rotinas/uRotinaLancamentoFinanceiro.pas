unit uRotinaLancamentoFinanceiro;

interface

Uses
   System.SysUtils, System.DateUtils, uRotinaDeCalculosMovimentacao;

type
   TTipoValor = (PJUROS, PMULTA);

Const
   intDinheiro       = 1;
   intCartao         = 2;
   intChequeProrio   = 3;
   intChequeTerceiro = 4;

   // Calculos Financeiros
   FUNCTION    CalculaValorAtualizado(tipoValor: TTipoValor; DData: TDateTime; FValorCalcula, FValorinicial: Double; intDiaAtraso: Integer): Double;
   FUNCTION    CalculaDiasAtraso(DData: TDateTime; intDiaAtraso: Integer): Integer;
   PROCEDURE   AtualizaEMarcaConta(DData:TDateTime; intConta: Integer; bAtualiza:Boolean);

   // Lançamentos Financeiros
   PROCEDURE   LancaAdiantamento(DData: TDateTime; StrDoc, StrDescricao: String; FSAldoAntes, FCredito, FDebito: Double;
      IntCodCLie: Integer );
   FUNCTION    LancamentoCaixa(DataBaixa: TDateTime; StrDocumento, StrHistorico: string;
      Fcredito, FDebito: Double; intFpagto, intPlanoConta, intConta, intLote: Integer): Boolean;


   // Pega Dados Financeiros
   FUNCTION PegaNumeroParaLoteDeBaixa(): Integer;


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

Function CalculaValorAtualizado(tipoValor: TTipoValor; DData: TDateTime; FValorCalcula, FValorinicial: Double; intDiaAtraso: Integer): Double;
var
   fPJuros, fPMulta  : Double;
Begin
   Result            := FValorCalcula;
   if TipoMov=ENTRADA then
   begin
      fPJuros           := StrToFloat(BuscaConf('PJUROS'));
      fPMulta           := StrToFloat(BuscaConf('PMULTA'));
      if intDiaAtraso > 0 then
      begin
         if (tipoValor = PJuros) then
            Result := FValorCalcula + ((((fPJuros/100) * FValorinicial)/30)*intDiaAtraso);
         if (tipoValor = PMULTA) then
            Result := FValorCalcula + ((fPMulta/100) * FValorinicial);
      end;
   end;
End;

Function CalculaDiasAtraso(DData: TDateTime; intDiaAtraso: Integer): Integer;
var
   intDiaCarencia: Integer;
begin
   intDiaCarencia := StrToInt(BUSCACONF('DIASCARENCIA'));
   intDiaAtraso   := intDiaAtraso - intDiaCarencia;
   DiaDaSemana    := DiaSemana(DData);
   if intDiaAtraso>0 then
   begin
      Result      := ifs(DiaDaSemana='Sábado',intDiaAtraso-2, intDiaAtraso);
      Result      := ifs(DiaDaSemana='Domingo', intDiaAtraso-1, intDiaAtraso);
   end else
   Result         := 0;
end;

procedure AtualizaEMarcaConta(DData: TDateTime; intConta: Integer; bAtualiza:Boolean);
begin
   with dmFin do
   begin
      if not cdsSelec.Active then
      begin
         CriaLimpaDataSet(cdsSelec);
      end;

      if (not CdsSelec.locate('IDCONTA', intConta, [])) or (bAtualiza=True) then
      begin
         if bAtualiza=True then
            cdsSelec.Edit else
            cdsSelec.Append;
         cdsSelecIDCONTA.AsInteger     := qryConta.FieldByName('IDCONTA').ASinteger;
         cdsSelecIDCLIE.ASInteger      := qryConta.FieldByName('IDCLIE').ASInteger;
         cdsSelecIDPLANO.AsInteger     := qryConta.FieldByName('IDPLANOCTA').ASInteger;
         cdsSelecDOCUMENTO.AsString    := qryConta.FieldByName('DOCUMENTO').AsString;
         cdsSelecNOMECLIE.AsString     := qryConta.FieldByName('RAZAO').AsString;
         cdsSelecDTVENCTO.AsDateTIme   := qryConta.FieldByName('DTVENCTO').AsDateTIme;
         cdsSelecDTEMISSAO.AsDateTime  := qryConta.FieldByName('DTEMISSAO').AsDateTIme;

         cdsSelecDIASATRASO.AsInteger  := CalculaDiasAtraso(DData, DaysBetween(DData, qryConta.FieldByName('DTVENCTO').AsDateTime));
         cdsSelecVLRINI.AsFloat        := qryConta.FieldByName('VLRINI').ASFloat;

         cdsSelecVLRJUROSINI.AsFloat   := qryConta.FieldByName('VLRJUROS').ASFLoat;
         cdsSelecVLRMULTAINI.ASFLoat   := qryConta.FieldByName('VLRMULTA').ASFLoat;
         cdsSelecVLRDESCINI.ASFLoat    := qryConta.FieldByName('VLRDESC').ASFLoat;

         cdsSelecVLRJUROS.AsFloat      := CalculaValorAtualizado(PJuros, Date,
                                                                  cdsSelecVLRJUROSINI.AsFloat,
                                                                  cdsSelecVLRINI.AsFloat,
                                                                  cdsSelecDIASATRASO.AsInteger);
         cdsSelecVLRMULTA.ASFLoat      := CalculaValorAtualizado(PMulta, Date,
                                                                  cdsSelecVLRMULTAINI.ASFLoat,
                                                                  cdsSelecVLRINI.AsFloat,
                                                                  cdsSelecDIASATRASO.AsInteger);
         cdsSelecVLRDESC.ASFLoat       := qryConta.FieldByName('VLRDESC').ASFLoat;

         cdsSelecVLRBRUTO.ASFLoat      := (cdsSelecVLRINI.AsFloat +
                                          cdsSelecVLRJUROS.AsFloat +
                                          cdsSelecVLRMULTA.ASFLoat) -
                                          cdsSelecVLRDESC.ASFLoat;

         cdsSelecHISTORICO.ASString    := qryConta.FieldByName('HISTORICO').asString;
         cdsSelecSTATUS.AsString       := qryConta.FieldByName('STATUSCONTA').ASString;
         cdsSelecVLRPAGO.ASFloat       := qryConta.FieldByName('VLRPAGO').AsFloat;
         cdsSelec.Post;
      end else
         cdsSelec.DELETE;
   end;
end;

Function PegaNumeroParaLoteDeBaixa(): Integer;
begin
   ConsultaSql('SELECT GEN_ID(GEN_IDLOTE,1) CODIGO FROM DUAL',dmFin.qryAux);
   Result := dmFin.qryAux.FieldByName('CODIGO').asInteger;
end;


Procedure LancaBaixaNoCaixa(intLote: Integer);
begin
   with dmFin do
   begin
      cdsSelec.First;
      while not cdsSelec.Eof do
      begin

         cdsSelec.Next
      end;
   end;
end;

end.
