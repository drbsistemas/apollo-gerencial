unit uRotinaLancamentoDeCheques;

interface

Uses
   System.StrUtils, System.SysUtils, System.DateUtils, uRotinaDeCalculosMovimentacao, uRotinaLancamentoFinanceiro;

   PROCEDURE   MarcaDesmarcaCheque(intCheque: Integer);
   FUNCTION    LancamentoDeCheque(intCaixa, intPlano, inClie:Integer;
                                  DtEmissao, DtVencto: TDateTime;
                                  nBanco, nAgencia, nConta, nCheque, nPortador, nObs: string;
                                  FVlrTotal:Double): Boolean;
   FUNCTION    LancaMovimentacaoCheque(DData: TDateTime; StrStatus: String): Boolean;
   FUNCTION    LancaHistoricoDeCheque(intIdCheque: Integer; StrHistorico: String; Ddate: TDateTime): Boolean;
   FUNCTION    LancaDevolucaoDeCheque(DDate: TDateTime): Boolean;

implementation

uses uPrinc, udmFin, uRotinas;

procedure MarcaDesmarcaCheque(intCheque: Integer);
begin
   with dmFin do
   begin
      if not cdsChequeSelec.Active then
         CriaLimpaDataSet(cdsChequeSelec);

      if (not cdsChequeSelec.locate('IDCHEQUE', intCheque, [])) then
      begin
         cdsChequeSelec.Append;
         cdsChequeSelecIDCHEQUE.AsInteger     := qryCheque.FieldByName('IDCHEQUE').ASinteger;
         cdsChequeSelecIDCLIE.ASInteger       := qryCheque.FieldByName('IDCLIE').ASInteger;
         cdsChequeSelecIDCAIXA.AsInteger      := qryCheque.FieldByName('IDCAIXA').ASInteger;
         cdsChequeSelecCLIENTE.AsString       := qryCheque.FieldByName('RAZAO').AsString;
         cdsChequeSelecNCHEQUE.AsString       := qryCheque.FieldByName('NCHEQUE').AsString;
         cdsChequeSelecDTEMISSAO.AsDateTIme   := qryCheque.FieldByName('DTEMISSAO').AsDateTIme;
         cdsChequeSelecTIPOCHEQUE.AsString    := qryCheque.FieldByName('TIPOCHEQUE').AsString;
         cdsChequeSelecSTATUS.AsString        := qryCheque.FieldByName('STATUS').AsString;
         cdsChequeSelecBANCO.AsString         := qryCheque.FieldByName('BANCO').AsString;

         cdsChequeSelecVLRTOTAL.AsFloat       := qryCheque.FieldbyName('VLRTOTAL').AsFloat;
         cdsChequeSelec.Post;
      end else
         cdsChequeSelec.DELETE;
   end;
end;

Function LancamentoDeCheque(intCaixa, intPlano, inClie:Integer;
                           DtEmissao, DtVencto: TDateTime;
                           nBanco, nAgencia, nConta, nCheque, nPortador, nObs: string;
                           FVlrTotal:Double): Boolean;
begin
   with dmFin do
   begin

      qryCheque.Append;
      qryCheque.FieldByName('IDCAIXA').AsInteger       := intCaixa;
      qryCheque.FieldByName('IDPLANO').AsInteger       := intPlano;
      qryCheque.FieldByName('IDCLIE').AsInteger        := inClie;
      qryCheque.FieldByName('DTEMISSAO').AsDateTime    := DtEmissao;
      qryCheque.FieldByName('DTVENCIMENTO').AsDateTime := DtVencto;
      qryCheque.FieldByName('DTDEPOSITO').IsNull;
      qryCheque.FieldByName('NBANCO').AsString         := nBanco;
      qryCheque.FieldByName('NAGENCIA').AsString       := nAgencia;
      qryCheque.FieldByName('NCONTA').AsString         := nConta;
      qryCheque.FieldByName('NCHEQUE').AsString        := nCheque;
      qryCheque.FieldByName('TIPOCHEQUE').AsString     := ifs(TipoMov=ENTRADA,'T','P');
      qryCheque.FieldByName('STATUS').AsString         := 'ABERTO';
      qryCheque.FieldByName('NOMEPORTADOR').AsString   := nPortador;
      qryCheque.FieldByName('OBSERVACAO').AsString     := nObs;
      qryCheque.FieldByName('VLRTOTAL').AsFloat        := FVlrTotal;

      qryCheque.Post;
      try
         qryCheque.ApplyUpdates(0);
         Result := True;
      except
         qryCheque.CancelUpdates;
         Result := False;
      end;
      qryCheque.Close;
   end;
end;

