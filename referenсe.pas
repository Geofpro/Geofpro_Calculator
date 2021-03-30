unit referen�e;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TFreference = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    Button1: TButton;
    ESG1col: TEdit;
    ESG1row: TEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freference: TFreference;

implementation

{$R *.dfm}

 uses DataModule, pipe_calculator;



procedure TFreference.Button1Click(Sender: TObject);
// ��������� ������� �������
  var Sc, Sr : Integer;
begin
 Sc:=StrToInt(ESG1col.Text);
 Sr:=StrToInt(ESG1row.Text);
  if (ComboBox1.ItemIndex=0) and ((Sc=1) or (Sc=2) or (Sc=3))  then
  // ���� ��������� �����
  begin
    // ���� �����
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid1.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid1.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid1.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid1.DataSource.DataSet.Fields[10].AsString;
  end;

  if (ComboBox1.ItemIndex=1) and ((Sc=4) or (Sc=5) or (Sc=6))  then
  begin
    // �����
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid2.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid2.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid2.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= DbGrid2.DataSource.DataSet.Fields[6].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= DbGrid2.DataSource.DataSet.Fields[5].AsString;
  end;

   if ComboBox1.ItemIndex=2  then
  begin
    // ���
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid3.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid3.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid3.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid3.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid3.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid3.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=3  then
  begin
    // ������� ����������
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid4.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid4.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid4.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid4.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid4.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid4.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
  end;

  if ComboBox1.ItemIndex=4  then
  begin
    // ���
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid5.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid5.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid5.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= FloatToStr(StrToFloat(DbGrid5.DataSource.DataSet.Fields[4].AsString)/1000);
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid5.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=5  then
  begin
    // ����� ���������
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid6.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid6.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid6.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid6.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid6.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=6  then
  begin
    // ���
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid7.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid7.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid7.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid7.DataSource.DataSet.Fields[9].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid7.DataSource.DataSet.Fields[9].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid7.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= DbGrid7.DataSource.DataSet.Fields[10].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid7.DataSource.DataSet.Fields[7].AsString;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= DbGrid7.DataSource.DataSet.Fields[11].AsString;
  end;

  if ComboBox1.ItemIndex=7  then
  begin
    // �������� �����
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid8.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid8.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid8.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid8.DataSource.DataSet.Fields[5].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid8.DataSource.DataSet.Fields[5].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid8.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= FloatToStrF(StrToFloat(DbGrid8.DataSource.DataSet.Fields[6].AsString)/9.81*1000,ffFixed,10,2);
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
  end;



end;

procedure TFreference.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  // ��������� �����
  begin
  TabSheet1.Visible:=True;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;

   if ComboBox1.ItemIndex=1 then
   // ����� ��������� ����
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=True;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;

     if ComboBox1.ItemIndex=2 then
     //���
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=True;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;

     if ComboBox1.ItemIndex=3 then
    // ������� ����������
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=True;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;

     if ComboBox1.ItemIndex=4 then
     // ���
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=True;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;


     if ComboBox1.ItemIndex=5 then
     //����� ���������
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=True;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  end;

     if ComboBox1.ItemIndex=6 then
     // ���
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=True;
  TabSheet8.Visible:=False;
  end;

     if ComboBox1.ItemIndex=7 then
     // �������� �����
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=True;
  end;

end;

procedure TFreference.FormActivate(Sender: TObject);
begin
  ESG1col.Text:= IntToStr(Fcalculator3i.StringGrid1.Col);
  ESG1row.Text:= IntToStr(Fcalculator3i.StringGrid1.Row);
end;

procedure TFreference.FormCreate(Sender: TObject);
begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
end;

end.
