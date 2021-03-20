unit pcmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFpcmenu = class(TForm)
    Panel1: TPanel;
    Lclose: TLabel;
    Lopen: TLabel;
    Label1: TLabel;
    procedure LcloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpcmenu: TFpcmenu;

implementation

{$R *.dfm}

uses geofpro;

procedure TFpcmenu.LcloseClick(Sender: TObject);
begin
  Geofpro3i.Close;
end;

end.
