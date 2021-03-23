unit pcmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFpcmenu = class(TForm)
    Panel1: TPanel;
    Lclose: TLabel;
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
    Label3: TLabel;
    Label4: TLabel;
    Emud: TEdit;
    CheckMud: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Erad: TEdit;
    TabSave: TTabSheet;
    MemoSave: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
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
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Fpcmenu: TFpcmenu;

implementation

{$R *.dfm}

uses geofpro, user_person, pipe_calculator;

procedure TFpcmenu.FormActivate(Sender: TObject);
begin
  TabBit.Visible:=False;
  TabMud.Visible:=False;
end;

procedure TFpcmenu.LcloseClick(Sender: TObject);
begin
  Geofpro3i.Close;
end;

procedure TFpcmenu.PbitClick(Sender: TObject);
begin
 TabBit.Visible:=True;
 TabMud.Visible:=False;
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
    Fcalculator3i.EGridRow.Text := MemoSave.Lines[29];//���-�� ����� StringGrid1
    Fcalculator3i.StringGrid1.RowCount:=StrToInt(Fcalculator3i.EGridRow.Text);
     i:=0;
         for cols := 0 to 10 do
          begin
             for rows := 1 to StrToInt(Fcalculator3i.EGridRow.Text) do
             begin
              Fcalculator3i.StringGrid1.Cells[cols,rows]:= MemoSave.Lines[30+i];
              i:=i+1;
            end;
         end;
  end;
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
   for i := 0 to (StrToInt(Fcalculator3i.EGridRow.Text)*10)+30 do
       begin
         MemoSave.Lines.Add('') ;
       end;

 with SaveDialog1, MemoSave do
  if SaveDialog1.Execute then
   begin

     MemoSave.Lines[29] := Fcalculator3i.EGridRow.Text;
     i:=0;
       for cols := 0 to 10 do
          begin
             for rows := 1 to StrToInt(Fcalculator3i.EGridRow.Text) do
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
