unit uRotinas;

interface

uses
  MMSystem, Graphics, System.SysUtils, Forms, System.Classes;

  Function Msg(Mensagem, TipoMsg, Rosto: String): Boolean;
   Function Crypt(Action, Src: String): String;

var
   FCorSelec, FCorLista               : TColor;
   Lista                              : TStringList;
   CaminhoExe,
   CaminhoIni,
   NomeEmpresa                        : String;
   Liberacao                          : Boolean;

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

Function Crypt(Action, Src: String): String;
   Label Fim;
   var KeyLen : Integer;
   KeyPos : Integer;
   OffSet : Integer;
   Dest, Key : String;
   SrcPos : Integer;
   SrcAsc : Integer;
   TmpSrcAsc : Integer;
   Range : Integer;
begin
   if (Src = '') Then
   begin
      Result       := '';
      Goto Fim;
   end;
   //  Key         :='YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKLK3LAKDJSL9RTIKJ';
   Key             := 'DRBALBJBVLB';
   Dest            := '';
   KeyLen          := Length(Key);
   KeyPos          := 0;
   SrcPos          := 0;
   SrcAsc          := 0;
   Range           := 256;
   if (Action = UpperCase('C')) then
   begin
      Randomize;
      OffSet       := Random(Range);
      Dest         := Format('%1.2x',[OffSet]);
      for SrcPos   := 1 to Length(Src) do
      begin
         Application.ProcessMessages;
         SrcAsc    := (Ord(Src[SrcPos]) + OffSet) Mod 255;
         if KeyPos < KeyLen then
            KeyPos := KeyPos + 1 else KeyPos := 1;
         SrcAsc    := SrcAsc Xor Ord(Key[KeyPos]);
         Dest      := Dest + Format('%1.2x',[SrcAsc]);
         OffSet    := SrcAsc;
      end;
   end
   Else if (Action = UpperCase('D')) then
   begin
      OffSet       := StrToInt('$'+ copy(Src,1,2));
      SrcPos       := 3;
   repeat
      SrcAsc       := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then
         KeyPos    := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc    := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
         TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
         TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest         := Dest + Chr(TmpSrcAsc);
      OffSet       := SrcAsc;
      SrcPos       := SrcPos + 2;
      until (SrcPos >= Length(Src));
   end;
   Result          := Dest;
   Fim:
end;

end.
