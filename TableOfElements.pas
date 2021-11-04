unit TableOfElements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, GFP�onversionElements,
  GFPPipeWeight;

type
  TFTableOfElements = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SGElements: TStringGrid;
    Panel2: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure �onversionElements;  // �������������� ������ � ��������
  procedure LeghtSum; // ����������� ���� ����� �����������
  procedure Zenit; // ���������� �������� ���� ��� ������� ��������
  procedure ClassPipeWeightT; // ������ ����� � ����
  procedure SGElementsClear; // �������� ������� �������
  procedure PipeWeightSection; // ��������� ��� ������ ������ (����� ���� ��������� ������ ������)
  procedure CalculateWeight; // ��������� ������ ����� � ����
  end;

var
  FTableOfElements: TFTableOfElements;
  ElementsNum: TConversionElements;
  PipeWeight1 : TPipeWeight;

implementation

{$R *.dfm}

uses pipe_calculator, ProjectionEXL, pcmenu, Diagram, DiagramFactors;

// � ���� ������ ����������� ������ � ��������, �������� � ������ ������ 120 ������
// ���������� 10 ���� (���������) �� 12 ������.

procedure TFTableOfElements.�onversionElements;
   // ��������� ������ ��������� ������� �� ��������
 var E1, E2, E3, E6, E7, E8, E9, Eindex: String;
 E4, E5: Real;
 i: Integer; // �������
 CR : Integer; // ���������� ������ ��������� �������
begin
   // ������� ������ ���������
     Memo1.Text:='';
     Memo1.Lines.Add('������ ��������.');
     Memo1.Lines.Add('���������� ��������� � ������:');
   // ������ ��������� ������ TConversionElements
     ElementsNum:= TConversionElements.Create;
     CR:= Fcalculator3i.StringGrid1.RowCount-1;

   for i := 1 to CR do
   begin
    // ����������� ������� ������� ������� ��������� ����
    Fcalculator3i.StringGrid1.Cells[16,i]:=IntToStr(i)+'index';
    // ����������� �������� 0 ��������� �������
    Fcalculator3i.StringGrid1.Cells[13,i]:='0';
    Fcalculator3i.StringGrid1.Cells[14,i]:='0';
    Fcalculator3i.StringGrid1.Cells[15,i]:='0';
    // ����� 1 ����� ���� ����� (�����������), ��
    E1:=Fcalculator3i.StringGrid1.Cells[8,i];
    // ����� �����, ��
    E2:=Fcalculator3i.StringGrid1.Cells[9,i];
    // ����� ���� �������, ��
    E3:=Fcalculator3i.StringGrid1.Cells[10,i];
    // ����� ������ (�����)
    E4:=StrToFloat(Fcalculator3i.StringGrid1.Cells[11,i]);
    // ����� ������� (�����)
    E5:=StrToFloat(Fcalculator3i.StringGrid1.Cells[12,i]);
    //����� �����, �:
    E6:=Fcalculator3i.StringGrid1.Cells[7,i];
    // ��� ������
    E7:=Fcalculator3i.StringGrid1.Cells[1,i];
    // ������� �������� ���� �����, ��
    E8:=Fcalculator3i.StringGrid1.Cells[2,i];
    // ������� ���������� ���� �����, ��
    E9:=Fcalculator3i.StringGrid1.Cells[3,i];
    // ������ ������ ������� ��������� ����
    Eindex:= Fcalculator3i.StringGrid1.Cells[16,i];
    // �������� ��������� �������/�������� ���������� ��������� �������
    ElementsNum.InputData (E4, E5, E7, E1, E2, E3, E6, E8, E9, Eindex);
    ElementsNum.ConversionElemets;
   end;

  ElementsNum.Free;
end;

procedure TFTableOfElements.Button1Click(Sender: TObject);
begin
  �onversionElements;
  LeghtSum;
end;

procedure TFTableOfElements.Button2Click(Sender: TObject);
begin
  Zenit;
end;

procedure TFTableOfElements.Button3Click(Sender: TObject);
begin
  ClassPipeWeightT;
end;

procedure TFTableOfElements.Button4Click(Sender: TObject);
begin
  SGElementsClear;
end;

procedure TFTableOfElements.Button5Click(Sender: TObject);
begin
 PipeWeightSection;
end;

procedure TFTableOfElements.CalculateWeight;
 var i : Integer;
