unit udmMov;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, UCHistDataset;

type
  TdmMov = class(TDataModule)
    UpdtItemPed: TFDUpdateSQL;
    dsItemPed: TDataSource;
    qryPedido: TFDQuery;
    UpdtPedido: TFDUpdateSQL;
    dsPedido: TDataSource;
    qryItemPed: TFDQuery;
    qryItemPedIDPEDIDOITEM: TIntegerField;
    qryItemPedIDPEDIDO: TIntegerField;
    qryItemPedIDPROD: TIntegerField;
    qryItemPedQTDE: TFloatField;
    qryItemPedVLRUNITARIO: TFloatField;
    qryItemPedVLRDESCONTO: TFloatField;
    qryItemPedVLRTOTALITEM: TFloatField;
    qryItemPedOBSITEM: TStringField;
    qryItemPedDATAVALIDADE: TSQLTimeStampField;
    qryItemPedSALDOQTDE: TFloatField;
    qryItemPedSTATUSITEM: TStringField;
    qryItemPedNOMEPROD: TStringField;
    qryItemPedUNPROD: TStringField;
    qryItemPedREFPROD: TStringField;
    qryPedidoIDPEDIDO: TIntegerField;
    qryPedidoTIPOMOV: TStringField;
    qryPedidoIDCLIE: TIntegerField;
    qryPedidoIDVENDEDOR: TIntegerField;
    qryPedidoIDTRANSP: TIntegerField;
    qryPedidoIDCPAGTO: TIntegerField;
    qryPedidoDATAPEDIDO: TSQLTimeStampField;
    qryPedidoDATAVALIDADE: TSQLTimeStampField;
    qryPedidoDATAENTREGA: TSQLTimeStampField;
    qryPedidoTIPOPEDIDO: TStringField;
    qryPedidoSTATUS: TStringField;
    qryPedidoMOTIVOCAN: TStringField;
    qryPedidoOBS: TStringField;
    qryPedidoQTDEITENS: TFloatField;
    qryPedidoTOTALITENS: TFloatField;
    qryPedidoTOTALDESC: TFloatField;
    qryPedidoTOTALFRETE: TFloatField;
    qryPedidoTOTALPEDIDO: TFloatField;
    qryPedidoNOMECLIE: TStringField;
    qryPedidoENDERECO: TStringField;
    qryPedidoNUMERO: TStringField;
    qryPedidoBAIRRO: TStringField;
    qryPedidoCEP: TStringField;
    qryPedidoNOMEVEND: TStringField;
    qryPedidoNOMETRANS: TStringField;
    qryPedidoDESCRICAO: TStringField;
    uHis_Pedido: TUCHist_DataSet;
    uHis_ItemPed: TUCHist_DataSet;
    qryAux: TFDQuery;
    dsAux: TDataSource;
    qryAux2: TFDQuery;
    dsAux2: TDataSource;
    UpdtPedidoFin: TFDUpdateSQL;
    dsPedidoFin: TDataSource;
    qryPedidoFin: TFDQuery;
    uHis_PedidoFin: TUCHist_DataSet;
    qryPedidoCNPJ: TStringField;
    qryPedidoIE: TStringField;
    qryPedidoCIDADE: TStringField;
    qryItemPedMARCAPROD: TStringField;
    procedure qryPedidoAfterInsert(DataSet: TDataSet);
    procedure qryItemPedAfterInsert(DataSet: TDataSet);
    procedure qryPedidoFinAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMov: TdmMov;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon, uRotinas, uPrinc;

{$R *.dfm}

procedure TdmMov.qryItemPedAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryItemPed.FieldByName('IDPEDIDOITEM').AsInteger         := ExecutaGen('PEDIDOITEM');
end;

procedure TdmMov.qryPedidoAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryPedido.FieldByName('IDPEDIDO').AsInteger              := ExecutaGen('PEDIDO');
end;

procedure TdmMov.qryPedidoFinAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryPedidoFin.FieldByName('IDPEDIDOFINANCEIRO').AsInteger := ExecutaGen('PEDIDOFINANCEIRO');
end;

end.
