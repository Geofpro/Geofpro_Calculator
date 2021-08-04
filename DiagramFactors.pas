unit DiagramFactors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TFrDiagramFactors = class(TForm)
    Chart1: TChart;
    Splitter1: TSplitter;
    Series1: THorizBarSeries;
    Panel1: TPanel;
    SGDiagramData: TStringGrid;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    // ������������
    FFactorSwimAverage : Real; // ������� �������� ������������ ����������
    FFactorInertia : Real; // ����������� ������� � ��
    FFactorBend : Real; // ����������� ����������� ���� �� ���������� ������ ������� ��� ������� ����� ����������� �������

    FWeight : Real; // ��� ������� ��������� ���� � ������ ���� ��������, ��
    FweightZ : Real; // ��� ����������� ��� ����� �������������� ��������, ��

    // ������������ ������� ������� ����
    FFrictionWeight : Real; // ������������ ���� �������, �������� ����������� ������ � �������� �� �������������� ���������, ��
    FFactorSwimWeight : Real; //������������ ���� �� ������� ����������, ��
    FFactorInertiaWeight : Real; // ������������ ���� �� ������ ������� � ��, ��
    FFactorBendWeight : Real; // ������������ ���� �� ���������� ������ �������, ��

  public
    { Public declarations }
  property FactorSwimAverage: Real read FFactorSwimAverage write FFactorSwimAverage;
  property FactorInertia: Real read FFactorInertia write FFactorInertia;
  property FactorBend: Real read FFactorBend write FFactorBend;

  property Weight: Real read FWeight write FWeight;
  property WeightZ: Real read FWeightZ write FWeightZ;

  property FrictionWeight: Real read  FFrictionWeight write  FFrictionWeight;
  property FactorSwimWeight: Real read  FFactorSwimWeight write  FFactorSwimWeight;
  property FactorInertiaWeight: Real read  FFactorInertiaWeight write  FFactorInertiaWeight;
  property FactorBendWeight: Real read  FFactorBendWeight write  FFactorBendWeight;

  procedure FrictionWeightSum;  // ������� ���� ������
  procedure SwimFactorAverageValue;  // ������� ������� �������� ������������ ����������
  procedure SwimFactorWeight;  // ������ ������������ �� ������������ ����������
  procedure ImportCalcData;   // ������ ������
  procedure BendFactorWeight;  // ������ ������������ �� ���������� ������ �������
  procedure InertiaFactorWeight;  // ������ ������������ �� ������������ ������� � ��
  procedure FillTable; // ��������� ������� ��������
  procedure CalcWeightZ; // �������� �� ���� ��� �������
  procedure StartCalculation; // ���������� �������, ��������� ������
  procedure StartDiagram;  // ������ ���������
  procedure CalcProcent; // ����������� ������� ��� ������ ������������ ������� ����
  end;

var
  FrDiagramFactors: TFrDiagramFactors;

implementation

{$R *.dfm}

// ����� ��������� �������� ������������ � ������� ���� ������� ��������� ����

uses TableOfElements, pipe_calculator, pcmenu;

{ TFrDiagramFactors }

procedure TFrDiagramFactors.BendFactorWeight;
  // ���� ��������� �� ���������� ������ ������� ��� ������� ����� ����������� �������
begin
    FactorBendWeight:= Weight-Weight/FactorBend;
end;

procedure TFrDiagramFactors.CalcProcent;
 // ����������� ������� ��� ������ ������������ ������� ����
begin
  //������������ �� ������������ kfr, ��
 SGDiagramData.Cells[2,5]:= FloatToStrF(FrictionWeight/Weight*100,ffFixed,10,2);
  //������������ �� ���� ����������, ��
 SGDiagramData.Cells[2,6]:= FloatToStrF(FactorSwimWeight/Weight*100,ffFixed,10,2);
  //������������ �� ������������ ki, ��
 SGDiagramData.Cells[2,7]:= FloatToStrF(FactorInertiaWeight/Weight*100,ffFixed,10,2);
  //������������ �� ������������ kb, ��
 SGDiagramData.Cells[2,8]:= FloatToStrF(FactorBendWeight/Weight*100,ffFixed,10,2);
  //��� ����������� ��� ����� �������������� ��������, ��
 SGDiagramData.Cells[2,9]:= FloatToStrF(WeightZ/Weight*100,ffFixed,10,2);
end;

procedure TFrDiagramFactors.CalcWeightZ;
// �������� �� ���� ��� �������
begin
  WeightZ:= Weight-FrictionWeight- FactorSwimWeight - FactorInertiaWeight - FactorBendWeight;
end;

procedure TFrDiagramFactors.FillTable;
// ��������� ������� � ���������� �������
begin
 SGDiagramData.Cells[3,1]:=FloatToStrF(FactorSwimAverage,ffFixed,10,3);
 SGDiagramData.Cells[3,2]:=FloatToStr(FactorInertia);
 SGDiagramData.Cells[3,3]:=FloatToStr(FactorBend);
 SGDiagramData.Cells[3,4]:=FloatToStr(Weight);
 SGDiagramData.Cells[3,5]:= FloatToStrF( FrictionWeight,ffFixed,10,3);//������������ �� ������������ kfr, ��
 SGDiagramData.Cells[3,6]:= FloatToStrF(FactorSwimWeight,ffFixed,10,3);//������������ �� ���� ����������, ��
 SGDiagramData.Cells[3,7]:= FloatToStrF(FactorInertiaWeight,ffFixed,10,3);//������������ �� ������������ ki, ��
 SGDiagramData.Cells[3,8]:= FloatToStrF(FactorBendWeight,ffFixed,10,3); //������������ �� ������������ kb, ��
 SGDiagramData.Cells[3,9]:= FloatToStrF(WeightZ,ffFixed,10,3); //��� ��� ����� ��������, ��
