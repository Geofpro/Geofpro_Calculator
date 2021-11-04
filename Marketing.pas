unit Marketing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MarketingList, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrMarketing = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMarketing: TFrMarketing;
  MarketingList2: TFrMarketingList;

implementation

{$R *.dfm}

procedure TFrMarketing.FormCreate(Sender: TObject);
begin
  MarketingList2:=TFrMarketingList.Create(self);
  MarketingList2.parent := ScrollBox1;
end;

procedure TFrMarketing.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   Scrollbox1.VertScrollBar.Position := Scrollbox1.VertScrollBar.Position + 15;
end;

procedure TFrMarketing.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 Scrollbox1.VertScrollBar.Position:= Scrollbox1.VertScrollBar.Position-15;
end;

end.