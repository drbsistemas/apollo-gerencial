unit uRelatorios;

interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IniFiles, WinProcs, Menus,
   Data.DB;

   procedure CriaDmRel;
   procedure Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);


implementation

uses uDmRel, uRotinas, uDmCad, SqlExpr;

procedure Imprime(dsNome, dsNome2: TDataSource; Preview, Caption, LocalArquivo, TrocaImp, EnviaEmail: String; Copias: Integer);
var
   FileName: String;
begin
   CriaDmRel;

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

   dmRel.ppReport.PrintReport;

   /////
{   if Length(EnviaEmail) > 0 then
   begin
      FileName := dmCad.qryConf.FieldByName('PASTASERVIDOR').ASString + '\Relatorios\Temp\'+Caption+'.PDF';
      dmRel.ppReport.AllowPrintToFile := True;
      dmRel.ppReport.DeviceType := 'PDF';
      dmRel.ppReport.TextFileName := FileName;
      dmRel.ppReport.ShowPrintDialog :=False;
      dmRel.ppReport.PrintReport;
      //EnviaEmailDll(Caption, EnviaEmail, dmRel.ppReport.TextFileName);
   end; }
   /////
end;

procedure CriaDmRel;
begin
   if dmRel = nil then
      Application.CreateForm(TdmRel, dmRel);
end;


end.
