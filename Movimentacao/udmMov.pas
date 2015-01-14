unit udmMov;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdmMov = class(TDataModule)
    qryItemPed: TFDQuery;
    UpdtItemPed: TFDUpdateSQL;
    dsItemPed: TDataSource;
    qryPedido: TFDQuery;
    UpdtPedido: TFDUpdateSQL;
    dsPedido: TDataSource;
    procedure qryPedidoAfterInsert(DataSet: TDataSet);
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

procedure TdmMov.qryPedidoAfterInsert(DataSet: TDataSet);
begin
   dmMov.qryPedido.FieldByName('IDPEDIDO').AsInteger      := ExecutaGen('PEDIDO');
end;

end.