end;

procedure TFrDiagramFactors.FormCreate(Sender: TObject);
begin
 SGDiagramData.ColWidths[0]:=45;
 SGDiagramData.ColWidths[1]:=330;
 SGDiagramData.ColWidths[2]:=100;
 SGDiagramData.ColWidths[3]:=100;

 SGDiagramData.Cells[0,0]:='� �/�';
 SGDiagramData.Cells[1,0]:='������������ ���������';
 SGDiagramData.Cells[2,0]:='%';
 SGDiagramData.Cells[3,0]:='��������';

 SGDiagramData.Cells[0,1]:='1';
 SGDiagramData.Cells[0,2]:='2';
 SGDiagramData.Cells[0,3]:='3';
 SGDiagramData.Cells[0,4]:='4';
 SGDiagramData.Cells[0,5]:='5';
 SGDiagramData.Cells[0,6]:='6';
 SGDiagramData.Cells[0,7]:='7';
 SGDiagramData.Cells[0,8]:='8';
 SGDiagramData.Cells[0,9]:='9';

 SGDiagramData.Cells[1,1]:='����������� ����������';
 SGDiagramData.Cells[1,2]:='ki';
 SGDiagramData.Cells[1,3]:='kb';
 SGDiagramData.Cells[1,4]:='��� �����������, ��';
 SGDiagramData.Cells[1,5]:='������������ �� ������������ kfr, ��';
 SGDiagramData.Cells[1,6]:='������������ �� ���� ���������� ksw, ��';
 SGDiagramData.Cells[1,7]:='������������ �� ������������ ki, ��';
 SGDiagramData.Cells[1,8]:='������������ �� ������������ kb, ��';
 SGDiagramData.Cells[1,9]:='��� ����������� ��� ����� �������������� ��������, ��'
end;

procedure TFrDiagramFactors.FrictionWeightSum;
// ��������� �������� ���� ������ ��� ������� �������� ��������� �������, ��
var i : Integer;
begin
  FrictionWeight:=0;
  for i := 1 to FTableOfElements.SGElements.RowCount-1 do
    begin
      FrictionWeight:=FrictionWeight + StrToFloat(FTableOfElements.SGElements.Cells[18,i]);
    end;
end;

procedure TFrDiagramFactors.ImportCalcData;
 //����������� ������ ��� ������� �� ������ ����
begin
 // ��� �������, ��
  Weight:=StrToFloat(Fcalculator3i.EkN.Text);
  // ����������� ������� � ��
  FactorInertia:= StrToFloat(Fpcmenu.SGFactors.Cells[1,3]);
  // ����������� ���������� ������ �������
  FactorBend:= StrToFloat(Fpcmenu.SGFactors.Cells[1,4]);
end;

procedure TFrDiagramFactors.InertiaFactorWeight;
 // ������������ �������� ��� �������, ��� ������ �� ������������ �������,
 // ��� ������������� �������� �������� �������� � �.�.
begin
  FactorInertiaWeight:= Weight-Weight/FactorInertia;
end;

procedure TFrDiagramFactors.StartCalculation;
 // ���������� �������
begin
 ImportCalcData; // ������ ������
 FrictionWeightSum; // ������� ���� ������
 SwimFactorAverageValue; // ������� ������� �������� ������������ ����������
 SwimFactorWeight; // ������ ������������ �� ������������ ����������
 BendFactorWeight; // ������ ������������ �� ���������� ������ �������
 InertiaFactorWeight; // ������ ������������ �� ������������ ������� � ��
 CalcWeightZ; // �������� �� ���� ��� �������
 FillTable;   // ��������� ������� ��������
 StartDiagram;  // ������ ���������
 CalcProcent;  // ����������� ������� ��� ������ ������������ ������� ����
end;

procedure TFrDiagramFactors.StartDiagram;
begin
  Series1.Clear;
    // ������ ������
  with Series1   do

   begin
    Add (WeightZ, '���*');
    Add (FactorBendWeight, 'Kb');
    Add (FactorInertiaWeight, 'Ki');
    Add (FactorSwimWeight, 'Ksw');
    Add (FrictionWeight, 'Kfr');
    Add (Weight, '���');
   end;

end;

procedure TFrDiagramFactors.SwimFactorAverageValue;
 // ���������� ������� �������� ������������ ����������
 var i : Integer;
begin
  FactorSwimAverage:=0;
  for i := 1 to FTableOfElements.SGElements.RowCount-1 do
    begin
      FactorSwimAverage:=FactorSwimAverage + StrToFloat(FTableOfElements.SGElements.Cells[12,i]);
    end;
  FactorSwimAverage:=FactorSwimAverage/(FTableOfElements.SGElements.RowCount-1);
end;



procedure TFrDiagramFactors.SwimFactorWeight;
 // ���������� ������������ ������ ���� � ��������� �������� ���� ����������
begin
 FactorSwimWeight:= Weight-Weight/FactorSwimAverage ;
end;

end.