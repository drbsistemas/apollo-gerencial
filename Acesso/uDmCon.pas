unit uDmCon;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.DatS,
  FireDAC.DApt, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TdmCon = class(TDataModule)
    FdConAcesso: TFDConnection;
    FdSalvaAcesso: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTableAdapter1: TFDTableAdapter;
    FdCon: TFDConnection;
    FdSalva: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCon: TdmCon;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
