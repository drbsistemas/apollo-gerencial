unit uRotinas;

interface

uses
  MMSystem, Graphics, System.SysUtils, Forms;

  Function Msg(Mensagem, TipoMsg, Rosto: String): Boolean;

var
   FCorSelec, FCorLista : TColor;
   CaminhoExe,
   CaminhoIni,
   NomeEmpresa,
   EnderecoBanco  : String;

implementation

uses uMsg;


Function Msg(Mensagem, TipoMsg, Rosto: String): Boolean;
begin
   // TipoMSg = 'I'nfo / 'P'ergunta
   FMsg             := TFMsg.Create(FMSg);
   FMsg.cxMsg.TExt  := Mensagem;
   FMsg.cxRosto.Caption := Rosto;
   FMsg.cxSim.Visible    := false;
   FMsg.cxNao.Visible    := false;
   FMsg.cxOk.Visible     := false;
   ///// Lista de Sons no final da pagina.
   if TipoMsg = 'I' then
   begin
      FMsg.cxOK.Visible := true;
      PlaySound(PChar('SystemAsterisk'), 0, SND_ASYNC);
   end else
   begin
      FMsg.cxSim.Visible := true;
      FMsg.cxNao.Visible := true;
      PlaySound(PChar('SystemExclamation'), 0, SND_ASYNC);
   end;
   FMsg.ShowModal;
   if FmSg.cxSim.tag=1 then
      Result             := True else
      Result             := False;
   FMsg.Free;
   FMsg := nil;
end;

end.
