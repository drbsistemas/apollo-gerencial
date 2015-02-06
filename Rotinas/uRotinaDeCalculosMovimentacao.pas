unit uRotinaDeCalculosMovimentacao;

interface

Uses
   FireDAC.Comp.Client, uRotinas, Datasnap.DbClient, System.SysUtils;

   Procedure CalculaitensPedido(qrDados : TFdQUery);
   Procedure GerarCobranca(DData: TDateTime; FValorTotal: Double; StrCodigoMov, StrGerar, StrCPagtoId: String; RxParcela: TClientDataSet);

var
   FQtde,
   FTotalItem     : Double;
   TipoMov        : TTipoMov;

implementation

uses uDmCon, udmMov, uRotinaDeCalculosMatematicos;

Procedure CalculaitensPedido(qrDados : TFdQUery);
begin
   FQtde       := 0;
   FTotalItem  := 0;
   qrDados.DisableControls;
   qrDados.First;
   while not qrDados.Eof do
   begin
      FTotalItem := FTotalItem + qrDados.FieldByName('VLRTOTALITEM').AsFloat;
      FQtde      := FQtde + qrDados.FieldByName('QTDE').AsFloat;
      qrDados.Next;
   end;
   qrDAdos.EnableControls;
end;

procedure GerarCobranca(DData: TDateTime; FValorTotal: Double; StrCodigoMov, StrGerar, StrCPagtoId: String; RxParcela: TClientDataSet);
Var
   StrDoc,
   StrData: String;
   intQtdeParc,
   i,
   wdiasp,
   wDia,
   wMes,
   wAno : Integer;
   VlrParc,
   PercentualParc,
   VlrParcUm  : Double;
   DtVencimento : TDateTime;
begin
   StrData := DateToStr(DData);
   RxParcela.close;
   RxParcela.CreateDataSet;
   RxParcela.open;

   VlrParc := 0;
   ConsultaSql('select SUM(PERCENTUAL) PERCENTUAL from CPAGTOITEM where IDCPAGTO='+StrCPagtoId,dmMov.qryAux);
   PercentualParc := dmMov.qryAux.FieldByName('PERCENTUAL').AsFloat;

   ConsultaSQl('select * from CPAGTOITEM where IDCPAGTO ='+StrCPagtoID+' order by PARCELA', dmMov.qryAux);
   dmMov.qryAux.Last;
   intQtdeParc := dmMov.qryAux.FieldByName('PARCELA').AsInteger;

   if (intQtdeParc >0) and (PercentualParc=0) then
      VlrParc := CalculoCorreto(FValorTotal, intQtdeParc, '/', 2);

   i:=1;
   dmMov.qryAUx.First;

   while not dmMov.qryAux.Eof do
   begin
      StrDoc := StrCodigoMov+'-'+IntToStr(i)+'/'+IntToStr(intQtdeParc);
      RxParcela.Append;
      RxParcela.Fieldbyname('DOC').AsString  := StrDoc;
      if i=1 then // 1 Parcela
      begin
         wDia := StrToInt(Copy(StrData,1,2));
         wAno:= StrToInt(Copy(StrData,7,4));
         if (dmMov.qryAux.Fieldbyname('DIAS').AsInteger <>0) then
            wMes := StrToint(Copy(StrData, 4,2))+1 else
            wMes := StrToInt(Copy(StrData,4,2));

         if wMes>12 then
         begin
            wMes:=1;
            wAno:=wAno+1
         end;
         DtVencimento := MenorDataValida(wAno, WMes, wDia);
//         DtVencimento := MenorDataValida(StrToInt(Copy(StrData,7,4)),StrToInt(Copy(StrData,4,2)),StrToint(Copy(StrData,1,2)));

         rxParcela.Fieldbyname('VCTO').AsDateTime  := DtVencimento;
         wdiasp := dmMov.qryAux.Fieldbyname('DIAS').AsInteger;
      end else
      begin
         DtVencimento := (DtVencimento+(dmMov.qryAux.Fieldbyname('DIAS').AsInteger-wdiasp));
         wDia:=StrtoInt(Copy(StrData,1,2)); // 11/11/1111
         wmes:=wmes+1;
         if wmes=13 then
         begin
            wmes:=1;
            wano:=wano+1;
         end;
         DtVencimento:=MenorDataValida(wano,wmes,wdia);

          rxParcela.Fieldbyname('VCTO').AsDateTime  := DtVencimento;
      end;

      if PercentualParc <> 0 then
         RxParcela.FieldByName('VALOR').ASFloat := CalculoCorreto(FValorTotal, dmMov.qryAux.FieldbyName('PERCENTUAL').AsFLoat/100,'*',2) else
         if i=1 then
         begin
            VlrParcUm := VlrParc;
            RxParcela.FieldByName('VALOR').ASFloat := VlrParcUm;
         end else
            RxParcela.FieldByName('VALOR').ASFloat := VlrParc;

      rxParcela.Post;
      inc(i);
      dmMov.qryAux.Next;
   end;
   if PercentualParc=0 THEN
   begin
      rxParcela.Edit;
      RxParcela.FieldByName('VALOR').AsFloat  :=  RxParcela.FieldByName('VALOR').AsFloat+( FValorTotal - CalculoCorreto(intQtdeParc,VlrParc,'*',2) );
      rxParcela.Post;
   end;

   dmMov.qryAux.Close;
end;

end.
