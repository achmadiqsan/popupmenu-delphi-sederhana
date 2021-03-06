unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Objects, FMX.StdCtrls, FMX.Filter.Effects, FMX.Ani,
  FMX.Controls.Presentation;

type
  TForm7 = class(TForm)
    ToolBar1: TToolBar;
    sbDropDown: TSpeedButton;
    rcPopup: TRectangle;
    ShadowEffect1: TShadowEffect;
    lbHome: TLabel;
    imHome: TImage;
    FillRGBEffect1: TFillRGBEffect;
    imSeparator: TImage;
    Image1: TImage;
    lbOption2: TLabel;
    Image2: TImage;
    FillRGBEffect2: TFillRGBEffect;
    Image3: TImage;
    lbOption1: TLabel;
    Image4: TImage;
    FillRGBEffect3: TFillRGBEffect;
    lbOption3: TLabel;
    Image5: TImage;
    FillRGBEffect4: TFillRGBEffect;
    PopupAnimation: TFloatAnimation;
    procedure FormCreate(Sender: TObject);
    procedure sbDropDownClick(Sender: TObject);
    procedure lbHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowPopup;
    procedure HidePopup;
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

procedure TForm7.FormCreate(Sender: TObject);
begin
  rcPopup.Position.Y := - rcPopup.Height;
end;

procedure TForm7.HidePopup;
begin
  if (rcPopup.Position.Y = ToolBar1.Height) then begin
    PopupAnimation.StartValue:= ToolBar1.Height;
    PopupAnimation.StopValue:= -rcPopup.Height;
    PopupAnimation.Start;
  end;
end;

procedure TForm7.lbHomeClick(Sender: TObject);
begin
  HidePopup;
end;

procedure TForm7.sbDropDownClick(Sender: TObject);
begin
  if (rcPopup.Position.Y = -rcPopup.Height) then ShowPopup
  else HidePopup;
end;

procedure TForm7.ShowPopup;
begin
  if (rcPopup.Position.Y = -rcPopup.Height) then begin
    PopupAnimation.StartValue:= -rcPopup.Height;
    PopupAnimation.StopValue:= ToolBar1.Height;
    PopupAnimation.Start;
  end;
end;

end.
