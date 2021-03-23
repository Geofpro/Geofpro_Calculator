unit formdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFformdate = class(TForm)
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fformdate: TFformdate;

implementation

{$R *.dfm}

uses user_person;

procedure TFformdate.Button1Click(Sender: TObject);
begin
  FUser_person.StringGrid1.Cells[1,7]:=DateToStr(MonthCalendar1.Date);
  Fformdate.Close;
end;

procedure TFformdate.FormCreate(Sender: TObject);
begin
  Fformdate.MonthCalendar1.Date:=now;
  FUser_person.StringGrid1.Cells[1,7]:=DateToStr(Fformdate.MonthCalendar1.Date);
end;

end.
