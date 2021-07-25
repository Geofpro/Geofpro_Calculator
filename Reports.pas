unit Reports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass, Vcl.ExtCtrls, ReportsAllDate,
  frxDBSet, Vcl.Imaging.pngimage, frxExportPDF;

type
  TFrReports = class(TForm)
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    frxDBDataset2: TfrxDBDataset;
    Button6: TButton;
    frxPDFExport1: TfrxPDFExport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure CreateTablePipeSection;
  procedure ImportDatePipeSection;
  procedure DropTablePipeSection;
  procedure ImportDateTitle;
  procedure ReportPicture;

  end;

var
  FrReports: TFrReports;
  ReportFrame : TFrame;

implementation

{$R *.dfm}

 uses DataModule, ProjectionEXL, formdate, Diagram;

procedure TFrReports.Button1Click(Sender: TObject);
begin
 DataModule1.FDQueryPipeCalculator.Refresh;
 DataModule1.FDQueryPersonDate.Refresh;
 DataModule1.FDQueryPersonDate.Last;
 frxReport1.Variables.Variables['projection_pic']:=#39+GetCurrentDir +'\ReportPicture\ProjectionWell.png'+#39;
 frxReport1.Variables.Variables['diagram_pic']:=#39+GetCurrentDir +'\ReportPicture\DiagramWeight.png'+#39;
 frxReport1.ShowReport;
end;

procedure TFrReports.Button2Click(Sender: TObject);
begin
  ReportFrame.Free;
  ReportFrame:=TFrReportsAllDate.Create(self);
  ReportFrame.parent := ScrollBox1;
  // �������� ��������� ������
  TFrReportsAllDate(ReportFrame).ImportDate;
  TFrReportsAllDate(ReportFrame).GhartVert;
  TFrReportsAllDate(ReportFrame).DiagramWeight;
end;

procedure TFrReports.Button3Click(Sender: TObject);
begin
  CreateTablePipeSection;
  // ������ �������� DateSet
  DataModule1.FDQueryPipeCalculator.Active:=True;
  DataModule1.FDQueryPersonDate.Active:=True;
end;

procedure TFrReports.Button4Click(Sender: TObject);
begin

  DataModule1.FDQueryPersonDate.Active:=False;
  DataModule1.FDQueryPipeCalculator.Active:=False;
  //frxDBDataset1.Close;
  //frxDBDataset2.Close;
  DataModule1.FDConnectionReport.Connected:=False;
  DataModule1.FDConnectionReport.Connected:=True;
  DropTablePipeSection;

end;

procedure TFrReports.Button5Click(Sender: TObject);
begin
   ImportDatePipeSection;
   ImportDateTitle;
end;

procedure TFrReports.Button6Click(Sender: TObject);
begin
 FrmDiagram.MassDiagramm;
 ReportPicture;
end;

procedure TFrReports.CreateTablePipeSection;

begin
  DataModule1.FDQueryReport.Active := false; // ��������� ������, ���� �� ��� �������
  DataModule1.FDQueryReport.SQL.Clear; // �������� ����������� ������ �������

  DataModule1.FDQueryReport.SQL.Add('create table WeightCalc (id COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'+
  ' NamePipe char, Dn real, Dvn real, Dmax real, Dcn real, Dcvn real, LeghtConnector real, LeghtSection real,'+
  ' LeghtElement real, MassTone real, Weight real) ' );
  DataModule1.FDQueryReport.ExecSQL;
end;

procedure TFrReports.DropTablePipeSection;
begin
  // ������� �������
   DataModule1.FDQueryReport.Active := false; // ��������� ������, ���� �� ��� �������
   DataModule1.FDQueryReport.SQL.Clear; // �������� ����������� ������ �������
   DataModule1.FDQueryReport.SQL.Text :='DROP TABLE WeightCalc ';
   DataModule1.FDQueryReport.ExecSQL;
end;

procedure TFrReports.ImportDatePipeSection;
 var C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11 : String;
 i : Integer;
