unit uDmCad;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient, MidasLib,
  UCHistDataset ;

type
  TdmCad = class(TDataModule)
    qryConf: TFDQuery;
    qryAux: TFDQuery;
    dsAux: TDataSource;
    UpdtConf: TFDUpdateSQL;
    dsConf: TDataSource;
    qryCidade: TFDQuery;
    UpdtCidade: TFDUpdateSQL;
    dsCidade: TDataSource;
    qryGenerico: TFDQuery;
    UpdtGenerico: TFDUpdateSQL;
    dsGenerico: TDataSource;
    qryProd: TFDQuery;
    UpdtProd: TFDUpdateSQL;
    dsProd: TDataSource;
    qryEstoque: TFDQuery;
    UpdtEstoque: TFDUpdateSQL;
    dsEstoque: TDataSource;
    qryAnimais: TFDQuery;
    UpdtAnimais: TFDUpdateSQL;
    dsAnimais: TDataSource;
    qryAux2: TFDQuery;
    dsAux2: TDataSource;
    qryBalanco: TFDQuery;
    UpdtBalanco: TFDUpdateSQL;
    dsBalanco: TDataSource;
    qryGen: TFDQuery;
    dsGen: TDataSource;
    qryBalancoIDBALANCO: TIntegerField;
    qryBalancoIDPROD: TIntegerField;
    qryBalancoIDSEQ: TIntegerField;
    qryBalancoDATA: TSQLTimeStampField;
    qryBalancoSTATUS: TStringField;
    qryBalancoESTOQUETOTAL: TFloatField;
    qryBalancoESTOQUECONT: TFloatField;
    qryBalancoESTOQUEDIF: TFloatField;
    qryBalancoREFPROD: TStringField;
    qryBalancoNOMEPROD: TStringField;
    qryEstoqueIDESTOQUE: TIntegerField;
    qryEstoqueIDPROD: TIntegerField;
    qryEstoqueESTOQUEANTES: TFloatField;
    qryEstoqueENTRADA: TFloatField;
    qryEstoqueSAIDA: TFloatField;
    qryEstoqueSALDO: TFloatField;
    qryEstoqueCUSTO: TFloatField;
    qryEstoqueORIGEM: TStringField;
    qryEstoqueDOCUMENTO: TIntegerField;
    qryEstoqueDATA: TSQLTimeStampField;
    qryEstoqueDESCRICAO: TStringField;
    qryEstoqueUSUARIO: TStringField;
    qryEstoqueIDCLIE: TIntegerField;
    qryEstoqueNOMEPROD: TStringField;
    qryEstoqueMARCAPROD: TStringField;
    qryEstoqueESTOQUEDISP: TFloatField;
    qryEstoqueESTOQUETOTAL: TFloatField;
    qryEstoqueUNPROD: TStringField;
    qryCPagto: TFDQuery;
    UpdtCPagto: TFDUpdateSQL;
    dsCPagto: TDataSource;
    qryCPagtoItem: TFDQuery;
    UpdtCPagtoItem: TFDUpdateSQL;
    dsCPagtoItem: TDataSource;
    qryCPagtoItemIDCPAGTOITEM: TIntegerField;
    qryCPagtoItemIDCPAGTO: TIntegerField;
    qryCPagtoItemDIAS: TIntegerField;
    qryCPagtoItemJUROS: TFloatField;
    qryCPagtoItemPERCENTUAL: TFloatField;
    qryCPagtoItemPARCELA: TIntegerField;
    qryNcm: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    UpdtNcm: TFDUpdateSQL;
    dsNcm: TDataSource;
    qryEndereco: TFDQuery;
    UpdtEndereco: TFDUpdateSQL;
    dsEndereco: TDataSource;
    uHis_Prod: TUCHist_DataSet;
    UHis_Estoque: TUCHist_DataSet;
    uHis_Generico: TUCHist_DataSet;
    uHis_Endereco: TUCHist_DataSet;
    uHis_Conf: TUCHist_DataSet;
    uHis_Animais: TUCHist_DataSet;
    uHis_Balanco: TUCHist_DataSet;
    uHis_CPagto: TUCHist_DataSet;
    qryAcesso: TFDQuery;
    dsAcesso: TDataSource;
    procedure qryGenericoAfterInsert(DataSet: TDataSet);
    procedure qryProdAfterInsert(DataSet: TDataSet);
    procedure qryEstoqueAfterInsert(DataSet: TDataSet);
    procedure qryAnimaisAfterInsert(DataSet: TDataSet);
    procedure qryBalancoAfterInsert(DataSet: TDataSet);
    procedure qryCPagtoAfterInsert(DataSet: TDataSet);
    procedure qryCPagtoItemAfterInsert(DataSet: TDataSet);
    procedure qryEnderecoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCad: TdmCad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCon, uRotinas, uPrinc;

{$R *.dfm}

procedure TdmCad.qryAnimaisAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryAnimais.FieldByName('IDANIMAL').AsInteger       := ExecutaGen('ANIMAIS');
end;

procedure TdmCad.qryBalancoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryBalanco.FieldByName('IDBALANCO').AsInteger       := ExecutaGen('BALANCO');
end;

procedure TdmCad.qryCPagtoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryCPagto.FieldByName('IDCPAGTO').AsInteger       := ExecutaGen('CPAGTO');
end;

procedure TdmCad.qryCPagtoItemAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryCPagtoItem.FieldByName('IDCPAGTOITEM').AsInteger       := ExecutaGen('CPAGTOITEM');
end;

procedure TdmCad.qryEnderecoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryEndereco.FieldByName('IDEND').AsInteger := ExecutaGen('ENDERECO');
end;

procedure TdmCad.qryEstoqueAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryEstoque.FieldByName('IDESTOQUE').AsInteger      := ExecutaGen('ESTOQUE');
end;

procedure TdmCad.qryGenericoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryGenerico.FieldByName('IDGENERICA').AsInteger := ExecutaGen('GENERICA');
end;

procedure TdmCad.qryProdAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryProd.FieldByName('IDPROD').AsInteger         := ExecutaGen('PRODUTO');
end;

end.
