unit udmMov;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

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
    procedure qryPedidoAfterInsert(DataSet: TDataSet);
    procedure qryItemPedAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMov: TdmMov;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon, uRotinas;

{$R *.dfm}

procedure TdmMov.qryItemPedAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryItemPed.FieldByName('IDPEDIDOITEM').AsInteger      := ExecutaGen('PEDIDOITEM');
end;

procedure TdmMov.qryPedidoAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryPedido.FieldByName('IDPEDIDO').AsInteger      := ExecutaGen('PEDIDO');
end;

end.
