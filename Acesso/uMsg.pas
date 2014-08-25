unit uMsg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMemo, cxLabel, cxGroupBox;

type
  TFmsg = class(TForm)
    cxPanel: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxMSg: TcxMemo;
    cxSim: TcxButton;
    cxNao: TcxButton;
    cxOk: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxNaoClick(Sender: TObject);
    procedure cxSimClick(Sender: TObject);
    procedure cxOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmsg: TFmsg;

implementation

{$R *.dfm}

procedure TFmsg.cxNaoClick(Sender: TObject);
begin
   cxSim.Tag := 0;
   Close;
end;

procedure TFmsg.cxOkClick(Sender: TObject);
begin
   cxSim.Tag := 0;
   Close;
end;

procedure TFmsg.cxSimClick(Sender: TObject);
begin
   cxSim.tag := 1;
   Close;
end;

procedure TFmsg.FormShow(Sender: TObject);
begin
   cxPanel.Left := (self.Width - cxPanel.Width) div 2;
   cxPanel.Top  := (self.Height - cxPanel.Height) div 2;
   if cxNao.Visible = true then
      cxNao.SetFOcus else
      cxOk.SetFocus;
end;

end.
