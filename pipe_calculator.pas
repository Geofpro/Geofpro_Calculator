unit pipe_calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TFcalculator3i = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel3: TPanel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    EGridRows: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    N1: TMenuItem;
    Ekg: TEdit;
    Etonne: TEdit;
    EkN: TEdit;
    Button1: TButton;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    PopupActionBar1: TPopupActionBar;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Label1: TLabel;
    ELdrill: TEdit;
    Image10: TImage;
    SG1Row: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure StringGrid1RowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure �heckingvalue ;  // �������� ���������� ����� �������
    procedure SG2clear;  // ������� ������ ��������� ��������
    procedure SG1addRow; // �������� ������
    procedure SG1delRow; // ������� ������
    procedure ClassPipeWeightT; // ������ ����� � ����
    procedure InsertRow; //�������� ������ ���� �������
    procedure DelCurrentRow; // ������� ������� ������
    procedure ClearRow; // �������� ������� ������
    procedure ClearTable; // �������� ��� �������
    procedure ClearColor; // ������� ������� ���������
    procedure SumLeght; // ������� �������� �� �����������
    procedure ConvertKG; //��������� �� � �����
    procedure SumWeight; //����� ����� � ����
  end;

var
  Fcalculator3i: TFcalculator3i;

implementation

{$R *.dfm}

 // ������ ���������� ��������
 // StringGrid1 - ������� ����� ������ ��� �������
 // Edit1 � Edit2 �������� ����� ������� � ������ ������ StringGrid1 � �������� ��������� �������
 // EGridRows - �������� ���������� ����� � ������� StringGrid1
 // SG1Row - ������� ������ ������� StringGrid1

uses pcmenu, referen�e, Diagram, ProjectionEXL, TableOfElements, Reports;

procedure TFcalculator3i.Button1Click(Sender: TObject);
begin
    �heckingvalue;
end;

procedure TFcalculator3i.ClassPipeWeightT;

begin


end;

procedure TFcalculator3i.ClearColor;
// ������� ������� ��������� � ������� StringGrid1
begin
  Edit1.Text:='0';
  Edit2.Text:='0';
  StringGrid1.Refresh;
end;

procedure TFcalculator3i.ClearRow;
 // �������� ������� ������
 var ncol: Integer;   // ����� �������
 nrow : Integer;   // ����� ������� ������
begin
  //������� ��������� ��������
   SG2clear;

 nrow:=StrToInt(SG1Row.Text);
  for ncol := 1 to 15 do
  begin
   StringGrid1.Cells[ncol,nrow]:= '';
  end;
end;

procedure TFcalculator3i.ClearTable;
// ������� ��� ������ ������� StringGrid1
 var nrows : Integer;   // ����� ������� ������, ���������� ����� � �������
 ncol: Integer;   // ����� �������
 i: Integer;
begin
 nrows:=StrToInt(EGridRows.Text);
 for ncol := 1 to 15 do
 begin
   for i := 1 to nrows do
   begin
     StringGrid1.Cells[ncol,i]:='';
   end;
 end;
end;

procedure TFcalculator3i.ConvertKG;
// ��������� ���������� ������� ����� �� �� � �����
 var i : Integer;
begin
  for i := 1 to StringGrid1.RowCount-1 do
  begin
   StringGrid1.Cells[14, i]:= FloatToStr(StrToFloat(StringGrid1.Cells[13, i])/1000);
  end;
end;

procedure TFcalculator3i.DelCurrentRow;
 //������� ������� ������ �� ������� StringGrid1
   var i : Integer;
 nrow, nrows : Integer;   // ����� ������� ������, ���������� ����� � �������
 ncol: Integer;   // ����� �������
begin
   //������� ��������� ��������
   SG2clear;

  nrows:=StrToInt(EGridRows.Text);
  if nrows>1 then
 begin
    for ncol := 1 to 15 do
   begin
      nrow:=StrToInt(SG1Row.Text);
      for i := nrow to nrows do
      begin
       StringGrid1.Cells[ncol,nrow]:= StringGrid1.Cells[ncol,nrow+1];
       nrow:=nrow+1;
     end;
    StringGrid1.Cells[ncol,nrows]:='';
   end;

   EGridRows.Text:=IntToStr(StrToInt(EGridRows.Text)-1);
   StringGrid1.RowCount:=StrToInt(EGridRows.Text);
  //StringGrid1.Cells[0,StrToInt(EGridRows.Text)-1]:=IntToStr(StrToInt(EGridRows.Text)-1);
  end;
 end;

