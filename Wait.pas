unit Wait;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmWait = class(TForm)
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWait: TFrmWait;

implementation

{$R *.dfm}

procedure TFrmWait.FormActivate(Sender: TObject);
begin
  ProgressBar1.Position:=0;
end;

end.
