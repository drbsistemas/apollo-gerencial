unit uCad_Ini;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxLabel, Vcl.Mask, RxToolEdit, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon,
  Vcl.Menus, cxButtons, cxMaskEdit, cxDropDownEdit, cxShellComboBox,
  dxGDIPlusClasses, cxImage;

type
  TFCad_Ini = class(TForm)
    pnMain: TPanel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxBanco: TcxShellComboBox;
    cxCancela: TcxButton;
    cxOk: TcxButton;
    cxRosto: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad_Ini: TFCad_Ini;

implementation

{$R *.dfm}

procedure TFCad_Ini.FormShow(Sender: TObject);
begin
   cxOk.SetFocus;
   pnMain.Left := (self.Width - pnmain.Width) div 2;
   pnmain.Top  := (self.Height - pnmain.Height) div 2;
end;

end.
