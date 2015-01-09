unit uCad_Captcha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxMemo, cxLabel, cxGroupBox, ExtCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFcon_Captcha = class(TForm)
    cxPanel: TcxGroupBox;
    cxRosto: TcxLabel;
    cxMSg: TcxMemo;
    cxSim: TcxButton;
    eCaptcha: TcxTextEdit;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure cxSimClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    function GeraImagem(Img: TImage): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcon_Captcha: TFcon_Captcha;
  Validapost: string;

implementation

{$R *.dfm}

uses uRotinas;

procedure TFcon_Captcha.cxSimClick(Sender: TObject);
begin
  if (eCaptcha.Text = validapost) then
     cxSim.Tag := 1 else
  begin
     cxSim.Tag := 0;
     Msg('Opa! Parece que código da imagem não confere, tente novamente!', 'I', '=(');
  end;
  close;
end;

procedure TFcon_Captcha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    End;
end;

procedure TFcon_Captcha.FormShow(Sender: TObject);
begin
   eCaptcha.Clear;
   eCaptcha.SetFocus;
   validapost := GeraImagem(Image1);
end;

Function TFcon_Captcha.GeraImagem(Img: TImage): string;
const
  f: array [0..4] of string = ('Courier New', 'Impact', 'Times New Roman',
                               'Verdana', 'Arial');
  s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  C: ARRAY [0..14] OF tcOLOR = (clAqua, clBlack, clBlue, clFuchsia, clGray,
                                clGreen, clLime, clMaroon, clNavy, clOlive,
                                clPurple, clRed, clSilver, clTeal, clYellow);
var
  i, x, y : integer;
  r : string;

begin
  randomize;
  Img.Width := 160;
  Img.Height := 60;
  for i := 0 to 3 do
    r := r + s[Random(length(s)-1)+1];

  with Img.Picture.Bitmap do
  begin
    width := Img.Width;
    Height := Img.Height;
    Canvas.Brush.Color := $00EFEFEF;
    Canvas.FillRect(Img.ClientRect);

    for i := 0 to 3 do
    begin
      Canvas.Font.Size := random(20) + 20;
      Canvas.Font.Name := f[High(f)];
      Canvas.Font.Color := c[random(High(c))];
      Canvas.TextOut(i*40,0,r[i+1]);
    end;

    for i := 0 to 2 do
    begin
      Canvas.Pen.Color := c[random(High(c))];
      Canvas.Pen.Width := 2;
      canvas.MoveTo(random(Width),0);
      Canvas.LineTo(random(Width),Height);
      Canvas.Pen.Width := 1;
      x := random(Width-10);
      y := random(Height-10);
      Canvas.Rectangle(x,y,x+10,y+10);
    end;
  end;

  Result := r;
end;

end.
