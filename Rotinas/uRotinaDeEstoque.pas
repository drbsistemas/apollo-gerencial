{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uRotinaDeEstoque;

interface

Uses
   System.SysUtils, urotinas;

Type

   TORIGEM  = (PEDIDOCPR, PEDIDOVDA, VENDA, COMPRA, BALANCO);

   FUNCTION Estoque(IDPROD, IDCLIE: Integer; ORIGEM: TORIGEM; TIPOMOV: TTipoMov;
   DOCUMENTO, DESCRICAO: String; CUSTO, QTDE: Double): Boolean;

implementation

uses uDmCad, uPrinc;



function Estoque(IDPROD, IDCLIE: Integer; ORIGEM: TORIGEM; TIPOMOV: TTipoMov;
   DOCUMENTO, DESCRICAO: String; CUSTO, QTDE: Double): Boolean;
var
   FESTOQUEDISP, FESTOQUETOTAL, FSALDO: Double;
begin
///// PEGA SALDO DO PRODUTO
   ConsultaSql('select ESTOQUETOTAL, ESTOQUEDISP from PRODUTO where IDPROD='+IntToStr(IDPROD),dmcad.qryAux);
   FESTOQUETOTAL:= dmcad.qryAux.FIeldbyname('ESTOQUETOTAL').asFloat;
   FESTOQUEDISP := dmcad.qryAux.FIeldbyname('ESTOQUEDISP').asFloat;
   dmcad.qryAux.Close;

///// VERIFICA ESTOQUE NEGATIVO EM ORÇAMENTO
//   if (ORIGEM=ORCAMENTO) and (BUSCACONF('ESTOQUEORC') = 'NÃO') and (FESTOQUEDISP < QTDE) then
//   begin
//      ESTOQUE := False;
//      exit;
//   end;
///// VERIFICA ESTOQUE NEGATIVO NA VENDA
//   if (ORIGEM=VENDA) and (BUSCACONF('ESTOQUEVENDA') = 'NÃO') and (FESTOQUETOTAL < QTDE) then
//   begin
//      ESTOQUE := False;
//      exit;
//   end;

///// INSERE ESTOQUE PEDIDO
   if (ORIGEM=PEDIDOCPR) or (ORIGEM=PEDIDOVDA) then
   begin
      ConsultaSql('select * from produto where IDPROD='+IntTOstr(IDPROD), dmCad.qryProd);
      dmcAd.qryProd.Edit;

      if ORIGEM = PEDIDOCPR then
      begin
         if (TIPOMOV = ENTRADA) then
            dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat := (dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat + QTDE) else
            dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat := (dmcad.qryProd.FieldByName('ESTOQUEPEDIDO').AsFloat - QTDE);
      end;
      if ORIGEM = PEDIDOVDA then
      begin
         if (TIPOMOV = ENTRADA) then
            dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat := (dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat + QTDE) else
            dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat := (dmcad.qryProd.FieldByName('ESTOQUEORCAMENTO').AsFloat - QTDE);
      end;
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
      ConsultaSql('select SALDO from ESTOQUE where IDPROD='+IntToStr(IDPROD)+' and IDESTOQUE = (select max(idestoque) from estoque where IDPROD='+IntToStr(IDPROD)+')',dmCad.qryAux);
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
      dmcad.qryEstoque.Fieldbyname('ESTOQUEANTES').asFloat  := FESTOQUETOTAL;
      dmcad.qryEstoque.Fieldbyname('DOCUMENTO').AsString    := DOCUMENTO;
      dmcad.qryEstoque.Fieldbyname('CUSTO').asFLoat         := CUSTO;
      dmcad.qryEstoque.Fieldbyname('IDCLIE').asInteger      := IDCLIE;
      case ORIGEM of
         PEDIDOCPR   : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'PEDIDO COMPRA';
         PEDIDOVDA   : dmcad.qryEstoque.Fieldbyname('ORIGEM').asString       := 'PEDIDO VENDA';
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


