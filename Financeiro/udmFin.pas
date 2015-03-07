unit udmFin;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UCHistDataset, Datasnap.DBClient;

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
    UpdtConta: TFDUpdateSQL;
    dsConta: TDataSource;
    qryConta: TFDQuery;
    uHis_Conta: TUCHist_DataSet;
    qryContaIDCONTA: TIntegerField;
    qryContaIDCLIE: TIntegerField;
    qryContaIDLOTE: TIntegerField;
    qryContaIDPAI: TIntegerField;
    qryContaIDORIGEM: TIntegerField;
    qryContaIDPLANOCTA: TIntegerField;
    qryContaDIASATRASO: TIntegerField;
    qryContaDTEMISSAO: TSQLTimeStampField;
    qryContaDTLANCTO: TSQLTimeStampField;
    qryContaDTVENCTO: TSQLTimeStampField;
    qryContaDTBAIXA: TSQLTimeStampField;
    qryContaVLRINI: TFloatField;
    qryContaVLRJUROS: TFloatField;
    qryContaVLRMULTA: TFloatField;
    qryContaVLRDESC: TFloatField;
    qryContaVLRBRUTO: TFloatField;
    qryContaVLRPAGO: TFloatField;
    qryContaDOCUMENTO: TStringField;
    qryContaHISTORICO: TStringField;
    qryContaTIPOCONTA: TStringField;
    qryContaSTATUSCONTA: TStringField;
    qryContaORIGEM: TStringField;
    qryContaOBS: TStringField;
    qryContaRAZAO: TStringField;
    qryContaCNPJ: TStringField;
    qryContaCPF: TStringField;
    cdsSelec: TClientDataSet;
    dsSelec: TDataSource;
    cdsSelecIDCONTA: TIntegerField;
    cdsSelecIDCLIE: TIntegerField;
    cdsSelecIDPLANO: TIntegerField;
    cdsSelecDOCUMENTO: TStringField;
    cdsSelecDTVENCTO: TDateTimeField;
    cdsSelecDTEMISSAO: TDateTimeField;
    cdsSelecVLRINI: TFloatField;
    cdsSelecVLRJUROS: TFloatField;
    cdsSelecVLRMULTA: TFloatField;
    cdsSelecVLRDESC: TFloatField;
    cdsSelecVLRBRUTO: TFloatField;
    cdsSelecDIASATRASO: TIntegerField;
    cdsSelecHISTORICO: TStringField;
    cdsSelecSTATUS: TStringField;
    cdsSelecVLRPAGO: TFloatField;
    UpdtContaRateio: TFDUpdateSQL;
    dsContaRateio: TDataSource;
    qryContaRateio: TFDQuery;
    uHis_ContaRateio: TUCHist_DataSet;
    qryContaRateioIDCONTARATEIO: TIntegerField;
    qryContaRateioIDCONTA: TIntegerField;
    qryContaRateioIDPLANO: TIntegerField;
    qryContaRateioVLRPERC: TIntegerField;
    qryContaRateioVLRRATEIO: TIntegerField;
    qryContaRateioIDCCUSTO: TIntegerField;
    qryContaRateioDESCRICAO: TStringField;
    qryContaRateioNOMEPLANO: TStringField;
    UpdtCaixa: TFDUpdateSQL;
    dsCaixa: TDataSource;
    qryCaixa: TFDQuery;
    uHist_Caixa: TUCHist_DataSet;
    UpdtCaixaItem: TFDUpdateSQL;
    dsCaixaItem: TDataSource;
    qryCaixaItem: TFDQuery;
    uHis_CaixaItem: TUCHist_DataSet;
    UpdtCaixaFechamento: TFDUpdateSQL;
    dsCaixaFechamento: TDataSource;
    qryCaixaFechamento: TFDQuery;
    uHis_CaixaFechamento: TUCHist_DataSet;
    cdsSelecNOMECLIE: TStringField;
    cdsSelecVLRJUROSINI: TFloatField;
    cdsSelecVLRMULTAINI: TFloatField;
    cdsSelecVLRDESCINI: TFloatField;
    UpdtCheque: TFDUpdateSQL;
    dsCheque: TDataSource;
    qryCheque: TFDQuery;
    uHis_Cheque: TUCHist_DataSet;
    cdsChequeSelec: TClientDataSet;
    dsChequeSelec: TDataSource;
    cdsChequeSelecIDCHEQUE: TIntegerField;
    cdsChequeSelecIDCAIXA: TIntegerField;
    cdsChequeSelecIDCLIE: TIntegerField;
    cdsChequeSelecCLIENTE: TStringField;
    cdsChequeSelecNCHEQUE: TStringField;
    cdsChequeSelecDTEMISSAO: TDateTimeField;
    cdsChequeSelecTIPOCHEQUE: TStringField;
    cdsChequeSelecVLRTOTAL: TFloatField;
    cdsChequeSelecSTATUS: TStringField;
    UpdtChequeHis: TFDUpdateSQL;
    dsChequeHis: TDataSource;
    qryChequeHis: TFDQuery;
    ucHis_ChequeHis: TUCHist_DataSet;
    qryChequeBANCO: TStringField;
    qryChequeIDCHEQUE: TIntegerField;
    qryChequeIDCAIXA: TIntegerField;
    qryChequeIDPLANO: TIntegerField;
    qryChequeDTEMISSAO: TSQLTimeStampField;
    qryChequeDTVENCIMENTO: TSQLTimeStampField;
    qryChequeDTDEPOSITO: TSQLTimeStampField;
    qryChequeNBANCO: TStringField;
    qryChequeNAGENCIA: TStringField;
    qryChequeNCONTA: TStringField;
    qryChequeNCHEQUE: TStringField;
    qryChequeTIPOCHEQUE: TStringField;
    qryChequeSTATUS: TStringField;
    qryChequeNOMEPORTADOR: TStringField;
    qryChequeIDCLIE: TIntegerField;
    qryChequeOBSERVACAO: TStringField;
    qryChequeVLRTOTAL: TIntegerField;
    qryChequeNOMEPLANO: TStringField;
    qryChequeRAZAO: TStringField;
    cdsChequeSelecBANCO: TStringField;
    cdsChequeSelecIDFPAGTO: TIntegerField;
    cdsChequeSelecIDLOTE: TIntegerField;
    cdsChequeSelecIDPLANO: TIntegerField;
    procedure qryCreditoAfterInsert(DataSet: TDataSet);
    procedure qryContaAfterInsert(DataSet: TDataSet);
    procedure qryContaRateioAfterInsert(DataSet: TDataSet);
    procedure qryCaixaAfterInsert(DataSet: TDataSet);
    procedure qryCaixaItemAfterInsert(DataSet: TDataSet);
    procedure qryCaixaFechamentoAfterInsert(DataSet: TDataSet);
    procedure qryChequeAfterInsert(DataSet: TDataSet);
    procedure qryChequeHisAfterInsert(DataSet: TDataSet);
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

