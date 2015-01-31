unit uRotinaLancamentoFinanceiro;

interface

Uses
   System.SysUtils;

   PROCEDURE LancaAdiantamento(DData: TDateTime; StrDoc, StrDescricao: String; FSAldoAntes, FCredito, FDebito: Double;
   IntCodCLie: Integer );

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

end.
