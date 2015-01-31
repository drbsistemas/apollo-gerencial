unit udmFin;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UCHistDataset;

type
  TdmFin = class(TDataModule)
    UpdtCredito: TFDUpdateSQL;
    dsCredito: TDataSource;
    qryCredito: TFDQuery;
    qryCreditoIDCREDITO: TIntegerField;
    qryCreditoDATA: TDateField;
    qryCreditoDOCUMENTO: TStringField;
    qryCreditoDESCRICAO: TStringField;
    qryCreditoSALDOANTES: TFloatField;
    qryCreditoCREDITO: TFloatField;
    qryCreditoDEBITO: TFloatField;
    qryCreditoSALDO: TFloatField;
    qryCreditoIDCLIE: TIntegerField;
    qryCreditoUSUARIO: TStringField;
    qryAux: TFDQuery;
    dsAux: TDataSource;
    uHis_Credito: TUCHist_DataSet;
    procedure qryCreditoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFin: TdmFin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon, uRotinas, uPrinc;

{$R *.dfm}

procedure TdmFin.qryCreditoAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCredito.FieldByName('IDCREDITO').AsInteger      := ExecutaGen('CLIENTECREDITO');
end;

end.
