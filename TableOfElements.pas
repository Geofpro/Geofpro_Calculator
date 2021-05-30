unit TableOfElements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, Class�onversionElements;

type
  TFTableOfElements = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SGElements: TStringGrid;
    Panel2: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure �onversionElements;  // ��������������
  end;

var
  FTableOfElements: TFTableOfElements;
  ElementsNum: TConversionElements;

implementation

{$R *.dfm}

uses pipe_calculator;

// � ���� ������ ����������� ������ � ��������, �������� � ������ ������ 120 ������
// ���������� 10 ���� (���������) �� 12 ������.

procedure TFTableOfElements.�onversionElements;
 var E7: String;
 E1, E2, E3, E4, E5, E6 : Real;
 i: Integer;
begin
   ElementsNum:= TConversionElements.Create;
   for i := 1 to Fcalculator3i.StringGrid1.RowCount-1 do
   begin
    E1:=StrToFloat(Fcalculator3i.StringGrid1.Cells[8,i]);
    E2:=StrToFloat(Fcalculator3i.StringGrid1.Cells[9,i]);
    E3:=StrToFloat(Fcalculator3i.StringGrid1.Cells[10,i]);
    E4:=StrToFloat(Fcalculator3i.StringGrid1.Cells[11,i]);
    E5:=StrToFloat(Fcalculator3i.StringGrid1.Cells[12,i]);
    E6:=StrToFloat(Fcalculator3i.StringGrid1.Cells[7,i]);
    E7:=Fcalculator3i.StringGrid1.Cells[1,i];
    ElementsNum.InputData (E1, E2, E3, E4, E5, E6, E7);
    ElementsNum.Elements9;
    ElementsNum.NameElement9;
    ElementsNum.ExportElements;
   end;
end;

procedure TFTableOfElements.Button1Click(Sender: TObject);
begin
  �onversionElements;
end;

procedure TFTableOfElements.FormCreate(Sender: TObject);
begin
 // �������� ������� StringGrid1
  SGElements.ColWidths[0] := 40;
  SGElements.ColWidths[1] := 200;
  SGElements.ColWidths[2] := 110;
  SGElements.ColWidths[3] := 110;
  SGElements.ColWidths[4] := 110;
  SGElements.ColWidths[5] := 110;
  SGElements.ColWidths[6] := 120;
  SGElements.ColWidths[7] := 120;
  SGElements.ColWidths[8] := 120;


  SGElements.Cells[0,0]:='�';
  SGElements.Cells[1,0]:='������������';
  SGElements.Cells[2,0]:='����� �, ��';
  SGElements.Cells[3,0]:='����� i,��';
  SGElements.Cells[4,0]:='����� �,��';
  SGElements.Cells[5,0]:='����� 2�,��';
  SGElements.Cells[6,0]:='����� ��������, �';
  SGElements.Cells[7,0]:='�����, ��';
  SGElements.Cells[8,0]:='���, ��';

end;

end.