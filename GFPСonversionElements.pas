unit GFP�onversionElements;

interface

 uses SysUtils, Dialogs, Classes;

 type
 TConversionElements = class

 private
  FNameSection: String;  // �������� ������
  FNameElement: String;  // �������� ��������
  FSectionLength : Real; // ����� ������
  FPipeLenght : Real; // ����� ������ ��������
  FConnectorLenght : String; // ����� �����
  FMassi : String; // ����� ������ ����� �����
  FMassConnector : String; // ����� �����
  FMass2Thickening : String; // ����� ���� �������
  FNumberOfElements : Integer; //���������� ���������
  FDn: String; // ������� ����� ��������, �
  FDv: String; //���������� ������� �����, �
  FSectionIndex: String; // ���������� ������ ������

 public
  property NameSection: string read FNameSection write FNameSection;
  property NameElement: string read FNameElement write FNameElement;
  property LenghtS: Real read FSectionLength write FSectionLength;
  property LenghtP: Real read FPipeLenght write FPipeLenght;
  property LenghtC: String read FConnectorLenght write FConnectorLenght;
  property Massi: String read FMassi write FMassi;
  property MassC: String read FMassConnector write FMassConnector;
  property Mass2t: String read FMass2Thickening write FMass2Thickening;
  property NumberOfElements: Integer read FNumberOfElements write FNumberOfElements;
  property Dn: String read FDn write FDn;
  property Dv: String read FDv write FDv;
  property SectionIndex: String read FSectionIndex write FSectionIndex;


  procedure InputData ( Ls, Lp: Real; Np, Mi, Mc, M2t, Lc, Dne, Dve,
   IndexE : String); //������ ������ ��� �������
  procedure Elements9; // ���������� ���������� ��������� � ������ ������ ��������� �������
  procedure ExportElements; // ���������� �������������� ���������� � ������� ������ TStringGrid
  procedure NameElement9;  // ����������� �������� ����� ������ ����� ��������
  procedure ConversionElemets;  // ������� ������ ������� ������

  constructor Create;
 end;

implementation

// �������� ������ TConversionElements
// ����� ����������� ������ �� ������ ��������� ������� � ������ ���������
// �������� � ������ ������ 120 ������
// ���������� 10 ���� (���������) �� 12 ������.
// ������� ������ ������������ � ������� StringGrid ����� TableOfElements  (�������� � ��������� ��������)
// ����� � �������������� �������������� � Memo1


{ TConversionElements }

 uses TableOfElements;

procedure TConversionElements.ConversionElemets;
begin
   // ����������� ��� ��������
   NameElement9;
   // ���������� ��������������
   Elements9;
   // ������������ ������
   ExportElements;
end;

constructor TConversionElements.Create;
  // �����������
begin

end;

procedure TConversionElements.Elements9;
begin
   // ���������� ���������� ��������� � ������ ������ ��������� �������
   NumberOfElements:=Round(LenghtS/LenghtP);
   // �����: ������� ��������� ���������� � ������ ������
   FTableOfElements.Memo1.Lines.Add(' '+ NameElement +' '+ IntToStr(NumberOfElements)+' ��.');

end;

procedure TConversionElements.ExportElements;
// ���������� �������������� ���������� � ������� StringGrid
// ����������� ���������� ����� � ������� �������� �� ���������� ���������
 var i, RowBegin, RowEnd: Integer;
begin
  // ������ � ������� �������� �������
  RowBegin:= FTableOfElements.SGElements.RowCount;
  // ������ �� ������� ����������� �������
  RowEnd:= FTableOfElements.SGElements.RowCount+ NumberOfElements;
  // ����� ���������� ����� � �������
  FTableOfElements.SGElements.RowCount:= FTableOfElements.SGElements.RowCount+ NumberOfElements;

  for i := RowBegin to RowEnd do
   begin
     FTableOfElements.SGElements.Cells[0,i]:=IntToStr(i);
     FTableOfElements.SGElements.Cells[1,i]:= NameElement;
     FTableOfElements.SGElements.Cells[2,i]:= LenghtC;
     FTableOfElements.SGElements.Cells[3,i]:= Massi;
     FTableOfElements.SGElements.Cells[4,i]:= MassC;
     FTableOfElements.SGElements.Cells[5,i]:= Mass2t;
     FTableOfElements.SGElements.Cells[6,i]:= FloatToStr(LenghtP);
     FTableOfElements.SGElements.Cells[9,i]:= Dn;
     FTableOfElements.SGElements.Cells[10,i]:= Dv;
     FTableOfElements.SGElements.Cells[13,i]:= SectionIndex;
   end;

end;

procedure TConversionElements.InputData(Ls, Lp: Real; Np, Mi, Mc, M2t, Lc, Dne,
  Dve, IndexE : String);
// ������ ������ ��� ������� (��������������)
begin
  NameSection:=Np;
  Massi:=Mi;
  MassC:=Mc;
  Mass2T:=M2t;
  LenghtS:=Ls;
  LenghtP:=Lp;
  LenghtC:=Lc;
  Dn:=Dne;
  Dv:=Dve;
  SectionIndex:= IndexE;
end;

procedure TConversionElements.NameElement9;
 // ����������� �������� ����� ������ ����� ��������
begin
  NameElement:= NameSection;
end;


end.
