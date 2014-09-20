unit uDmCad;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmCad = class(TDataModule)
    cdsConf: TFDQuery;
    updateConf: TFDUpdateSQL;
    dsConf: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCad: TdmCad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon;

{$R *.dfm}

end.
