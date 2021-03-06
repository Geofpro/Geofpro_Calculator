unit geofpro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, ShellAPI, IniFiles;

type
  TGeofpro3i = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Euserlog: TEdit;
    Label5: TLabel;
    Timer1: TTimer;
    Label6: TLabel;
    Label7: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EuserlogDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TimerPick;   // ????? ???????? ??????? ?????
    procedure DateCurrent; //?????? ??????? ????
    procedure WriteIni(UserName: String) ;  // ????????? ????????? ? ini ????
    procedure ReadIni; // ????????? ?????????? ?? ??? ?????
  end;

var
  Geofpro3i: TGeofpro3i;

implementation

{$R *.dfm}

uses pipe_calculator, user_person, formdate;

 var T1: Integer;

procedure TGeofpro3i.DateCurrent;
//?????? ??????? ????
begin
  Fformdate.MonthCalendar1.Date:=now;
  FUser_person.StringGrid1.Cells[1,7]:=DateToStr(Fformdate.MonthCalendar1.Date);
end;

procedure TGeofpro3i.EuserlogDblClick(Sender: TObject);
begin
 FUser_person.ShowModal;
end;

procedure TGeofpro3i.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteIni(Euserlog.Text);
end;

procedure TGeofpro3i.FormCreate(Sender: TObject);
begin
   T1:=0;
   ReadIni;
end;

procedure TGeofpro3i.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SysCommand,$F012,0);
end;


procedure TGeofpro3i.Label1Click(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar('http://geofpro.com/programmi-burenie.html'),nil,nil,SW_SHOW);
end;

procedure TGeofpro3i.Label4Click(Sender: TObject);
begin
 Fcalculator3i.Show;
end;

procedure TGeofpro3i.Label5Click(Sender: TObject);
begin
 Geofpro3i.Close;
end;

procedure TGeofpro3i.Label6Click(Sender: TObject);
begin
  Geofpro3i.WindowState:= wsMinimized;
end;

procedure TGeofpro3i.ReadIni;
  var IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(GetCurrentDir + '\gfpcalculator.ini');
    try
    Euserlog.Text:=IniFile.ReadString('Parametr','UserName','geofpro_user');
    finally
     IniFile.Destroy;
   end;
end;

procedure TGeofpro3i.Timer1Timer(Sender: TObject);
 // ????? ???????? ??????? ?????
begin
  T1:=T1+1;
  TimerPick;
  if T1=3 then T1:=0;
end;

procedure TGeofpro3i.TimerPick;
   // ????? ???????? ??????? ?????
begin
 if T1=1 then  Image1.Picture.LoadFromFile('C:\Geofpro\Geofpro_Calculator\pick\font1.jpg');
 if T1=2 then  Image1.Picture.LoadFromFile('C:\Geofpro\Geofpro_Calculator\pick\font2.jpg');
 if T1=3 then  Image1.Picture.LoadFromFile('C:\Geofpro\Geofpro_Calculator\pick\font3.jpg');

 end;



procedure TGeofpro3i.WriteIni(UserName: String);
  var IniFile: TIniFile;
begin
   IniFile := TIniFile.Create(GetCurrentDir + '\gfpcalculator.ini');
    try
    Inifile.WriteString ('Parametr','UserName',UserName);
    finally
    IniFile.Destroy;
    end;
end;

end.



