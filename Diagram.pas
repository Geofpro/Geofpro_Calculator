unit Diagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TFrmDiagram = class(TForm)
    Chart1: TChart;
    Series1: TPieSeries;
  private
    { Private declarations }
  public
    { Public declarations }
   procedure MassDiagramm;
  end;

var
  FrmDiagram: TFrmDiagram;

implementation

{$R *.dfm}

uses pipe_calculator;

{ TFrmDiagram }

procedure TFrmDiagram.MassDiagramm;
// ������ ��������� � ���������� ���������� ��������
  var
   M:  array of Real;   //����� ������
   S:  array of String;   //�������� ������
   i, RSGData: Integer;     // ���������� �����,  ���������� ����� � �������(���������� ���������)

begin
   RSGData:= Fcalculator3i.StringGrid1.RowCount;
    // ������� ���������� �������� M, S
  Series1.Clear;
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
   with Series1   do
  begin
    for i := 1 to RSGData-1 do
     begin
       Add (M[i], S[i]);
     end;
  end;

end;

end.

