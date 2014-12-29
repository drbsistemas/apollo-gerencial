unit uRelatorios;

interface

   PROCEDURE Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);

implementation

procedure Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);
var
   FileName: String;
begin
   dmRel.dbPipeAux.DataSource                  := dsNome;
   dmRel.dbPipeAux.Active;
   if dsNome2 <> nIl then
   begin
      dmrel.dbPipeAux2.DataSOurce              := dsNome2;
      dmRel.dbPipeAux2.Active;
   end;
   dmRel.ppReport.Template.FileName            := LocalArquivo;
   dmRel.ppReport.Template.LoadFromFile;
   dmRel.ppReport.PrinterSetup.Copies          := Copias;
   dmRel.ppReport.PrinterSetup.DocumentName    := Caption;
   if TrocaImp = 'SIM' then
      dmRel.ppReport.ShowPrintDialog           := True else
      dmRel.ppReport.ShowPrintDialog           := False;
   if Preview = 'SIM' then
      dmRel.ppReport.DeviceType                := 'Screen' else
      dmRel.ppReport.DeviceType                := 'Printer';

   dmRel.ppReport.Print;

   /////
   if Length(EnviaEmail) > 0 then
   begin
      FileName := dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Temp\'+Caption+'.PDF';
      dmRel.ppReport.AllowPrintToFile := True;
      dmRel.ppReport.DeviceType := 'PDF';
      dmRel.ppReport.TextFileName := FileName;
      dmRel.ppReport.ShowPrintDialog :=False;
      dmRel.ppReport.PrintReport;
      EnviaEmailDll(Caption, EnviaEmail, dmRel.ppReport.TextFileName);
   end;
   /////
end;

end.
