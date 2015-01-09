unit uDmRel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ppEndUsr, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppProd, ppClass, ppReport, ppDesignLayer, ppParameter,
  ppBands, ppMemo, ppStrtch, ppCtrls, ppVar, ppPrnabl, ppCache;

type
  TdmRel = class(TDataModule)
    dbEmpresa: TppDBPipeline;
    dbPipeAux: TppDBPipeline;
    dbPipeAux2: TppDBPipeline;
    ppDesigner: TppDesigner;
    dsCabec: TDataSource;
    ppCabec: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBImage1: TppDBImage;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppShape2: TppShape;
    ppLabel7: TppLabel;
    ppMemo1: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLabel18: TppLabel;
    ppDBText20: TppDBText;
    ppLabel19: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText23: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppLabel22: TppLabel;
    ppDBText24: TppDBText;
    ppLabel23: TppLabel;
    ppDBText25: TppDBText;
    ppLabel24: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRel: TdmRel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmCad;

{$R *.dfm}

end.
