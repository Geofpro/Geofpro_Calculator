unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.ODBCBase;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    FDQuery7: TFDQuery;
    FDQuery8: TFDQuery;
    DataSource8: TDataSource;
    FDQuery9: TFDQuery;
    DataSource9: TDataSource;
    FDConnectionReport: TFDConnection;
    FDQueryReport: TFDQuery;
    FDQueryPersonDate: TFDQuery;
    FDQueryPipeCalculator: TFDQuery;
    DataSourcePersonDate: TDataSource;
    DataSourcePipeCalculator: TDataSource;
    FDQUserRef: TFDQuery;
    DSUserRef: TDataSource;
    FDQinsert: TFDQuery;
    FDQupdate: TFDQuery;
    FDQdelete: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
 FDConnection1.Params.Database:= GetCurrentDir + '\DrillingPipeDB\geofpro3i.mdb';
 FDConnection1.Connected:=True;
 FDConnectionReport.Params.Database:= GetCurrentDir + '\DrillingPipeDB\GFPcalculatorReport.mdb';
 FDConnectionReport.Connected:=True;
 // справочники массы инструмента
 FDQuery1.Active:=True;
 FDQuery2.Active:=True;
 FDQuery3.Active:=True;
 FDQuery4.Active:=True;
 FDQuery5.Active:=True;
 FDQuery6.Active:=True;
 FDQuery7.Active:=True;
 FDQuery8.Active:=True;
 FDQuery9.Active:=True;
 end;

end.
