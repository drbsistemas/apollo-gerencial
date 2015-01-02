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
    qryCidade: TFDQuery;
    UpdtCidade: TFDUpdateSQL;
    dsCidade: TDataSource;
    qryGenerico: TFDQuery;
    UpdtGenerico: TFDUpdateSQL;
    dsGenerico: TDataSource;
    qryProd: TFDQuery;
    UpdtProd: TFDUpdateSQL;
    dsProd: TDataSource;
    procedure qryClieAfterInsert(DataSet: TDataSet);
    procedure qryCidadeAfterInsert(DataSet: TDataSet);
    procedure qryGenericoAfterInsert(DataSet: TDataSet);
    procedure qryProdAfterInsert(DataSet: TDataSet);
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

procedure TdmCad.qryCidadeAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryClie.FieldByName('CODMUN').AsInteger := ExecutaGen('CODIBGE');
end;

procedure TdmCad.qryClieAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryClie.FieldByName('IDCLIE').AsInteger := ExecutaGen('CLIENTE');
end;

procedure TdmCad.qryGenericoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryGenerico.FieldByName('IDGENERICA').AsInteger := ExecutaGen('GENERICA');
end;

procedure TdmCad.qryProdAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryProd.FieldByName('IDPROD').AsInteger := ExecutaGen('PRODUTO');
end;

end.
