unit uPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TForm2 = class(TForm)
    pnCad: TPanel;
    pnCon: TPanel;
    pnBotao: TPanel;
    pnMenu: TPanel;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaDBTableView1CELULAR: TcxGridDBColumn;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1NUM: TcxGridDBColumn;
    grConsultaDBTableView1CIDADE: TcxGridDBColumn;
    grConsultaDBTableView1UF: TcxGridDBColumn;
    grConsultaDBTableView1BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1OBS: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxNovo: TcxButton;
    cxEdita: TcxButton;
    cxVer: TcxButton;
    cxApagar: TcxButton;
    cxVoltar: TcxButton;
    cxPrint: TcxButton;
    cxGravar: TcxButton;
    cxCancela: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
