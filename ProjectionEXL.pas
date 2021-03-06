unit ProjectionEXL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, ComObj,
  Vcl.Menus, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.Imaging.pngimage;

type
  TFrmProjectionEXL = class(TForm)
    SGexcel: TStringGrid;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Excel1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    ENameFile: TEdit;
    Label1: TLabel;
    Splitter1: TSplitter;
    Chart1: TChart;
    Series1: TLineSeries;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenEXL;
    procedure ImportEXL;
    procedure WellChart;
  end;

var
  FrmProjectionEXL: TFrmProjectionEXL;

implementation

{$R *.dfm}

{ TFrmProjectionEXL }

uses Wait;

procedure TFrmProjectionEXL.Excel1Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
   begin
     ENameFile.Text:= OpenDialog1.FileName;
     FrmWait.Show;
     ImportEXL;
     WellChart;
     FrmWait.Close;
   end;
end;

procedure TFrmProjectionEXL.FormCreate(Sender: TObject);
begin
 // ????????? ??????? ???????
  SGexcel.ColWidths[0] := 160;
  SGexcel.ColWidths[1] := 160;
  SGexcel.ColWidths[2] := 160;
  SGexcel.ColWidths[3] := 160;

  SGexcel.Cells[0,0]:='??????? ?? ???????????, ?';
  SGexcel.Cells[1,0]:='???????? ????, ????';
  SGexcel.Cells[2,0]:='???????? ?? ?????????, ?';
  SGexcel.Cells[3,0]:='?????????? ?? ?????, ?';

end;

procedure TFrmProjectionEXL.Image1Click(Sender: TObject);
begin
  SGexcel.RowCount:= SGexcel.RowCount+1;
end;

procedure TFrmProjectionEXL.Image2Click(Sender: TObject);
begin
  if SGexcel.RowCount>=3 then SGexcel.RowCount:= SGexcel.RowCount-1;
end;

procedure TFrmProjectionEXL.ImportEXL;
// ?????? ?????? ?? Excel ?????
     const
  xlCellTypeLastCell = $0000000B;
  var ExcelApp, sheet: Variant;
   i, j, r, c: Integer;
begin
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.WorkBooks.Open(ENameFile.Text);
  sheet:=ExcelApp.WorkBooks[1].WorkSheets[1];

    //?????????? ????????? ?????? ?? ?????
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

  // ?????????? ????? ????????? ??????
    r := ExcelApp.ActiveCell.Row;
    FrmWait.ProgressBar1.Max:=r*4;

  //????????????? ???-?? ???????? ? ????? ? StringGrid
    SGexcel.RowCount:=r+1;

   //????????? ???????? ?? ?????? ?????? ? ???????? ? ???? ???????
     for j:= 1 to r do
       for i:= 1 to 4 do
       begin
         SGexcel.Cells[i-1,j]:= sheet.cells[j,i];
         FrmWait.ProgressBar1.Position:=FrmWait.ProgressBar1.Position+1;
       end;

  //????????? ?????????? Excel
  ExcelApp.Quit;

  ExcelApp := Unassigned;
  Sheet := Unassigned;

  //ShowMessage('?????? ?????????');
end;

procedure TFrmProjectionEXL.N2Click(Sender: TObject);
begin
 FrmProjectionEXL.Close;
end;

procedure TFrmProjectionEXL.OpenEXL;

begin
  if OpenDialog1.Execute then
  begin
   ENameFile.Text:= OpenDialog1.FileName;
  end;
end;

procedure TFrmProjectionEXL.WellChart;
// ?????? ?????? ???????? ???????? ?? ???????????? ?????????
  var n:integer;
begin
  chart1.LeftAxis.Automatic := false;
  chart1.LeftAxis.Minimum := -StrToFloat(SGexcel.Cells[2,SGexcel.RowCount-1])-100;
  chart1.LeftAxis.Maximum := 0;

  chart1.BottomAxis.Automatic := false;
  chart1.BottomAxis.Minimum := StrToFloat((SGexcel.Cells[3,1]))-200;
  chart1.BottomAxis.Maximum := StrToFloat((SGexcel.Cells[3,SGexcel.RowCount-1]))+200;


  with Series1   do
  begin
  for n:=1 to SGexcel.RowCount-1 do
  if SGexcel.Cells[2,n] <> ' ' then
   begin
     Series1.AddXY(StrToFloat(SGexcel.Cells[3,n]),
              -StrToFloat(SGexcel.Cells[2,n]),'');
   end;
  end;
end;

end.
