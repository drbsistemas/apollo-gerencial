unit uEstoque;

interface

Uses
   System.SysUtils;

Type
   TORIGEM  = (PEDIDO, ORCAMENTO, VENDA, COMPRA, BALANCO);
   TTIPOMOV = (ENTRADA, SAIDA);

   FUNCTION Estoque(IDPROD, IDCLIE: Integer; ORIGEM: TORIGEM; TIPOMOV: TTIPOMOV;
   DOCUMENTO, DESCRICAO: String; CUSTO, QTDE: Double): Boolean;

implementation

uses uDmCad, uRotinas, uPrinc;



function Estoque(IDPROD, IDCLIE: Integer; ORIGEM: TORIGEM; TIPOMOV: TTIPOMOV;
   DOCUMENTO, DESCRICAO: String; CUSTO, QTDE: Double): Boolean;
var
   FESTOQUEDISP, FESTOQUETOTAL, FSALDO: Double;
begin
///// PEGA SALDO DO PRODUTO
   ConsultaSql('select ESTOQUETOTAL, ESTOQUEDISP from PRODUTO where IDPROD='+IntToStr(IDPROD),dmcad.qryAux);
   FESTOQUETOTAL:= dmcad.qryAux.FIeldbyname('ESTOQUETOTAL').asFloat;
   FESTOQUEDISP := dmcad.qryAux.FIeldbyname('ESTOQUEDISP').asFloat;
   FSALDO       := dmcad.qryAux.FIeldbyname('SALDO').asFloat;
   dmcad.qryAux.Close;

///// VERIFICA ESTOQUE NEGATIVO EM ORÇAMENTO
   if (ORIGEM=ORCAMENTO) and (BUSCACONF('ESTOQUEORC') = 'NÃO') and (FESTOQUEDISP < QTDE) then
   begin
      ESTOQUE := False;
      exit;
   end;
///// VERIFICA ESTOQUE NEGATIVO NA VENDA
   if (ORIGEM=VENDA) and (BUSCACONF('ESTOQUEVENDA') = 'NÃO') and (FESTOQUETOTAL < QTDE) then
   begin
      ESTOQUE := False;
      exit;
   end;

///// INSERE ESTOQUE PEDIDO/ORCAMENTO
   if (ORIGEM=ORCAMENTO) or (ORIGEM=PEDIDO) then
   begin
      ///// INICIA A QRY PARA UPDATE DO ORÇAMENTO/PEDIDO
      dmcad.qryProd.Edit;
      if (ORIGEM=ORCAMENTO) then
         dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat := (dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat + QTDE) else
      if (ORIGEM=PEDIDO) then
         dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat    := (dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat + QTDE);
      dmcad.qryProd.FieldByName('ESTOQUEDISP').AsFloat         := dmcad.qryProd.FieldByName('ESTOQUETOTAL').AsFloat + (dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat - dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat);

      try
         dmcad.qryProd.Post;
         dmCad.qryProd.ApplyUpdates(0);
         ESTOQUE := true;
      except
         dmcad.qryProd.CancelUpdates;
         ESTOQUE := False;
         Msg('Oi, Verificamos que não foi possível inserir o estoque, tente novamente!','I',':(');
      end;
   end else
///// INSERE ESTOQUE COMPRA/VENDA
   if (ORIGEM=VENDA) or (ORIGEM=COMPRA) or (ORIGEM=BALANCO) then
   begin
   ///// PEGA O SALDO ATUAL DO PRODUTO PARA MOVIMENTAR
      ConsultaSql('select SALDO from ESTOQUE where IDPROD='+IntToStr(IDPROD)+' and IDESTOQUE = (select max(idestoque) from estoque where IDPROD='+IntToStr(IDPROD),dmCad.qryAux);
      try
         FSALDO := dmCad.qryAux.Fieldbyname('SALDO').asFloat;
      except
         FSALDO := 0;
      end;

      if not dmcad.qryEstoque.Active = true then
         dmcad.qryEstoque.Open;

   ///// Inicia Inserção
      dmcad.qryEstoque.Insert;
      dmcad.qryEstoque.Fieldbyname('IDPROD').AsINteger      := IDPROD;
      dmcad.qryEstoque.Fieldbyname('ESTOQUETOTAL').asFloat  := FESTOQUETOTAL;
      dmcad.qryEstoque.Fieldbyname('DOCUMENTO').AsString    := DOCUMENTO;
      dmcad.qryEstoque.Fieldbyname('CUSTO').asFLoat         := CUSTO;
      dmcad.qryEstoque.Fieldbyname('IDCLIE').asInteger      := IDCLIE;
      case ORIGEM of
         PEDIDO      : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'PEDIDO';
         ORCAMENTO   : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'ORÇAMENTO';
         COMPRA      : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'COMPRA';
         VENDA       : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'VENDA';
         BALANCO     : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'BALANÇO';
      end;
      dmcad.qryEstoque.Fieldbyname('DATA').AsDateTime       := Date + Time;
      dmcad.qryEstoque.Fieldbyname('DESCRICAO').asString    := DESCRICAO;
      dmcad.qryEstoque.Fieldbyname('USUARIO').AsString      := FPrinc.UserControl1.CurrentUser.UserName;

      if TIPOMOV=ENTRADA then // Entrada
      begin
         dmcad.qryEstoque.Fieldbyname('ENTRADA').AsFloat := QTDE;
         dmcad.qryEstoque.Fieldbyname('SAIDA').AsFloat   := 0;
      end else
      if TIPOMOV=SAIDA then // SAIDA
      begin
         dmcad.qryEstoque.Fieldbyname('ENTRADA').AsFloat := 0;
         dmcad.qryEstoque.Fieldbyname('SAIDA').AsFloat   := QTDE;
      end;
      dmcad.qryEstoque.Fieldbyname('SALDO').asFloat := FSaldo + (dmcad.qryEstoque.Fieldbyname('ENTRADA').AsFloat- dmcad.qryEstoque.Fieldbyname('SAIDA').AsFloat);

   ///// TENTA GRAVAR OS DADOS
      try
         dmcad.qryEstoque.Post;
         dmcad.qryEstoque.ApplyUpdates(0);
         Estoque := true;
      except
         dmcad.qryEstoque.CancelUpdates;
         Msg('Oi, Verificamos que não foi possível inserir o estoque, tente novamente!','I',':(');
         Estoque := false;
      end;
   end;
end;

end.


