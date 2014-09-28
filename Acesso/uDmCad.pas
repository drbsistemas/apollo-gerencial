unit uDmCad;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient, MidasLib ;

type
  TdmCad = class(TDataModule)
    qryConf: TFDQuery;
    qryAux: TFDQuery;
    dsAux: TDataSource;
    UpdtConf: TFDUpdateSQL;
    dsConf: TDataSource;
    qryClie: TFDQuery;
    UpdtClie: TFDUpdateSQL;
    dsClie: TDataSource;
    qryClieIDCLIE: TIntegerField;
    qryClieRAZAO: TStringField;
    qryClieFANTASIA: TStringField;
    qryClieENDERECO: TStringField;
    qryClieNUMERO: TStringField;
    qryClieCIDADE: TStringField;
    qryClieUF: TStringField;
    qryClieBAIRRO: TStringField;
    qryClieCEP: TStringField;
    qryClieCNPJ: TStringField;
    qryClieRG: TStringField;
    qryClieIE: TStringField;
    qryClieCPF: TStringField;
    qryClieFONE: TStringField;
    qryClieCELULAR: TStringField;
    qryClieEMAIL: TStringField;
    qryClieOBS: TStringField;
    qryClieCOMPLEMENTO: TStringField;
    qryClieDATACAD: TSQLTimeStampField;
    qryClieATIVO: TStringField;
    qryClieDATANASCE: TSQLTimeStampField;
    qryClieTIPOPESSOA: TStringField;
    qryClieTIPOCLIE: TStringField;
    procedure qryClieAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCad: TdmCad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon, uRotinas;

{$R *.dfm}

procedure TdmCad.qryClieAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryClie.FieldByName('IDCLIE').AsInteger := ExecutaGen('CLIENTE');
end;

end.
