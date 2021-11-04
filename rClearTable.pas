unit rClearTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrClearTable = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrClearTable: TFrClearTable;

implementation

{$R *.dfm}

uses pipe_calculator;

procedure TFrClearTable.Button1Click(Sender: TObject);
begin
  Fcalculator3i.ClearColor;
  Fcalculator3i.ClearTable;
  FrClearTable.Close;
end;

procedure TFrClearTable.Button2Click(Sender: TObject);
begin
 FrClearTable.Close;
end;

end.
