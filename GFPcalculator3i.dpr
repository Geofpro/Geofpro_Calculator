program GFPcalculator3i;

uses
  Vcl.Forms,
  geofpro in 'geofpro.pas' {Geofpro3i},
  pipe_calculator in 'pipe_calculator.pas' {Fcalculator3i},
  pcmenu in 'pcmenu.pas' {Fpcmenu},
  user_person in 'user_person.pas' {FUser_person},
  formdate in 'formdate.pas' {Fformdate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGeofpro3i, Geofpro3i);
  Application.CreateForm(TFcalculator3i, Fcalculator3i);
  Application.CreateForm(TFpcmenu, Fpcmenu);
  Application.CreateForm(TFUser_person, FUser_person);
  Application.CreateForm(TFformdate, Fformdate);
  Application.Run;
end.