procedure TdmFin.qryCaixaAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCaixa.FieldByName('IDCAIXA').AsInteger                      := ExecutaGen('CAIXA');
end;

procedure TdmFin.qryCaixaFechamentoAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCaixaFechamento.FieldByName('IDFECHAMENTO').AsInteger       := ExecutaGen('CAIXAFECHAMENTO');
end;

procedure TdmFin.qryCaixaItemAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCaixaItem.FieldByName('IDCAIXAITEM').AsInteger              := ExecutaGen('CAIXAITEM');
end;

procedure TdmFin.qryChequeAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCheque.FieldByName('IDCHEQUE').AsInteger                    := ExecutaGen('CHEQUE');
end;

procedure TdmFin.qryChequeHisAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryChequeHis.FieldByName('IDHISTORICO').AsInteger              := ExecutaGen('CHEQUEHISTORICO');
end;

procedure TdmFin.qryContaAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryConta.FieldByName('IDCONTA').AsInteger                      := ExecutaGen('CONTA');
end;

procedure TdmFin.qryContaRateioAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryContaRateio.FieldByName('IDCONTARATEIO').AsInteger          := ExecutaGen('CONTARATEIO');
end;

procedure TdmFin.qryCreditoAfterInsert(DataSet: TDataSet);
begin
   dmFin.qryCredito.FieldByName('IDCREDITO').AsInteger                  := ExecutaGen('CLIENTECREDITO');
end;

end.
