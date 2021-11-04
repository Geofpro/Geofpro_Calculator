unit License;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrLicense = class(TForm)
    Memo1: TMemo;
    CheckBoxLicense: TCheckBox;
    procedure CheckBoxLicenseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AllFormClose;
  public
    { Public declarations }
  end;

var
  FrLicense: TFrLicense;

implementation

{$R *.dfm}

uses geofpro, pipe_calculator, Diagram, DiagramFactors, DiagramMain, pcmenu,
  ProjectionEXL, referenсe, Reports, user_person, UserReference;

procedure TFrLicense.AllFormClose;
// проверяем созданы ли формы, если созданы, закрываем
begin
 if Assigned(Fcalculator3i) then Fcalculator3i.Close;
 if Assigned(FrmDiagram) then FrmDiagram.Close;
 if Assigned(FrDiagramFactors) then FrDiagramFactors.Close;
 if Assigned(FrDiagramMain) then FrDiagramMain.Close;
 if Assigned(Fpcmenu) then Fpcmenu.Close;
 if Assigned(FrmProjectionEXL) then FrmProjectionEXL.Close;
 if Assigned(Freference) then Freference.Close;
 if Assigned(FrReports) then FrReports.Close;
 if Assigned(FUser_person) then FUser_person.Close;
 if Assigned(FrUserReference) then FrUserReference.Close;
end;

procedure TFrLicense.CheckBoxLicenseClick(Sender: TObject);
begin
  case CheckBoxLicense.State of
   cbUnchecked:
   begin
    Geofpro3i.ELicense.Text:='False';
    AllFormClose;
   end;

   cbChecked:
   begin
    Geofpro3i.ELicense.Text:='True';
   end;
 end;
end;

procedure TFrLicense.FormCreate(Sender: TObject);
begin
  if Geofpro3i.ELicense.Text='True' then CheckBoxLicense.Checked:=True;
  if Geofpro3i.ELicense.Text='False' then CheckBoxLicense.Checked:=False;
end;

end.
