unit rExcelExport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ExportExcelFile;

type
  TFrExcelExport = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrExcelExport: TFrExcelExport;
  ExcelExport: TExportExcelFileGo;

implementation

{$R *.dfm}

procedure TFrExcelExport.Button1Click(Sender: TObject);
begin
   ExcelExport:=TExportExcelFileGo.Create;
   ExcelExport.Free;
   FrExcelExport.Close;
end;

procedure TFrExcelExport.Button2Click(Sender: TObject);
begin
  FrExcelExport.Close;
end;

end.
