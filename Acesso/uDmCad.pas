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
    procedure qryClieAfterInsert(DataSet: TDataSet);
    procedure qryCidadeAfterInsert(DataSet: TDataSet);
    procedure qryGenericoAfterInsert(DataSet: TDataSet);
    procedure qryProdAfterInsert(DataSet: TDataSet);
    procedure qryEstoqueAfterInsert(DataSet: TDataSet);
    procedure qryAnimaisAfterInsert(DataSet: TDataSet);
    procedure qryBalancoAfterInsert(DataSet: TDataSet);
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

procedure TdmCad.qryAnimaisAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryAnimais.FieldByName('IDANIMAL').AsInteger       := ExecutaGen('ANIMAIS');
end;

procedure TdmCad.qryBalancoAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryBalanco.FieldByName('IDBALANCO').AsInteger       := ExecutaGen('BALANCO');
end;

procedure TdmCad.qryCidadeAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryClie.FieldByName('CODMUN').AsInteger         := ExecutaGen('CODIBGE');
end;

procedure TdmCad.qryClieAfterInsert(DataSet: TDataSet);
begin
   dmCad.qryClie.FieldByName('IDCLIE').AsInteger         := ExecutaGen('CLIENTE');
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