procedure TFcalculator3i.FormActivate(Sender: TObject);
begin
  Fpcmenu.Close;
end;

procedure TFcalculator3i.FormCreate(Sender: TObject);
begin
 // �������� ������� StringGrid1
  StringGrid1.ColWidths[0] := 40;
  StringGrid1.ColWidths[1] := 170;
  StringGrid1.ColWidths[2] := 65;
  StringGrid1.ColWidths[3] := 65;
  StringGrid1.ColWidths[4] := 65;
  StringGrid1.ColWidths[5] := 65;
  StringGrid1.ColWidths[6] := 65;
  StringGrid1.ColWidths[7] := 70;
  StringGrid1.ColWidths[8] := 65;
  StringGrid1.ColWidths[9] := 65;
  StringGrid1.ColWidths[10] := 95;
  StringGrid1.ColWidths[11] := 95;
  StringGrid1.ColWidths[12] := 110;
  StringGrid1.ColWidths[13] := 110;
  StringGrid1.ColWidths[14] := 100;
  StringGrid1.ColWidths[15] := 100;
  StringGrid1.ColWidths[16] := -1;

  StringGrid1.Cells[0,0]:='�';
  StringGrid1.Cells[1,0]:='������������';
  StringGrid1.Cells[2,0]:='D �, ��';
  StringGrid1.Cells[3,0]:='D ��, ��';
  StringGrid1.Cells[4,0]:='D max, ��';
  StringGrid1.Cells[5,0]:='D ��, ��';
  StringGrid1.Cells[6,0]:='D ��, ��';
  StringGrid1.Cells[7,0]:='����� �, ��';
  StringGrid1.Cells[8,0]:='����� i,��';
  StringGrid1.Cells[9,0]:='����� �,��';
  StringGrid1.Cells[10,0]:='����� 2�,��';
  StringGrid1.Cells[11,0]:='����� ������, �';
  StringGrid1.Cells[12,0]:='����� ��������, �';
  StringGrid1.Cells[13,0]:='�����, ��';
  StringGrid1.Cells[14,0]:='�����, �';
  StringGrid1.Cells[15,0]:='���, ��';
  StringGrid1.Cells[16,0]:='������';

  StringGrid1.Cells[0,1]:='1';
  StringGrid1.Cells[0,2]:='2';
  StringGrid1.Cells[0,3]:='3';
  StringGrid1.Cells[0,4]:='4';
  StringGrid1.Cells[0,5]:='5';

  // ��������� ������ � �������� ����������
  Panel1.Height:=22;
  Image1.Visible:=False;
  Image2.Visible:=True;
end;

procedure TFcalculator3i.Image10Click(Sender: TObject);
begin
  FrmProjectionEXL.Show;
end;

procedure TFcalculator3i.Image1Click(Sender: TObject);
begin
 Panel1.Height:=22;
 Image1.Visible:=False;
 Image2.Visible:=True;
end;

procedure TFcalculator3i.Image2Click(Sender: TObject);
begin
 Panel1.Height:=150;
 Image2.Visible:=False;
 Image1.Visible:=True;
end;

procedure TFcalculator3i.Image3Click(Sender: TObject);
begin
  ClearColor;
  SG1addRow;
  SG2clear;
end;

procedure TFcalculator3i.Image4Click(Sender: TObject);
begin
  ClearColor;
  SG1delRow;
  SG2clear;
end;

procedure TFcalculator3i.Image6Click(Sender: TObject);
begin
  FrReports.Show;
end;

procedure TFcalculator3i.Image7Click(Sender: TObject);
begin
 Freference.Show;
end;

procedure TFcalculator3i.Image8Click(Sender: TObject);
begin
  FrmDiagram.Show;
end;

procedure TFcalculator3i.Image9Click(Sender: TObject);
begin
 ClearColor;
 ClearTable;
end;

procedure TFcalculator3i.InsertRow;
 // �������� ������ ���� ������� � ������� StringGrid1
 var i : Integer;
 nrow, nrows : Integer;   // ����� ������� ������, ���������� ����� � �������
 ncol: Integer;   // ����� �������
