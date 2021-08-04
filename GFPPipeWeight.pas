unit GFPPipeWeight;

interface

uses SysUtils, Dialogs, Classes;

type
    TPipeWeight = class
private
    FNamePipe: String;  // �������� �������� ��������� �������
    FPipeWeight : Real; // ��� ��������, ��
    FFrictionWeight: Real;// ������������ ���� ������ (�������� �� �������������� ���)
    FPipeMass : Real; // ����� ����� (�������� ��������� �������), ��
    FMassi : Real; // ����� ������ ����� �����, ��
    FMassConnector : Real; // ����� �����, ��
    FMass2Thickening : Real; // ����� ���� �������, ��
    FSectionLength : Real; // ����� ������, �
    FPipeLenght : Real; // ����� ����� �����, �
    FConnectorLenght : Real; // ����� �����, ��!!!
    FZenitAngle : Real; // �������� ����, �������
    FDensity : Real; // ���������, ��/�3
    FDn: Real; // ������� ����� ��������, �
    FDv: Real; //���������� ������� �����, �
    FDensityMud: Real;// ��������� �������� ��������
    FSwimFactor: Real; // ����������� ����������
    FFrictionFactor: Real; // ����������� ������
    FInertiaFactor: Real; // ����������� �������
    FPipeBendFactor: Real; // ����������� ������ ������� ����
    FMudFactorTrue: String; // 1-��������� ����������� ����������, 0-�� ���������

 public
 property NamePipe: string read FNamePipe write FNamePipe;

 property PipeWeigh: Real read FPipeWeight write FPipeWeight;


 property Massi: Real read FMassi write FMassi;
 property MassC: Real read FMassConnector write FMassConnector;
 property Mass2t: Real read FMass2Thickening write FMass2Thickening;
 property LenghtS: Real read FSectionLength write FSectionLength;
 property LenghtP: Real read FPipeLenght write FPipeLenght;
 property LenghtC: Real read FConnectorLenght write FConnectorLenght;
 procedure RadianT(Ze1:Real); //���� ��������� � �������
 property ZenitA: Real read FZenitAngle write RadianT;
 property PipeMass: Real read FPipeMass write FPipeMass;
 property Density: Real read FDensity write FDensity;
 property DensityMud: Real read FDensityMud write FDensityMud;
 property Dn: Real read FDn write Fdn;
 property Dv: Real read FDv write Fdv;
 property SwimFactor : Real read FSwimFactor write FSwimFactor;
 property FrictionFactor: Real read FFrictionFactor write FFrictionFactor;
 property InertiaFactor: Real read FInertiaFactor write FInertiaFactor;
 property PipeBendFactor: Real read FPipeBendFactor write FPipeBendFactor;
 property MudFactorTrue: String read FMudFactorTrue write FMudFactorTrue;
 property FrictionWeight: Real read FFrictionWeight write FFrictionWeight;

 procedure InputData ( Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr,
 Ci, Cb : Real; Np, Mf : String);
 procedure PipeCalc;  // ������ ����� � ����
 procedure GFPShowMessage;
 procedure DensityCalc; // ������ ���������
 procedure SwimFactorCalc; // ������������ ����������� ����������



 constructor Create;


    end;

implementation

// ����� ��������� ������ ����� � ���� ��������� ��������� �������
// ���������  InputData ������������� ��� ��������� � ��������� ������, �
// ������ ��� �������� ������ ��� ������� ������� ������
// ����� ������ ���������� �� ������ TableOfElements
// ����� ����������� ��������� ��������� ����,
// ��������� ����� � ������� ����� ��������� �����.
// ����� ��������� ���� � �������.



{ TPipeWeight }

constructor TPipeWeight.Create;
begin
  //InputData;
  //GFPShowMessage;
end;

procedure TPipeWeight.DensityCalc;
 var VolumeEl: Real; // ����� ��������, ��� �
begin
  VolumeEl:=Pi/4*((Dn*Dn)-(Dv*Dv));
  Density:= Massi/VolumeEl;
end;

procedure TPipeWeight.GFPShowMessage;
begin
 ShowMessage('������ ��������');
end;

procedure TPipeWeight.InputData(Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr,
 Ci, Cb : Real; Np, Mf: String);
  // ������ ������ ��� �������
begin
  NamePipe:=Np;
  Massi:=Mi;
  MassC:=Mc;
  Mass2T:=M2t;
  LenghtP:=Lp;
  LenghtC:=Lc;
  ZenitA:= Zen;
  Dn:=Dne/1000;
  Dv:=Dve/1000;
  DensityMud:= CMudE;
  FrictionFactor:=Cfr;
  InertiaFactor:= Ci;
  PipeBendFactor:=Cb;
  MudFactorTrue:=Mf;
end;

procedure TPipeWeight.RadianT(Ze1 : Real);
// ��������� ���� � �������
begin
  FZenitAngle:= Ze1*Pi/180;
end;

procedure TPipeWeight.SwimFactorCalc;
// ���������� ����������� ����������
begin
 if MudFactorTrue='1' then SwimFactor:= 1-(DensityMud/Density)
 else  SwimFactor:=1;
end;

procedure TPipeWeight.PipeCalc;
begin
 // ������ ��������� �������� �����������
  DensityCalc;
 // ������ ������������ ����������
  SwimFactorCalc;
 // ������ ����� �������� �����������
  PipeMass := Massi*(LenghtP-(LenghtC/1000))+MassC+Mass2t;
 // ������ ���� �����������
  PipeWeigh:= 9.81*SwimFactor*InertiaFactor*PipeBendFactor*
  (PipeMass*(FrictionFactor*sin(ZenitA) + cos(ZenitA))/1000) ;
 // ������ ������������ ���� ������ (�������� �� �������������� �������)
  FrictionWeight:= 9.81*PipeMass*FrictionFactor*sin(ZenitA)/1000 ;


end;

end.
