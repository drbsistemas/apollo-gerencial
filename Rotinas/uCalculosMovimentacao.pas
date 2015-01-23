unit uCalculosMovimentacao;

interface

Uses
   FireDAC.Comp.Client;

   Procedure CalculaitensPedido(qrDados : TFdQUery);

type
   TTipoMov = (ENTRADA, SAIDA);

var
   FQtde,
   FTotalItem     : Double;
   TipoMov        : TTipoMov;

implementation

uses uDmCon;

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

end.
