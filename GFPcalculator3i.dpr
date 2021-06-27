program GFPcalculator3i;

uses
  Vcl.Forms,
  geofpro in 'geofpro.pas' {Geofpro3i},
  pipe_calculator in 'pipe_calculator.pas' {Fcalculator3i},
  pcmenu in 'pcmenu.pas' {Fpcmenu},
  user_person in 'user_person.pas' {FUser_person},
  formdate in 'formdate.pas' {Fformdate},
  referenñe in 'referenñe.pas' {Freference},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  GFPPipeWeight in 'GFPPipeWeight.pas',
  Diagram in 'Diagram.pas' {FrmDiagram},
  ProjectionEXL in 'ProjectionEXL.pas' {FrmProjectionEXL},
  Wait in 'Wait.pas' {FrmWait},
  TableOfElements in 'TableOfElements.pas' {FTableOfElements},
  GFPÑonversionElements in 'GFPÑonversionElements.pas',
  Reports in 'Reports.pas' {FrReports},
  ReportsAllDate in 'ReportsAllDate.pas' {FrReportsAllDate: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGeofpro3i, Geofpro3i);
  Application.CreateForm(TFcalculator3i, Fcalculator3i);
  Application.CreateForm(TFpcmenu, Fpcmenu);
  Application.CreateForm(TFUser_person, FUser_person);
  Application.CreateForm(TFformdate, Fformdate);
  Application.CreateForm(TFreference, Freference);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmDiagram, FrmDiagram);
  Application.CreateForm(TFrmProjectionEXL, FrmProjectionEXL);
  Application.CreateForm(TFrmWait, FrmWait);
  Application.CreateForm(TFTableOfElements, FTableOfElements);
  Application.CreateForm(TFrReports, FrReports);
  Application.Run;
end.
