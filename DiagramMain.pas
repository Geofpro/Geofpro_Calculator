unit DiagramMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrDiagramMain = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDiagramMain: TFrDiagramMain;

implementation

{$R *.dfm}

uses pipe_calculator, Diagram, DiagramFactors;

procedure TFrDiagramMain.FormCreate(Sender: TObject);
begin
 Label1.Caption:='';
end;

procedure TFrDiagramMain.Image1Click(Sender: TObject);
begin
   // ��������, ��������� �� ������� ������� StringGrid1 ��� ���������� ���������
 if Fcalculator3i.EkN.Text<>'0' then
  begin
   FrDiagramFactors.Show;
   FrDiagramFactors.StartCalculation;
   FrDiagramMain.Close;
  end
  else ShowMessage('�� ���������� ������ ��� ���������� ���������');

end;

procedure TFrDiagramMain.Image1MouseLeave(Sender: TObject);
begin
  Label1.Caption:='';
end;

procedure TFrDiagramMain.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Label1.Caption:='��������� ������� �������������� �������� �� ��� ��������� �������';
end;

procedure TFrDiagramMain.Image2Click(Sender: TObject);
begin
  // ��������, ��������� �� ������� ������� StringGrid1 ��� ���������� ���������
 if Fcalculator3i.EkN.Text<>'0' then
  begin
   FrmDiagram.Show;
   FrmDiagram.MassDiagramm;
   FrDiagramMain.Close;
  end
  else ShowMessage('�� ���������� ������ ��� ���������� ���������');

end;

procedure TFrDiagramMain.Image2MouseLeave(Sender: TObject);
begin
 Label1.Caption:='';
end;

procedure TFrDiagramMain.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Label1.Caption:='��������� ������������� ���� ��������� �������, ��';
end;

end.
