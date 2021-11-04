unit Manual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, ShellAPI;

type
  TFrManual = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrManual: TFrManual;

implementation

{$R *.dfm}

procedure TFrManual.Button1Click(Sender: TObject);
begin
  ShellExecute(handle,'open',PChar('http://geofpro.com/geofprocalculator3i.html'),nil,nil,SW_SHOW);
end;

end.