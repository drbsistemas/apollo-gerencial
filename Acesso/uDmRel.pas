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
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppShape2: TppShape;
    ppLabel7: TppLabel;
    ppMemo1: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppDBText18: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppLabel22: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppDBImage2: TppDBImage;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppDBText22: TppDBText;
    ppLabel26: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel29: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
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
