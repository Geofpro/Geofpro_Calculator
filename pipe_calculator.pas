unit pipe_calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls;

type
  TFcalculator3i = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel3: TPanel;
    StringGrid2: TStringGrid;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    EGridRow: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure �heckingvalue ;
  end;

var
  Fcalculator3i: TFcalculator3i;

implementation

{$R *.dfm}

uses pcmenu;

procedure TFcalculator3i.Button1Click(Sender: TObject);
begin
  �heckingvalue;
end;

procedure TFcalculator3i.FormActivate(Sender: TObject);
begin
  Fpcmenu.Close;
end;

procedure TFcalculator3i.FormCreate(Sender: TObject);
begin
  StringGrid1.ColWidths[0] := 40;
  StringGrid1.ColWidths[1] := 170;
  StringGrid1.ColWidths[2] := 90;
  StringGrid1.ColWidths[3] := 90;
  StringGrid1.ColWidths[4] := 90;
  StringGrid1.ColWidths[5] := 90;
  StringGrid1.ColWidths[6] := 90;
  StringGrid1.ColWidths[7] := 90;
  StringGrid1.ColWidths[8] := 90;
  StringGrid1.ColWidths[9] := 90;
  StringGrid1.ColWidths[10] := 90;
  StringGrid1.ColWidths[11] := 100;
  StringGrid1.ColWidths[12] := 100;
  StringGrid1.ColWidths[13] := 100;

  StringGrid2.ColWidths[0] := 100;
  StringGrid2.ColWidths[1] := 100;
  StringGrid2.ColWidths[2] := 100;

  StringGrid1.Cells[0,0]:='�';
  StringGrid1.Cells[1,0]:='������������';
  StringGrid1.Cells[2,0]:='D �, ��';
  StringGrid1.Cells[3,0]:='D ��, ��';
  StringGrid1.Cells[4,0]:='D max, ��';
  StringGrid1.Cells[5,0]:='D ��, ��';
  StringGrid1.Cells[6,0]:='D ��, ��';
  StringGrid1.Cells[7,0]:='����� i,��';
  StringGrid1.Cells[8,0]:='����� �,��';
  StringGrid1.Cells[9,0]:='�����, �';
  StringGrid1.Cells[10,0]:='����� �����, �';
  StringGrid1.Cells[11,0]:='�����, ��';
  StringGrid1.Cells[12,0]:='�����, �';
  StringGrid1.Cells[13,0]:='���, ��';

  StringGrid1.Cells[0,1]:='1';
  StringGrid1.Cells[0,2]:='2';
  StringGrid1.Cells[0,3]:='3';
  StringGrid1.Cells[0,4]:='4';
  StringGrid1.Cells[0,5]:='5';

  Panel1.Height:=22;
  Image1.Visible:=False;
  Image2.Visible:=True;
end;

procedure TFcalculator3i.Image1Click(Sender: TObject);
begin
 Panel1.Height:=22;
 Image1.Visible:=False;
 Image2.Visible:=True;
end;

procedure TFcalculator3i.Image2Click(Sender: TObject);
begin
 Panel1.Height:=131;
 Image2.Visible:=False;
 Image1.Visible:=True;
end;

procedure TFcalculator3i.Image3Click(Sender: TObject);
begin
   EGridRow.Text:=IntToStr(StrToInt(EGridRow.Text)+1);
   StringGrid1.RowCount:=StrToInt(EGridRow.Text);
   StringGrid1.Cells[0,StrToInt(EGridRow.Text)-1]:=IntToStr(StrToInt(EGridRow.Text)-1);
end;

procedure TFcalculator3i.Image4Click(Sender: TObject);
begin
  if StrToInt(EGridRow.Text)>2 then
   begin
    EGridRow.Text:=IntToStr(StrToInt(EGridRow.Text)-1);
    StringGrid1.RowCount:=StrToInt(EGridRow.Text);
   end;
end;

procedure TFcalculator3i.N1Click(Sender: TObject);
begin
  Fpcmenu.Show;
end;

procedure TFcalculator3i.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
    const //����� ���������� ��� ����. ��� �� ����� ������������ ����� �� ���������.
  clBlue11 = TColor($00F2BB60);
  clRed2 = TColor($00A6B0F9);
  clYellow = TColor($0080F7F3);
begin
   if ((ACol = 11) or (ACol = 12) or (ACol = 13)) and (ARow>0)  then
    begin
    StringGrid1.Canvas.Brush.Color := clBlue11;
    //StringGrid3.Canvas.Font.Color := clWhite;
    stringGrid1.Canvas.FillRect(rect);
    stringGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, stringGrid1.Cells[ACol, ARow]);
    end;
end;

procedure TFcalculator3i.�heckingvalue;
   var n: String ;
       i, col, row : Integer;
begin
   for col := 7 to 10 do
   begin
       for row := 1 to StrToInt(EGridRow.Text)-1 do
         begin
         n:=StringGrid1.Cells[col, row];
         if (n='���') or (n='���') then ShowMessage('������ �������!!!');
         if n='' then
         begin
         ShowMessage('� �������� ������� ����� i, �� ... ����� �����, � �� ����������� ������� ������ �����.');
         Exit
         end;
          for i := 1 to length(StringGrid1.Cells[col, row]) do
         begin
           if not (n[i] in ['0'..'9',',','.']) then
           begin
            ShowMessage('� �������� ������� ����� i, �� ... ����� �����, � ������ ���� ������ �����.');
            Exit
           end;
           end;

       end;
   end;

end;

end.