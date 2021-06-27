unit Reports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass, Vcl.ExtCtrls, ReportsAllDate,
  frxDBSet;

type
  TFrReports = class(TForm)
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure CreateTablePipeSection;
  procedure ImportDatePipeSection;
  procedure DropTablePipeSection;

  end;

var
  FrReports: TFrReports;
  ReportFrame : TFrame;

implementation

{$R *.dfm}

 uses DataModule;

procedure TFrReports.Button1Click(Sender: TObject);
begin
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
end;

procedure TFrReports.CreateTablePipeSection;

begin
// �������� ����
  DataModule1.FDQueryReport.Active := false; // ��������� ������, ���� �� ��� �������
  DataModule1.FDQueryReport.SQL.Clear; // �������� ����������� ������ �������

  DataModule1.FDQueryReport.SQL.Add('create table WeightCalc (id COUNTER CONSTRAINT PrimaryKey PRIMARY KEY ,  NamePipe char,'+
  'Dn real, Dvn real, Dmax real, Dcn real, Dcvn real, LeghtConnector, LeghpSection real,'+
  ' LeghtElement real, MassTone real, Weight real) ' );
  DataModule1.FDQueryReport.ExecSQL;
end;

procedure TFrReports.DropTablePipeSection;
begin
  // ������� �������
   DataModule1.FDQueryReport.Active := false; // ��������� ������, ���� �� ��� �������
   DataModule1.FDQueryReport.SQL.Clear; // �������� ����������� ������ �������
   DataModule1.FDQueryReport.SQL.Text :='DROP TABLE cleaning';
   DataModule1.FDQueryReport.ExecSQL;
end;

procedure TFrReports.ImportDatePipeSection;
 var C1, C2 : String;
begin
// �������� ����
  C1:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[1,1];
  C2:= TFrReportsAllDate(ReportFrame).StringGridPipeCalculator.Cells[1,1];
  DataModule1.FDQueryReport.SQL.Text :='INSERT INTO parameter1 (NamePipe, '+
  ' Dn ) VALUES (' + QuotedStr(C1)+', '+QuotedStr(C2)+');';
end;

end.