function LancaHistoricoDeCheque(intIdCheque: Integer; StrHistorico: String; Ddate: TDateTime): Boolean;
begin
   with dmFin do
   begin
      if qryChequeHis.Active = False then
         ConsultaSql('select * from CHEQUEHISTORICO', qryChequeHis);

      qryChequeHis.Append;
      qryChequeHis.FieldByName('IDCHEQUE').AsInteger  := intIdCheque;
      qryChequeHis.FieldByName('USUARIO').AsString    := FPrinc.UserControl1.CurrentUser.UserName;
      qryChequeHis.FieldByName('HISTORICO').AsString  := StrHistorico;
      qryChequeHis.FieldByName('DATA').AsDateTime     := DDate;
      qryChequeHis.Post;
      try
         qryChequeHis.ApplyUpdates(0);
         Result := True;
      except
         qryChequeHis.CancelUpdates;
         Result := False;
      end;
      qryChequeHis.Close;
   end;
end;


Function LancaMovimentacaoCheque(DData: TDateTime; StrStatus: String): Boolean;
begin
   with dmFin do
   begin
      try
         cdsChequeSelec.DisableControls;
         cdsChequeSelec.First;
         try
            while not cdsChequeSelec.Eof do
            begin
               ExecutaSql('UPDATE cheque SET status='+QuotedStr(StrStatus)+' where idcheque='+cdsChequeSelecIDCHEQUE.AsString, qryAux);
               LancaHistoricoDeCheque(cdsChequeSelecIDCHEQUE.AsInteger, StrStatus+' NA C/C: '+cdsChequeSelecIDCAIXA.AsString+' - '+cdsChequeSelecBANCO.AsString+' EM: '+DateToStr(DData), Date);
               if StrStatus = 'COMPENSADO' then
                  LancamentoCaixa(DData,
                                  cdsChequeSelecNCHEQUE.AsString,
                                  'CHEQUE '+ifs(TipoMov=ENTRADA, 'TERCEIROS ','PRÓPRIO ')+StrStatus,
                                  ifs(TipoMov=ENTRADA, cdsChequeSelecVLRTOTAL.AsFloat, 0),
                                  ifs(TipoMov=ENTRADA, 0, cdsChequeSelecVLRTOTAL.AsFloat),
                                  cdsChequeSelecIDFPAGTO.AsInteger,
                                  cdsChequeSelecIDPLANO.AsInteger,
                                  cdsChequeSelecIDCAIXA.AsInteger,
                                  cdsChequeSelecIdLote.AsInteger);
               cdsChequeSelec.next;
            end;
            Result := True;
         Except
            Result := False;
         end;
      finally
         cdsChequeSelec.EnableControls;
      end;
   end;
end;


Function LancaDevolucaoDeCheque(DDate: TDateTime): Boolean;
var
   StrStatus: String;
begin
   with dmFin do
   begin
      try
         cdsChequeSelec.DisableControls;
         cdsChequeSelec.First;
         try
            while not cdsChequeSelec.Eof do
            begin
               if cdsChequeSelecSTATUS.AsString = 'COMPENSADO' then // É por que estava
                  LancamentoCaixa(DDate,
                                  cdsChequeSelecNCHEQUE.AsString,
                                  'CHEQUE '+ifs(TipoMov=ENTRADA, 'TERCEIROS','PRÓPRIO')+' FOI DEVOLVIDO',
                                  ifs(TipoMov=ENTRADA, 0, cdsChequeSelecVLRTOTAL.AsFloat),
                                  ifs(TipoMov=ENTRADA, cdsChequeSelecVLRTOTAL.AsFloat, 0),
                                  cdsChequeSelecIDFPAGTO.AsInteger,
                                  cdsChequeSelecIDPLANO.AsInteger,
                                  cdsChequeSelecIDCAIXA.AsInteger,
                                  cdsChequeSelecIdLote.AsInteger);

               case AnsiIndexStr(cdsChequeSelecSTATUS.AsString, ['DEPOSITADO', 'COMPENSADO']) of
                  0: StrStatus := 'ABERTO';
                  1: StrStatus := 'DEPOSITADO';
               end;
               ExecutaSql('UPDATE cheque SET status='+QuotedStr(StrStatus)+' where idcheque='+cdsChequeSelecIDCHEQUE.AsString, qryAux);
               LancaHistoricoDeCheque(cdsChequeSelecIDCHEQUE.AsInteger,'CHEQUE DEVOLVIDO PARA STATUS: '+StrStatus+' EM: '+DateToStr(DDate), Date);
               cdsChequeSelec.next;
            end;
            Result := True;
         Except
            Result := False;
         end;
      finally
         cdsChequeSelec.EnableControls;
      end;
   end;
end;

end.
