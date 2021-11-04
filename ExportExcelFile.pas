unit ExportExcelFile;

interface

uses

  ComObj, ActiveX, Variants, Windows, Messages, SysUtils, Classes, Vcl.Dialogs;

  type
  TExportExcelFileGo = class


  private
    { Private declarations }
  function CheckExcelInstall:boolean;
  function RunExcel(DisableAlerts:boolean=true; Visible: boolean=false): boolean;
  procedure ExcelReport;


  public
    { Public declarations }
   Constructor Create;
  end;

 var GFPCalExcel: OleVariant;
 const ExcelApp = 'Excel.Application';


implementation

// класс TExportExcelFileGo проверяет установлен ли Excel на машине пользователя
// если установлен, экспортирует главную расчётную таблицу в Excel файл

 uses pipe_calculator;
{ TExportExcelFileGo }

function TExportExcelFileGo.CheckExcelInstall: boolean;
   var
  ClassID: TCLSID;
  Rez : HRESULT;
begin
  // Ищем CLSID OLE-объекта
  Rez := CLSIDFromProgID(PWideChar(WideString(ExcelApp)), ClassID);
  if Rez = S_OK then  // Объект найден
    Result := true
  else
    Result := false;
end;

constructor TExportExcelFileGo.Create;
begin
  CheckExcelInstall;
  RunExcel;
end;

procedure TExportExcelFileGo.ExcelReport;
 var i,j,index, i2: Integer;
 ExcelApp,sheet: Variant;
begin
    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.Visible:=True;
    ExcelApp.WorkBooks.Add(-4167);
    ExcelApp.WorkBooks[1].WorkSheets[1].name := 'ReportWeight';
    sheet:= ExcelApp.WorkBooks[1].WorkSheets['ReportWeight'];
    // заполняем созданную страницу
      index:=2;
    sheet.cells[index,1]:='Рапорт расчёт массы и веса бурильной колонны.';



    for i:=0 to Fcalculator3i.StringGrid1.ColCount-2 do
      begin
       sheet.cells[4,i+1]:= Fcalculator3i.StringGrid1.Cells[i,0];
      end;

    for i:=0 to 2 do
    begin
     for j:=1 to Fcalculator3i.StringGrid1.RowCount-1 do
      begin
        if Fcalculator3i.StringGrid1.Cells[i,j]<>'' then
        sheet.cells[j+4,i+1]:= Fcalculator3i.StringGrid1.Cells[i,j];
      end;
    end;

   for i:=2 to Fcalculator3i.StringGrid1.ColCount-2 do
    begin
     for j:=1 to Fcalculator3i.StringGrid1.RowCount-1 do
      begin
        if Fcalculator3i.StringGrid1.Cells[i,j]<>'' then
        sheet.cells[j+4,i+1]:= StrToFloat(Fcalculator3i.StringGrid1.Cells[i,j]);
      end;
    end;

  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['A:A'].ColumnWidth := 3;
  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['B:B'].ColumnWidth := 30;
  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['C:G'].ColumnWidth := 10;
  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['H:K'].ColumnWidth := 12;
  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['L:M'].ColumnWidth := 18;
  ExcelApp.ActiveWorkbook.ActiveSheet.Columns.Range['N:P'].ColumnWidth := 12;

  i2:= Fcalculator3i.StringGrid1.RowCount+3;
   ExcelApp.ActiveWorkbook.ActiveSheet.Range['A4:P'+IntToStr(i2)].Borders.Color := 1;

end;


function TExportExcelFileGo.RunExcel(DisableAlerts, Visible: boolean): boolean;
 begin
 try
  {проверяем установлен ли Excel}
  if CheckExcelInstall then
   begin
        ExcelReport;
        Result:=true;
      end
    else
      begin
        MessageBox(0,'Приложение MS Excel не установлено на этом компьютере','Ошибка',MB_OK+MB_ICONERROR);
        Result:=false;
      end;
  except
    Result:=false;
  end;
end;

end.
