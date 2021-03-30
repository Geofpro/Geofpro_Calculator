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
    EGridRow: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure �heckingvalue ;
    procedure SG2clear;
  end;

var
  Fcalculator3i: TFcalculator3i;

implementation

{$R *.dfm}

uses pcmenu, referen�e;

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
  StringGrid1.ColWidths[2] := 75;
  StringGrid1.ColWidths[3] := 75;
  StringGrid1.ColWidths[4] := 75;
  StringGrid1.ColWidths[5] := 75;
  StringGrid1.ColWidths[6] := 75;
  StringGrid1.ColWidths[7] := 75;
  StringGrid1.ColWidths[8] := 75;
  StringGrid1.ColWidths[9] := 75;
  StringGrid1.ColWidths[10] := 95;
  StringGrid1.ColWidths[11] := 95;
  StringGrid1.ColWidths[12] := 100;
  StringGrid1.ColWidths[13] := 100;
  StringGrid1.ColWidths[14] := 100;

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
  StringGrid1.Cells[10,0]:='����� ������, �';
  StringGrid1.Cells[11,0]:='����� �����, �';
  StringGrid1.Cells[12,0]:='�����, ��';
  StringGrid1.Cells[13,0]:='�����, �';
  StringGrid1.Cells[14,0]:='���, ��';

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
 Panel1.Height:=150;
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

procedure TFcalculator3i.Image7Click(Sender: TObject);
begin
 Freference.Show;
end;

procedure TFcalculator3i.N1Click(Sender: TObject);
begin
  Fpcmenu.Show;
end;

procedure TFcalculator3i.SG2clear;
  // ������� ������� � ������������ �������
  var n: String ;
       i, col, row : Integer;
begin
   Ekg.Text:='';
   Etonne.Text:='';
   EkN.Text:='';

   begin
       for col := 11 to 13 do
    begin
     for row := 1 to StrToInt(EGridRow.Text)-1 do
     begin
       StringGrid1.Cells[col, row]:='';
     end;
    end;
   end;

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
   if ((ACol = 12) or (ACol = 13) or (ACol = 14)) and (ARow>0)  then
    begin
    StringGrid1.Canvas.Brush.Color := clBlue11;
    //StringGrid3.Canvas.Font.Color := clWhite;
    stringGrid1.Canvas.FillRect(rect);
    stringGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, stringGrid1.Cells[ACol, ARow]);
    end;

    // ������������ ������ � ���������� �������
    // Edit1 � Edit2 ����� ������� � ������
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

procedure TFcalculator3i.�heckingvalue;
  //��������� ������������ ����� ������
   var n: String ;
       i, col, row : Integer;
  begin
   for col := 2 to 11 do
   begin
       for row := 1 to StrToInt(EGridRow.Text)-1 do
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
     for row := 1 to StrToInt(EGridRow.Text)-1 do
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

   //���� ��� ������� ������ �������� ������ ������� � ������ ��������� 0
   Edit1.Text:='0';
   Edit2.Text:='0';
   StringGrid1.Refresh;
 end;

end.
