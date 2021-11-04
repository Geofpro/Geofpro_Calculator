unit rDeleteRecordUserRef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrDeleteRecordUserRef = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDeleteRecordUserRef: TFrDeleteRecordUserRef;

implementation

{$R *.dfm}

uses referenñe;

procedure TFrDeleteRecordUserRef.Button1Click(Sender: TObject);
begin
 Freference.DeleteUserRecord;
 FrDeleteRecordUserRef.Close;
end;

procedure TFrDeleteRecordUserRef.Button2Click(Sender: TObject);
begin
 FrDeleteRecordUserRef.Close;
end;

end.