begin
 // ������� ������ ����������� �������
  SGElementsClear;
 // ��������������� ������ � ��������
  �onversionElements;
 //  ����������� ����
  LeghtSum;
 // ���������� �������� ���� ��� ������ ��������� �����
  Zenit;
 // ���������, ���������� �� �������� ��������� ����
  for i := 1 to SGElements.RowCount-1 do
 begin
     if SGElements.Cells[8,i]='' then
    begin
     ShowMessage('��������� ������ ������� ��������');
     Exit;
    end;
  end;
 // ����������� ����� � ��� ������ �����
 ClassPipeWeightT;
 // ������� ��������� ������ � ������� ����� ������
 PipeWeightSection;

 // ����������� ����� �����������
   Fcalculator3i.SumLeght;
   //  ��������� �� � �����
   Fcalculator3i.ConvertKG;
   // ������������ ��������� ����� � ���
   Fcalculator3i.SumWeight;
   // ������ ��������� ������������� ����
   FrmDiagram.MassDiagramm;
   // ������ ��������� ������������ ������� ����
   FrDiagramFactors.StartCalculation;
   Memo1.Lines.Add('');
   Memo1.Lines.Add('��������� ����� �������: ' +SGElements.Cells[7,SGElements.RowCount-1]+ ' �');
   ShowMessage(Memo1.Text);
end;

procedure TFTableOfElements.ClassPipeWeightT;
 // ������ ��������� ������ TPipeWeight, ������ ����� � ���� ��������� �������
 var i: Integer;
 var E7, MufFactorTrue: String;
 var E1, E2, E3, E4, E5, E6, EDn, EDv, CMud, ECfr,
 ECi, ECb : Real;  // ��������, ������� ������� � ������  PipeWeight1
begin

   PipeWeight1:=TPipeWeight.Create;


   for i := 1 to SGElements.RowCount-1 do

  //(Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr, Ci, Cb : Real; Np, Mf: String);
     begin
      // ����� ������ ����� �����, ��
      E1:=StrToFloat(SGElements.Cells[3,i]);
      // ����� �����, ��
      E2:=StrToFloat(SGElements.Cells[4,i]);
      // ����� ���� �������, ��
      E3:=StrToFloat(SGElements.Cells[5,i]);
      // ����� ����� �����, �
      E4:=StrToFloat(SGElements.Cells[6,i]);
      // ����� �����, ��
      E5:=StrToFloat(SGElements.Cells[2,i]);
      //�������� ����, ����
      E6:=StrToFloat(SGElements.Cells[8,i]);
      // ������� ������� ���� �����
      EDn:= StrToFloat(SGElements.Cells[9,i]);
      // ���������� ������� ���� �����
      EDv:= StrToFloat(SGElements.Cells[10,i]);
      // ��� ��������
      E7:=SGElements.Cells[1,i];
      // ��������� �������� ��������
      CMud:= StrToFloat(Fpcmenu.SGFactors.Cells[1,1]);
      // ����������� ������ ���� � ������ ��������
      ECfr:= StrToFloat(Fpcmenu.SGFactors.Cells[1,2]);
      // ����������� �������
      ECi:= StrToFloat(Fpcmenu.SGFactors.Cells[1,3]);
      // ����������� ������ ��������� �������
      ECb:= StrToFloat(Fpcmenu.SGFactors.Cells[1,4]);
      // ���������(1)/�� ��������� (0) ����������� ����������
      if Fpcmenu.CheckMud.Checked=False then MufFactorTrue:='0';
      if Fpcmenu.CheckMud.Checked=True then MufFactorTrue:='1';

      PipeWeight1.InputData (E1, E2, E3, E4, E5, E6, EDn, EDv, CMud, ECfr,
      ECi, ECb,  E7, MufFactorTrue);
      // ������ �����
      PipeWeight1.PipeCalc;
      // ���������� �����, ��/� ���
      SGElements.Cells[11,i]:= FloatToStrF(PipeWeight1.Density,ffFixed,10,2);
      // ����������� ����������
      SGElements.Cells[12,i]:= FloatToStrF(PipeWeight1.SwimFactor,ffFixed,10,2);
      // ����� � ��
      SGElements.Cells[19,i]:= FloatToStrF(PipeWeight1.PipeMass,ffFixed,10,2);
      // ���, ��
      SGElements.Cells[20,i]:= FloatToStrF(PipeWeight1.PipeWeigh,ffFixed,10,2);
      // ������ ���� ������, ��
      SGElements.Cells[18,i]:= FloatToStrF(PipeWeight1.FrictionWeight,ffFixed,10,2);

     end;
   //PipeWeight1.GFPShowMessage;
   PipeWeight1.Free;
