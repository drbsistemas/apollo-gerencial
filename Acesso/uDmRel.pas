unit uDmRel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ppEndUsr, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppProd, ppClass, ppReport, ppDesignLayer, ppParameter,
  ppBands, ppMemo, ppStrtch, ppCtrls, ppVar, ppPrnabl, ppCache, ppSubRpt,
  ppTableGrid, ppRegion;

type
  TdmRel = class(TDataModule)
    dbEmpresa: TppDBPipeline;
    dbPipeAux: TppDBPipeline;
    dbPipeAux2: TppDBPipeline;
    ppDesigner: TppDesigner;
    dsCabec: TDataSource;
    ppCabec: TppDBPipeline;
    ppReport: TppReport;
    dbPipeAux3: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
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
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppLabel18: TppLabel;
    ppDBText24: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppLabel25: TppLabel;
    ppDBText22: TppDBText;
    ppLabel28: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel29: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel10: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel13: TppLabel;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText17: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText23: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppLabel21: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
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
