unit pcmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.Grids;

type
  TFpcmenu = class(TForm)
    Panel1: TPanel;
    Popen: TPanel;
    Psave: TPanel;
    Pperson: TPanel;
    Pbit: TPanel;
    Pmud: TPanel;
    Panel2: TPanel;
    Pminimaized: TPanel;
    PageControl1: TPageControl;
    TabBit: TTabSheet;
    TabMud: TTabSheet;
    Label1: TLabel;
    Ebit: TEdit;
    Label2: TLabel;
    CheckBit: TCheckBox;
    Eminpipe: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Erad: TEdit;
    TabSave: TTabSheet;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MemoSave: TMemo;
    Pexit: TPanel;
    Memo1: TMemo;
    TabMenu: TTabSheet;
    Pmenu: TPanel;
    Pelements: TPanel;
    Memo2: TMemo;
    CheckMud: TCheckBox;
    SGFactors: TStringGrid;
    procedure LcloseClick(Sender: TObject);
    procedure PpersonClick(Sender: TObject);
    procedure PpersonMouseLeave(Sender: TObject);
    procedure PpersonMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PopenMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PopenMouseLeave(Sender: TObject);
    procedure PminimaizedClick(Sender: TObject);
    procedure PminimaizedMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PminimaizedMouseLeave(Sender: TObject);
    procedure PsaveMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PsaveMouseLeave(Sender: TObject);
    procedure PbitMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PbitMouseLeave(Sender: TObject);
    procedure PmudMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PmudMouseLeave(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PbitClick(Sender: TObject);
    procedure PmudClick(Sender: TObject);
    procedure PopenClick(Sender: TObject);
    procedure PsaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PexitClick(Sender: TObject);
    procedure PmenuClick(Sender: TObject);
    procedure PmenuMouseLeave(Sender: TObject);
    procedure PmenuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PexitMouseLeave(Sender: TObject);
    procedure PexitMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PelementsClick(Sender: TObject);
    procedure PelementsMouseLeave(Sender: TObject);
    procedure PelementsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Fpcmenu: TFpcmenu;

implementation

{$R *.dfm}

uses geofpro, user_person, pipe_calculator, referen�e, TableOfElements;

procedure TFpcmenu.FormActivate(Sender: TObject);
begin
  //TabBit.Visible:=False;
  //TabMud.Visible:=False;
end;

procedure TFpcmenu.FormCreate(Sender: TObject);
begin
  TabBit.Tabvisible:=False;
  TabMud.Tabvisible:=False;
  TabSave.Tabvisible:=False;
  TabMenu.TabVisible:=False;
  TabMenu.Visible:=True;

  SGFactors.ColWidths[0] := 300;
  SGFactors.ColWidths[1] := 130;

  SGFactors.Cells[0,0]:='������������ �������';
  SGFactors.Cells[1,0]:='��������';

  SGFactors.Cells[0,1]:='��������� �������� ��������, ��/� ���';
  SGFactors.Cells[0,2]:='Kfr';
  SGFactors.Cells[0,3]:='Ki';
  SGFactors.Cells[0,4]:='Kb';
  // �������� �������������
  SGFactors.Cells[1,1]:='1240';
  SGFactors.Cells[1,2]:='0,15';
  SGFactors.Cells[1,3]:='1,1';
  SGFactors.Cells[1,4]:='1,1';

end;

procedure TFpcmenu.LcloseClick(Sender: TObject);
begin
  Geofpro3i.Close;
end;

procedure TFpcmenu.PexitClick(Sender: TObject);
begin
    Geofpro3i.Close;
end;

procedure TFpcmenu.PexitMouseLeave(Sender: TObject);
begin
  Pexit.Color:=$00A28A2D;
end;

procedure TFpcmenu.PexitMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Pexit.Color:=$00736220;
end;

procedure TFpcmenu.PmenuClick(Sender: TObject);
begin
  TabMud.Visible:=False;
  TabBit.Visible:=False;
  TabMenu.Visible:=True;
end;

procedure TFpcmenu.PmenuMouseLeave(Sender: TObject);
begin
 Pmenu.Color:=$00A28A2D;
end;

procedure TFpcmenu.PmenuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Pmenu.Color:=$00736220;
end;

procedure TFpcmenu.PelementsClick(Sender: TObject);
begin
 FTableOfElements.Show;
end;

procedure TFpcmenu.PelementsMouseLeave(Sender: TObject);
begin
  Pelements.Color:=$00A28A2D;
end;

procedure TFpcmenu.PelementsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Pelements.Color:=$00736220;
end;

procedure TFpcmenu.PbitClick(Sender: TObject);
begin
 TabBit.Visible:=True;
 TabMud.Visible:=False;
 TabMenu.Visible:=False;
end;

procedure TFpcmenu.PbitMouseLeave(Sender: TObject);
begin
  Pbit.Color:=$00A28A2D;
end;

procedure TFpcmenu.PbitMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Pbit.Color:=$00736220;
end;

procedure TFpcmenu.PminimaizedClick(Sender: TObject);
begin
  Fpcmenu.Close;
end;

procedure TFpcmenu.PminimaizedMouseLeave(Sender: TObject);
begin
  Pminimaized.Color:=$00A28A2D;
end;

procedure TFpcmenu.PminimaizedMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Pminimaized.Color:=$00736220;
end;

procedure TFpcmenu.PmudClick(Sender: TObject);
begin
  TabMud.Visible:=True;
  TabBit.Visible:=False;
  TabMenu.Visible:=False;
end;

procedure TFpcmenu.PmudMouseLeave(Sender: TObject);
begin
 Pmud.Color:=$00A28A2D;
end;

procedure TFpcmenu.PmudMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Pmud.Color:=$00736220;
end;

procedure TFpcmenu.PopenClick(Sender: TObject);
 var cols, rows, i : Integer;
begin
 with OpenDialog1, MemoSave do
  if OpenDialog1.Execute then
  begin
    Lines.LoadFromFile(FileName);
    Fcalculator3i.Caption:= 'GEOFPRO - ������ ���� ��������� ���� - '+ FileName;
    Fcalculator3i.EGridRows.Text := MemoSave.Lines[29];//���-�� ����� StringGrid1
    Fcalculator3i.StringGrid1.RowCount:=StrToInt(Fcalculator3i.EGridRows.Text);
     i:=0;
         for cols := 0 to 12 do
          begin
             for rows := 1 to StrToInt(Fcalculator3i.EGridRows.Text) do
             begin
              Fcalculator3i.StringGrid1.Cells[cols,rows]:= MemoSave.Lines[30+i];
              i:=i+1;
            end;
         end;
  end;

  // ��������� ������� ����� ������
  Fcalculator3i.ClearColor;
end;

procedure TFpcmenu.PopenMouseLeave(Sender: TObject);
begin
 Popen.Color:=$00A28A2D;
end;

procedure TFpcmenu.PopenMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Popen.Color:=$00736220;
end;

procedure TFpcmenu.PpersonClick(Sender: TObject);
begin
  FUser_person.Show;
end;

procedure TFpcmenu.PpersonMouseLeave(Sender: TObject);
begin
  Pperson.Color:= $00A28A2D;
end;

procedure TFpcmenu.PpersonMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Pperson.Color:=$00736220;
end;

procedure TFpcmenu.PsaveClick(Sender: TObject);
  var cols, rows, i : Integer;
begin
   // ������������� ���������� ����� � Memo
   for i := 0 to (StrToInt(Fcalculator3i.EGridRows.Text)*10)+30 do
       begin
         MemoSave.Lines.Add('') ;
       end;

 with SaveDialog1, MemoSave do
  if SaveDialog1.Execute then
   begin

     MemoSave.Lines[29] := Fcalculator3i.EGridRows.Text;
     i:=0;
       for cols := 0 to 12 do
          begin
             for rows := 1 to StrToInt(Fcalculator3i.EGridRows.Text) do
             begin
             MemoSave.Lines[30+i]:=Fcalculator3i.StringGrid1.Cells[cols,rows];
             i:=i+1;
            end;
         end;

    Lines.SaveToFile(FileName);
    OpenDialog1.FileName := FileName;//����� ������������ ����� �� ���� ��������
   end;
end;

procedure TFpcmenu.PsaveMouseLeave(Sender: TObject);
begin
  Psave.Color:= $00A28A2D;
end;

procedure TFpcmenu.PsaveMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Psave.Color:=$00736220;
end;



end.