begin
// ��������� ������ ������� � ������� �� ������ ������� ��������� ���� ����� ������
 for i := 1 to TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.RowCount-1 do
  begin
    DataModule1.FDQueryReport.Active := false; // ��������� ������, ���� �� ��� �������
   DataModule1.FDQueryReport.SQL.Clear; // �������� ����������� ������ �������
  C1:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[1,i];
  C2:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[2,i];
  C3:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[3,i];
  C4:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[4,i];
  C5:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[5,i];
  C6:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[6,i];
  C7:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[7,i];
  C8:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[8,i];
  C9:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[9,i];
  C10:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[10,i];
  C11:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[11,i];

  DataModule1.FDQueryReport.SQL.Text :='INSERT INTO WeightCalc (NamePipe, '+
  ' Dn, Dvn, Dmax, Dcn, Dcvn, LeghtConnector, LeghtSection, LeghtElement, MassTone, Weight ) VALUES (' + QuotedStr(C1)+', '+QuotedStr(C2)+', '+
   QuotedStr(C3)+', '+QuotedStr(C4)+', '+QuotedStr(C5)+', '+
   QuotedStr(C6)+', '+QuotedStr(C7)+', '+QuotedStr(C8)+', '+
    QuotedStr(C9)+', '+QuotedStr(C10)+', '+QuotedStr(C11) +');';
  DataModule1.FDQueryReport.ExecSQL;
  end;
end;

procedure TFrReports.ImportDateTitle;
 // ��������� � ���� ������ ���������� �� ������� StringGridDate
 var Cpe, Cst, Cor, Ccl, Cof, Cwe, Ccom, Cpn, Cmd, Ckfr, Cki, Ckb, Cdb, Clp, Cmdp, Cwdp, Cdr  : String;
  Clm : TDateTime;
begin
  Cpe:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,1];
  Cst:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,2];
  Cor:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,3];
  Ccl:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,4];
  Cof:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,5];
  Cwe:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,6];
  Cdr:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,7];
  Ccom:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,8];
  Cmd:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,9];
  Ckfr:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,10];
  Cki:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,11];
  Ckb:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,12];

  Cdb:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,14];
  Clp:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,15];
  Cmdp:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,17];
  Cwdp:= TFrReportsAllDate(ReportFrame).StringGridDate.Cells[1,18];

  // ��� ����� � ��������
  Cpn:= FrmProjectionEXL.ENameFile.Text;
  // ���� ��������� ������
  Clm:=Fformdate.DateTimePicker1.Date;

  // ��������� ���������� �������������� �������
  DataModule1.FDQueryReport.SQL.Text :='INSERT INTO Title (Person, '+
  ' Staff, Organization, Client, OilField, Well, DateReport, Comments, LastModify,'+
  ' ProjectionFileName, MudDensity, kfr, Ki, Kb, DiametrBit, LengthDrillPipe, MassDrillPipe, '+
  'WeightDrillPipe ) VALUES (' + QuotedStr(Cpe)+', '+QuotedStr(Cst)+', '+
   QuotedStr(Cor)+', '+QuotedStr(Ccl)+', '+QuotedStr(Cof)+', '+
   QuotedStr(Cwe)+', '+QuotedStr(Cdr)+', ' +QuotedStr(Ccom)+', '+
   QuotedStr(DateToStr(Clm))+', '+QuotedStr(Cpn)+', '+
   QuotedStr(Cmd)+', '+QuotedStr(Ckfr)+', '+QuotedStr(Cki)+', '+
   QuotedStr(Ckb)+', '+QuotedStr(Cdb)+', '+QuotedStr(Clp)+', '+
   QuotedStr(Cmdp)+', '+QuotedStr(Cwdp)+');';
  DataModule1.FDQueryReport.ExecSQL;
end;

procedure TFrReports.ReportPicture;
 var
 bmp: TBitmap;
 png: TPNGImage;
begin
 // �������� ������� ��������
  bmp := TBitmap.Create;
  bmp.Width := FrmProjectionEXL.Chart1.Width;
  bmp.Height :=FrmProjectionEXL.Chart1.Height;
  // �������� ������
  bmp.Canvas.Lock;
  FrmProjectionEXL.Chart1.PaintTo(bmp.Canvas.Handle, 0, 0);
  bmp.Canvas.Unlock;

  // ������������ Bitmap � PNG � ���������
  png:= TPngImage.Create;
  try
  png.Assign(bmp);
  png.SaveToFile(GetCurrentDir+'\ReportPicture\ProjectionWell.png');
  finally
  png.Free;
  end;
  bmp.Free;

  // ��������� ���� ������
  bmp := TBitmap.Create;
  bmp.Width := FrmDiagram.Chart1.Width;
  bmp.Height :=FrmDiagram.Chart1.Height;
  // �������� ������
  bmp.Canvas.Lock;
  FrmDiagram.Chart1.PaintTo(bmp.Canvas.Handle, 0, 0);
  bmp.Canvas.Unlock;

  // ������������ Bitmap � PNG � ���������
  png:= TPngImage.Create;
  try
  png.Assign(bmp);
  png.SaveToFile(GetCurrentDir+'\ReportPicture\DiagramWeight.png');
  finally
  png.Free;
  end;
  bmp.Free;


end;

end.
