unit user_person;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFUser_person = class(TForm)
    Bapply: TButton;
    Image1: TImage;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure BapplyClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUser_person: TFUser_person;

implementation

{$R *.dfm}

uses geofpro, formdate;

procedure TFUser_person.BapplyClick(Sender: TObject);
begin
  FUser_person.Close;
end;

procedure TFUser_person.FormActivate(Sender: TObject);
begin
 StringGrid1.Cells[1,1]:=Geofpro3i.Euserlog.Text;
end;

procedure TFUser_person.FormCreate(Sender: TObject);
  // сохраняем данные в ini файле для формирования отчётов
begin
  StringGrid1.ColWidths[0] := 200;
  StringGrid1.ColWidths[1] := 400;

  StringGrid1.Cells[0,0]:='Параметры';
  StringGrid1.Cells[1,0]:='Значение';

  StringGrid1.Cells[0,1]:='ФИО';
  StringGrid1.Cells[0,2]:='Должность';
  StringGrid1.Cells[0,3]:='Организация';
  StringGrid1.Cells[0,4]:='Заказчик';
  StringGrid1.Cells[0,5]:='Месторождение';
  StringGrid1.Cells[0,6]:='Скважина';
  StringGrid1.Cells[0,7]:='Дата';
end;

procedure TFUser_person.StringGrid1DblClick(Sender: TObject);
begin
  if StringGrid1.Row=7 then Fformdate.ShowModal;
end;

end.