end;

procedure TFTableOfElements.FormCreate(Sender: TObject);
begin
 // �������� ������� StringGrid1
  SGElements.ColWidths[0] := 40;
  SGElements.ColWidths[1] := 200;
  SGElements.ColWidths[2] := 120;
  SGElements.ColWidths[3] := 90;
  SGElements.ColWidths[4] := 90;
  SGElements.ColWidths[5] := 90;
  SGElements.ColWidths[6] := 120;
  SGElements.ColWidths[7] := 90;
  SGElements.ColWidths[8] := 120;
  SGElements.ColWidths[9] := 70;
  SGElements.ColWidths[10] := 70;
  SGElements.ColWidths[11] := 120;
  SGElements.ColWidths[12] := 150;
  SGElements.ColWidths[13] := 90;

  SGElements.ColWidths[18] := 120;
  SGElements.ColWidths[19] := 120;
  SGElements.ColWidths[20] := 120;


  SGElements.Cells[0,0]:='�';
  SGElements.Cells[1,0]:='������������';
  SGElements.Cells[2,0]:='����� �����, ��';
  SGElements.Cells[3,0]:='����� i,��';
  SGElements.Cells[4,0]:='����� �,��';
  SGElements.Cells[5,0]:='����� 2�,��';
  SGElements.Cells[6,0]:='����� ��������, �';
  SGElements.Cells[7,0]:='�������, �';
  SGElements.Cells[8,0]:='�������� ����, �';
  SGElements.Cells[9,0]:='� �, ��';
  SGElements.Cells[10,0]:='� ��, ��';
  SGElements.Cells[11,0]:='���������, ��/�3';
  SGElements.Cells[12,0]:='����������� ����������';
  SGElements.Cells[13,0]:='������';

  SGElements.Cells[18,0]:='���� ������, ��';
  SGElements.Cells[19,0]:='�����, ��';
  SGElements.Cells[20,0]:='���, ��';

end;

procedure TFTableOfElements.LeghtSum;
// ����������� ���� ����� �����������
var i, ERow: integer;
 Sum1 : Real;
begin
 ERow:=SGElements.RowCount-1;
 SGElements.Cells[7,1]:= SGElements.Cells[6,1];
  for i := 2 to ERow do
    begin
      SGElements.Cells[7,i]:=FloatToStr(StrToFloat(SGElements.Cells[7,i-1])+
      StrToFloat(SGElements.Cells[6,i]));
    end;

end;

procedure TFTableOfElements.PipeWeightSection;
// ��������� ��� ������ ������
 var i,i2 : Integer;
begin
 for i := 1 to Fcalculator3i.StringGrid1.RowCount-1 do
 begin
   for i2 := 1 to SGElements.RowCount-1 do
   begin
     if SGElements.Cells[13,i2]=Fcalculator3i.StringGrid1.Cells[16,i] then
     begin
     Fcalculator3i.StringGrid1.Cells[13,i]:= FloatToStr(StrToFloat(Fcalculator3i.StringGrid1.Cells[13,i])+
     StrToFloat(SGElements.Cells[19,i2]));
     Fcalculator3i.StringGrid1.Cells[15,i]:= FloatToStr(StrToFloat(Fcalculator3i.StringGrid1.Cells[15,i])+
     StrToFloat(SGElements.Cells[20,i2]));
     end;
   end;

 end;




end;

procedure TFTableOfElements.SGElementsClear;
 var i, a : Integer;
begin
  for i := 0 to SGElements.ColCount do
   begin
     for a := 1 to SGElements.RowCount do SGElements.Cells[i,a]:='';
   end;

  SGElements.RowCount:=1;
end;

procedure TFTableOfElements.Zenit;
// ���������� �������� ��������� ���� ��� ������� ��������
 var i, ip, Z: Integer;
begin
 Z:= FrmProjectionEXL.SGexcel.RowCount-2;
  for i := 1 to SGElements.RowCount-1 do
  begin
    for ip := 1 to Z do
    begin
      if (StrToFloat(SGElements.Cells[7,i])<StrToFloat(FrmProjectionEXL.SGexcel.Cells[0,ip+1]))
      and (StrToFloat(SGElements.Cells[7,i])>=StrToFloat(FrmProjectionEXL.SGexcel.Cells[0,ip])) then
      begin
       SGElements.Cells[8,i]:= FrmProjectionEXL.SGexcel.Cells[1,ip]
      end
    end;

  end;

end;

end.
