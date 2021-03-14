unit pipe_calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Grids;

type
  TFcalculator3i = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Excel1: TMenuItem;
    PDF1: TMenuItem;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcalculator3i: TFcalculator3i;

implementation

{$R *.dfm}

procedure TFcalculator3i.FormCreate(Sender: TObject);
begin
   StringGrid1.ColWidths[0] := 80;
  StringGrid1.ColWidths[1] := 250;
  StringGrid1.ColWidths[2] := 80;
  StringGrid1.ColWidths[3] := 80;
  StringGrid1.ColWidths[4] := 80;
  StringGrid1.ColWidths[5] := 80;
  StringGrid1.ColWidths[6] := 80;
  StringGrid1.ColWidths[7] := 80;
  StringGrid1.ColWidths[8] := 80;
  StringGrid1.ColWidths[9] := 80;
  StringGrid1.ColWidths[10] := 80;
  StringGrid1.ColWidths[11] := 80;
  StringGrid1.ColWidths[12] := 80;
  StringGrid1.ColWidths[13] := 80;

  StringGrid1.Cells[0,0]:='№';
  StringGrid1.Cells[1,0]:='Наименование';
  StringGrid1.Cells[2,0]:='D н';
  StringGrid1.Cells[3,0]:='D вн';
  StringGrid1.Cells[4,0]:='D max';
  StringGrid1.Cells[5,0]:='D мн';
  StringGrid1.Cells[6,0]:='D мв';
  StringGrid1.Cells[7,0]:='Резьба';
  StringGrid1.Cells[8,0]:='Масса i,кг';
  StringGrid1.Cells[9,0]:='Масса м,кг';
  StringGrid1.Cells[10,0]:='Длина, м';
  StringGrid1.Cells[11,0]:='Масса, кг';
  StringGrid1.Cells[12,0]:='Масса, т';
  StringGrid1.Cells[13,0]:='Вес, кН';
end;

end.
