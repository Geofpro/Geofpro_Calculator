unit ReportsAllDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TFrReportsAllDate = class(TFrame)
    StringGridDate: TStringGrid;
    Label1: TLabel;
    StringGridPipeCalculator: TStringGrid;
    Chart1: TChart;
    Series1: TLineSeries;
    Chart2: TChart;
    Series2: TPieSeries;
  private
    { Private declarations }
  public
    { Public declarations }

   procedure ImportDate;    // ������ ������  ��� ������
   procedure GhartVert; // ������ ������ �������� ������� �������� �� ������������ ���������
   procedure DiagramWeight; // ������ ��������� ����� ������ ��������� �������
  end;

implementation

{$R *.dfm}

{ TFrReportsAllDate }

uses User_person, pcmenu, pipe_calculator, ProjectionEXL ;

procedure TFrReportsAllDate.DiagramWeight;
  // ������ ��������� � ���������� ���������� ��������
  var
   M:  array of Real;   //����� ������
   S:  array of String;   //�������� ������
   i, RSGData: Integer;     // ���������� �����,  ���������� ����� � �������(���������� ���������)
begin
  RSGData:= Fcalculator3i.StringGrid1.RowCount;
   // ��������� ����� �������
  SetLength(M, RSGData) ;
  SetLength(S, RSGData) ;

   //����� �������
  for i := 1 to RSGData-1 do
    begin
      M[i]:= StrToFloat(Fcalculator3i.StringGrid1.Cells[15,i]);
      S[i]:= Fcalculator3i.StringGrid1.Cells[1,i];
    end;

   // ������ ������
   with Series2   do
  begin
    for i := 1 to RSGData-1 do
     begin
       Add (M[i], S[i]);
     end;
  end;
end;

procedure TFrReportsAllDate.GhartVert;
 // ������ ������ �������� �������� �� ������������ ���������
  var n:integer;
begin
  chart1.LeftAxis.Automatic := false;
  chart1.LeftAxis.Minimum := -StrToFloat(FrmProjectionEXL.SGexcel.Cells[2,FrmProjectionEXL.SGexcel.RowCount-1])-100;
  chart1.LeftAxis.Maximum := 0;

  chart1.BottomAxis.Automatic := false;
  chart1.BottomAxis.Minimum := StrToFloat((FrmProjectionEXL.SGexcel.Cells[3,1]))-200;
  chart1.BottomAxis.Maximum := StrToFloat((FrmProjectionEXL.SGexcel.Cells[3,FrmProjectionEXL.SGexcel.RowCount-1]))+200;


  with Series1   do
  begin
  for n:=1 to FrmProjectionEXL.SGexcel.RowCount-1 do
  if FrmProjectionEXL.SGexcel.Cells[2,n] <> ' ' then
   begin
     Series1.AddXY(StrToFloat(FrmProjectionEXL.SGexcel.Cells[3,n]),
              -StrToFloat(FrmProjectionEXL.SGexcel.Cells[2,n]),'');
   end;
  end;
end;

procedure TFrReportsAllDate.ImportDate;
 var i : Integer;
begin
  StringGridDate.ColWidths[0] := 350;
  StringGridDate.ColWidths[1] := 350;

  StringGridDate.Cells[0,0]:='������������ ���������';
  StringGridDate.Cells[1,0]:='��������';

  // ��� ������������, ������� � �.� ��������������� ������������
  for i :=1 to FUser_person.StringGrid1.RowCount-1 do
   begin
    StringGridDate.Cells[0,i]:=FUser_person.StringGrid1.Cells[0, i];
    StringGridDate.Cells[1,i]:=FUser_person.StringGrid1.Cells[1, i];
   end;

   //  ������������
    for i :=1 to Fpcmenu.SGFactors.RowCount-1 do
   begin
    StringGridDate.Cells[0,8+i]:=Fpcmenu.SGFactors.Cells[0, i];
    StringGridDate.Cells[1,8+i]:=Fpcmenu.SGFactors.Cells[1, i];
   end;

   // ������� ������
   StringGridDate.Cells[0,14]:='������� ������';
   StringGridDate.Cells[1,14]:=Fpcmenu.Ebit.Text;

   // ����� �������, �
   StringGridDate.Cells[0,15]:='������� �� �����������, �';
   StringGridDate.Cells[1,15]:=Fcalculator3i.ELdrill.Text;

   // ����� ��������� �������, �
   StringGridDate.Cells[0,16]:='����� ����������� �����������, ��';
   StringGridDate.Cells[1,16]:=Fcalculator3i.Ekg.Text;

   // ����� ��������� �������, �����
   StringGridDate.Cells[0,17]:='����� ����������� �����������, �����';
   StringGridDate.Cells[1,17]:=Fcalculator3i.Etonne.Text;

   // ��� ��������� �������, ��
   StringGridDate.Cells[0,18]:='��� ����������� �����������, ��';
   StringGridDate.Cells[1,18]:=Fcalculator3i.EkN.Text;





   //StringGrid1 PipeCalculator

   StringGridPipeCalculator.RowCount:= Fcalculator3i.StringGrid1.RowCount;

   StringGridPipeCalculator.ColWidths[0] := 25;
   StringGridPipeCalculator.ColWidths[1] := 180;
   StringGridPipeCalculator.ColWidths[2] := 55;
   StringGridPipeCalculator.ColWidths[3] := 55;
   StringGridPipeCalculator.ColWidths[4] := 60;
   StringGridPipeCalculator.ColWidths[4] := 60;
   StringGridPipeCalculator.ColWidths[5] := 60;
   StringGridPipeCalculator.ColWidths[6] := 60;
   StringGridPipeCalculator.ColWidths[7] := 70;
   StringGridPipeCalculator.ColWidths[8] := 93;
   StringGridPipeCalculator.ColWidths[9] := 110;
   StringGridPipeCalculator.ColWidths[10] := 60;
   StringGridPipeCalculator.ColWidths[11] := 55;


   for i := 0 to Fcalculator3i.StringGrid1.RowCount-1 do

   begin
    StringGridPipeCalculator.Cells[0,i]:=Fcalculator3i.StringGrid1.Cells[0, i];
    StringGridPipeCalculator.Cells[1,i]:=Fcalculator3i.StringGrid1.Cells[1, i];
    StringGridPipeCalculator.Cells[2,i]:=Fcalculator3i.StringGrid1.Cells[2, i];
    StringGridPipeCalculator.Cells[3,i]:=Fcalculator3i.StringGrid1.Cells[3, i];
    StringGridPipeCalculator.Cells[4,i]:=Fcalculator3i.StringGrid1.Cells[4, i];
    StringGridPipeCalculator.Cells[5,i]:=Fcalculator3i.StringGrid1.Cells[5, i];
    StringGridPipeCalculator.Cells[6,i]:=Fcalculator3i.StringGrid1.Cells[6, i];
    StringGridPipeCalculator.Cells[7,i]:=Fcalculator3i.StringGrid1.Cells[7, i];
    StringGridPipeCalculator.Cells[8,i]:=Fcalculator3i.StringGrid1.Cells[11, i];
    StringGridPipeCalculator.Cells[9,i]:=Fcalculator3i.StringGrid1.Cells[12, i];
    StringGridPipeCalculator.Cells[10,i]:=Fcalculator3i.StringGrid1.Cells[14, i];
    StringGridPipeCalculator.Cells[11,i]:=Fcalculator3i.StringGrid1.Cells[15, i];
   end;


end;

end.
