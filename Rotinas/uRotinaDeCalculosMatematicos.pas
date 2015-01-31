unit uRotinaDeCalculosMatematicos;

interface

   function CalculaMargemLucro(FMargemLucro, FValorCusto: Double) : Double;
   function RecalculaMargemLucro(FPrecoVenda, FValorCusto: Double): Double;

implementation

function CalculaMargemLucro(FMargemLucro, FValorCusto: Double) : Double;
begin
   Result := FValorCusto * (1+(FMargemLucro/100));
end;

function RecalculaMargemLucro(FPrecoVenda, FValorCusto: Double): Double;
begin
   if (FPrecoVenda >0) and (FValorCusto >0) then
      Result := (((FPrecoVenda/FValorCusto)-1)*100) else
      Result := 0;
end;

end.