begin
 //������� ��������� ��������
 SG2clear;

 EGridRows.Text:=IntToStr(StrToInt(EGridRows.Text)+1);
 StringGrid1.RowCount:=StrToInt(EGridRows.Text);
 StringGrid1.Cells[0,StrToInt(EGridRows.Text)-1]:=IntToStr(StrToInt(EGridRows.Text)-1);

 nrow:=StrToInt(SG1Row.Text);

 for ncol := 1 to 15 do
 begin
  nrows:=StrToInt(EGridRows.Text);
  for i := nrow+1 to nrows do
   begin
    StringGrid1.Cells[ncol,nrows]:= StringGrid1.Cells[ncol,nrows-1];
    nrows:=nrows-1;
   end;
   StringGrid1.Cells[ncol,nrow+1]:='';
 end;
end;

procedure TFcalculator3i.N1Click(Sender: TObject);
begin
  Fpcmenu.Show;
end;

procedure TFcalculator3i.N2Click(Sender: TObject);
begin
 ClearColor;
 InsertRow;
end;

procedure TFcalculator3i.N3Click(Sender: TObject);
begin
 ClearColor;
 DelCurrentRow;
end;

procedure TFcalculator3i.N4Click(Sender: TObject);
begin
 ClearColor;
 ClearTable;
end;

procedure TFcalculator3i.N5Click(Sender: TObject);
begin
 ClearColor;
 ClearRow;
end;

procedure TFcalculator3i.SG1addRow;
begin
   EGridRows.Text:=IntToStr(StrToInt(EGridRows.Text)+1);
   StringGrid1.RowCount:=StrToInt(EGridRows.Text);
   StringGrid1.Cells[0,StrToInt(EGridRows.Text)-1]:=IntToStr(StrToInt(EGridRows.Text)-1);
end;

procedure TFcalculator3i.SG1delRow;
begin
   if StrToInt(EGridRows.Text)>2 then
   begin
    EGridRows.Text:=IntToStr(StrToInt(EGridRows.Text)-1);
    StringGrid1.RowCount:=StrToInt(EGridRows.Text);
   end;
end;

procedure TFcalculator3i.SG2clear;
  // ������� ������� � ������������ �������
  var n: String ;
       i, col, row : Integer;
begin
 //  ����� � ��� ��������� �������
   Ekg.Text:='0';
   Etonne.Text:='0';
   EkN.Text:='0';

   ELdrill.Text:='0';

   // ����� � ��� ��������� ��������� �������
   begin
       for col := 13 to 15 do
    begin
     for row := 1 to StrToInt(EGridRows.Text)-1 do
     begin
       StringGrid1.Cells[col, row]:='';
     end;
    end;
   end;

end;

procedure TFcalculator3i.StringGrid1Click(Sender: TObject);
 // ����������� SG1Row �������� ������ ������� ������
begin
  SG1Row.Text:=IntToStr(StringGrid1.Row);
end;

procedure TFcalculator3i.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
    const //����� ���������� ��� ����. ��� �� ����� ������������ ����� �� ���������.
  clBlue11 = TColor($00F2BB60);
  clRed2 = TColor($00A6B0F9);
  clYellow = TColor($0080F7F3);
   var n: String ;
       i, col, row : Integer;
begin
   if ((ACol = 13) or (ACol = 14) or (ACol = 15)) and (ARow>0)  then
    begin
    StringGrid1.Canvas.Brush.Color := clBlue11;
    //StringGrid3.Canvas.Font.Color := clWhite;
    stringGrid1.Canvas.FillRect(rect);
    stringGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, stringGrid1.Cells[ACol, ARow]);
    end;

    // ������������ ������ � ���������� �������
    // Edit1 � Edit2 ����� ������� � ������ ������ � �������� ��������� �������
  if Edit1.Text<>'0' then
  begin
   if (ACol = StrToInt(Edit1.Text)) and (ARow = StrToInt(Edit2.Text))  then
     begin
        StringGrid1.Canvas.Brush.Color := clRed;
        StringGrid1.Canvas.FillRect(rect);
        StringGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, stringGrid1.Cells[ACol, ARow]);
     end;
  end;

end;

procedure TFcalculator3i.StringGrid1RowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
  // ������������� ��������� ����� ������� StringGrid1
  var i, nrow : integer;
begin
 nrow:= StrToInt(EGridRows.Text);
   for i := 1 to nrow-1 do
   begin
     StringGrid1.Cells[0,i]:=IntToStr(i);
   end;
end;

procedure TFcalculator3i.SumLeght;
 var i: Integer;
begin
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    ELdrill.Text:=FloatToStr(StrToFloat(ELdrill.Text)+StrToFloat(StringGrid1.Cells[11,i]));
  end;

end;

procedure TFcalculator3i.SumWeight;
 // ��������� ��������� ����� (��, �����) � ��� (��)
 var i : Integer;
