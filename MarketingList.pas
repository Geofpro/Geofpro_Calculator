unit MarketingList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, ShellAPI, Vcl.Imaging.pngimage;

type
  TFrMarketingList = class(TFrame)
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Memo2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrMarketingList.Label3Click(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar('http://geofpro.com/programmi-burenie.html'),nil,nil,SW_SHOW);
end;

procedure TFrMarketingList.Label6Click(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar('http://greendrill.ru'),nil,nil,SW_SHOW);
end;

end.