begin
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    // �����, ��
    Ekg.Text:=FloatToStr(StrToFloat(StringGrid1.Cells[13, i])+StrToFloat(Ekg.Text));
    // �����, �����
    Etonne.Text:=FloatToStrF(StrToFloat(StringGrid1.Cells[14, i])+StrToFloat(Etonne.Text), ffFixed,10,2);
    // ���, ��
    EkN.Text:=FloatToStr(StrToFloat(StringGrid1.Cells[15, i])+StrToFloat(EkN.Text));
  end;
end;

procedure TFcalculator3i.�heckingvalue;
  //��������� ������������ ����� ������
   var n: String ;
       i, col, row : Integer;
  begin
   for col := 2 to 12 do
   begin
       for row := 1 to StrToInt(EGridRows.Text)-1 do
         begin
         n:=StringGrid1.Cells[col, row];
         // ��������� ������� ������ �����
         if n='' then
         begin
          ShowMessage('� �������� ������� D �, �� ... ����� �����, � �� ����������� ������� ������ �����.');
          SG2clear;
          Edit1.Text:=IntToStr(col);
          Edit2.Text:=IntToStr(row);
          StringGrid1.Refresh;
          Exit
         end;
          for i := 1 to length(StringGrid1.Cells[col, row]) do
         begin
         // ��������� ���������� ������ � ��������� �������
           if not (n[i] in ['0'..'9',',','.']) then
           begin
            ShowMessage('� �������� ������� D �, �� ... ����� �����, � ������ ���� ������ �����.');
            SG2clear;
            Edit1.Text:=IntToStr(col);
            Edit2.Text:=IntToStr(row);
            StringGrid1.Refresh;
            Exit
           end;
           end;

       end;
   end;



      //�������� ������������� �������� ����������� � ��������
   if Fpcmenu.CheckBit.Checked=True then
   begin

     //��������� ���������� Edit
     if Fpcmenu.Ebit.Text='' then
    begin
     ShowMessage('�� ������ ������� ������');
     Fpcmenu.CheckBit.Checked:=False;
     Exit
    end;

     if Fpcmenu.Eminpipe.Text='' then
     begin
     ShowMessage('�� ������ ���������� ������� �������� �������');
     Fpcmenu.CheckBit.Checked:=False;
     Exit
    end;

     if Fpcmenu.Erad.Text='' then
     begin
      ShowMessage('�� ������ ����������� �����');
      Fpcmenu.CheckBit.Checked:=False;
      Exit
    end;

     for i := 1 to length(Fpcmenu.Ebit.Text) do
      begin
       if not (Fpcmenu.Ebit.Text[i] in ['0'..'9',',','.']) then
      begin
       ShowMessage('�� ���������� �������� �������� ������');
       Fpcmenu.CheckBit.Checked:=False;
       Exit
      end;
     end;

     for i := 1 to length(Fpcmenu.Erad.Text) do
      begin
       if not (Fpcmenu.Erad.Text[i] in ['0'..'9',',','.']) then
      begin
       ShowMessage('�� ���������� �������� ����������� ������');
       Fpcmenu.CheckBit.Checked:=False;
       Exit
      end;
     end;

     // ������� ������������� ������ � �������� �������
    if (StrToFloat(Fpcmenu.Ebit.Text)+StrToFloat(Fpcmenu.Erad.Text))>StrToFloat(Fpcmenu.Eminpipe.Text) then
    begin
     ShowMessage('������ �� ����������� � �������� �������');
     SG2clear;
     Exit
    end;

     //�������� ������������� �������� ����������� � ��������
       for col := 2 to 6 do
    begin
     for row := 1 to StrToInt(EGridRows.Text)-1 do
     begin
       n:=StringGrid1.Cells[col, row];
       if StrToFloat(Fpcmenu.Ebit.Text)<(StrToFloat(n)+StrToFloat(Fpcmenu.Erad.Text)) then
       begin
        ShowMessage('���������� �� ����������� � ��������');
        SG2clear;
        Edit1.Text:=IntToStr(col);
        Edit2.Text:=IntToStr(row);
        StringGrid1.Refresh;
        Exit
       end;
     end;
    end;
   end;

   // ��� ������� ������ ��������
   Edit1.Text:='0';  // ������ ������ � �������
   Edit2.Text:='0';  // ������ ������� � �������
   StringGrid1.Refresh;
   // �������� ��������� ��������
   SG2clear;
   // �������� ������ ����� � ����
   FTableOfElements.CalculateWeight;

 end;

end.
