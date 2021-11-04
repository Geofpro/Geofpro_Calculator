unit referenсe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.Mask;

type
  TFreference = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    Button1: TButton;
    ESG1col: TEdit;
    ESG1row: TEdit;
    Panel2: TPanel;
    TabSheet9: TTabSheet;
    DBGrid9: TDBGrid;
    TabSheet10: TTabSheet;
    ImageAdd: TImage;
    ImageDel: TImage;
    ImageUpdate: TImage;
    DBGrid10: TDBGrid;
    TabSheet11: TTabSheet;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    DBIDpipe: TDBEdit;
    DBEdit13: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImageAddClick(Sender: TObject);
    procedure ImageUpdateClick(Sender: TObject);
    procedure ImageDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DeleteUserRecord;
  end;

var
  Freference: TFreference;

implementation

{$R *.dfm}

 uses DataModule, pipe_calculator, UserReference, rDeleteRecordUserRef;



procedure TFreference.Button1Click(Sender: TObject);
// заполняем таблицу расчёта
  var Sc, Sr : Integer;
begin
 Sc:=StrToInt(ESG1col.Text);
 Sr:=StrToInt(ESG1row.Text);
  if ComboBox1.ItemIndex=0  then
  // если бурильные трубы
  begin
    // тело трубы
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid1.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid1.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid1.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid1.DataSource.DataSet.Fields[10].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid1.DataSource.DataSet.Fields[11].AsString;
   end;

  if ComboBox1.ItemIndex=1  then
  begin
    // замок
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid2.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid2.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid2.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= DbGrid2.DataSource.DataSet.Fields[6].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= DbGrid2.DataSource.DataSet.Fields[5].AsString;
  end;

   if ComboBox1.ItemIndex=2  then
  begin
    // УБТ
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid3.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid3.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid3.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid3.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid3.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid3.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=3  then
  begin
    // Буровой инструмент
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid4.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid4.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid4.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid4.DataSource.DataSet.Fields[7].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid4.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid4.DataSource.DataSet.Fields[5].AsString;
     Fcalculator3i.StringGrid1.Cells[11,Sr]:= DbGrid4.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';
  end;

  if ComboBox1.ItemIndex=4  then
  begin
    // взд
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid5.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid5.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid5.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[11,Sr]:= FloatToStr(StrToFloat(DbGrid5.DataSource.DataSet.Fields[4].AsString)/1000);
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= FloatToStrF(StrToFloat(DbGrid5.DataSource.DataSet.Fields[5].AsString)/
     (StrToFloat(DbGrid5.DataSource.DataSet.Fields[4].AsString)/1000),ffFixed,10,2);

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';


  end;

   if ComboBox1.ItemIndex=5  then
  begin
    // трубы колтюбинг
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid6.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid6.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid6.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid6.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid6.DataSource.DataSet.Fields[5].AsString;

     Fcalculator3i.StringGrid1.Cells[5,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=6  then
  begin
    // НКТ
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid7.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid7.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid7.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid7.DataSource.DataSet.Fields[9].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid7.DataSource.DataSet.Fields[9].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid7.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= DbGrid7.DataSource.DataSet.Fields[10].AsString;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid7.DataSource.DataSet.Fields[7].AsString;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= DbGrid7.DataSource.DataSet.Fields[11].AsString;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';
  end;

  if ComboBox1.ItemIndex=7  then
  begin
    // Обсадные трубы
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid8.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid8.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid8.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid8.DataSource.DataSet.Fields[5].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid8.DataSource.DataSet.Fields[5].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid8.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= FloatToStrF(StrToFloat(DbGrid8.DataSource.DataSet.Fields[6].AsString)/9.81*1000,ffFixed,10,2);
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= '0';
  end;

   if ComboBox1.ItemIndex=8  then
  begin
    // ТБТ
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DbGrid9.DataSource.DataSet.Fields[1].AsString;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DbGrid9.DataSource.DataSet.Fields[2].AsString;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DbGrid9.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DbGrid9.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DbGrid9.DataSource.DataSet.Fields[4].AsString;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DbGrid9.DataSource.DataSet.Fields[3].AsString;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DbGrid9.DataSource.DataSet.Fields[6].AsString;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= '0';
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DbGrid9.DataSource.DataSet.Fields[7].AsString;
  end;

  if ComboBox1.ItemIndex=9  then
  begin
    // Справочник пользователя
     Fcalculator3i.StringGrid1.Cells[1,Sr]:= DBEdit1.Text;
     Fcalculator3i.StringGrid1.Cells[2,Sr]:= DBEdit2.Text;
     Fcalculator3i.StringGrid1.Cells[3,Sr]:= DBEdit3.Text;
     Fcalculator3i.StringGrid1.Cells[4,Sr]:= DBEdit4.Text;
     Fcalculator3i.StringGrid1.Cells[5,Sr]:= DBEdit5.Text;
     Fcalculator3i.StringGrid1.Cells[6,Sr]:= DBEdit6.Text;
     Fcalculator3i.StringGrid1.Cells[7,Sr]:= DBEdit7.Text;
     Fcalculator3i.StringGrid1.Cells[8,Sr]:= DBEdit8.Text;
     Fcalculator3i.StringGrid1.Cells[9,Sr]:= DBEdit9.Text;
     Fcalculator3i.StringGrid1.Cells[10,Sr]:= DBEdit10.Text;
     Fcalculator3i.StringGrid1.Cells[11,Sr]:= DBEdit11.Text;
     Fcalculator3i.StringGrid1.Cells[12,Sr]:= DBEdit12.Text;
  end;

end;

procedure TFreference.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  // бурильные трубы
  begin
  TabSheet1.Visible:=True;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

   if ComboBox1.ItemIndex=1 then
   // замки бурильных труб
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=True;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

     if ComboBox1.ItemIndex=2 then
     //УБТ
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=True;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

     if ComboBox1.ItemIndex=3 then
    // Буровой инструмент
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=True;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

     if ComboBox1.ItemIndex=4 then
     // взд
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=True;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;


     if ComboBox1.ItemIndex=5 then
     //трубы колтюбинг
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=True;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

     if ComboBox1.ItemIndex=6 then
     // нкт
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=True;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

     if ComboBox1.ItemIndex=7 then
     // обсадные трубы
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=True;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

   if ComboBox1.ItemIndex=8 then
     // ТБТ
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=True;
  TabSheet10.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;
  end;

   if ComboBox1.ItemIndex=9 then
     // справочник пользователя
  begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=True;
  ImageAdd.Visible:=True;
  ImageDel.Visible:=True;
  ImageUpdate.Visible:=True;
  end;


end;

procedure TFreference.DeleteUserRecord;
//удаляем выбранную запись из справочника пользователя
begin
  DataModule1.FDQdelete.ParamByName('ID').AsString:=DBIDpipe.Text;
  DataModule1.FDQdelete.ExecSQL;
  DataModule1.FDQUserRef.Refresh;
end;

procedure TFreference.FormActivate(Sender: TObject);
begin
  ESG1col.Text:= IntToStr(Fcalculator3i.StringGrid1.Col);
  ESG1row.Text:= IntToStr(Fcalculator3i.StringGrid1.Row);
end;

procedure TFreference.FormCreate(Sender: TObject);
begin
  TabSheet1.Visible:=False;
  TabSheet2.Visible:=False;
  TabSheet3.Visible:=False;
  TabSheet4.Visible:=False;
  TabSheet5.Visible:=False;
  TabSheet6.Visible:=False;
  TabSheet7.Visible:=False;
  TabSheet8.Visible:=False;
  TabSheet9.Visible:=False;
  TabSheet10.Visible:=False;
  TabSheet11.Visible:=False;
  ImageAdd.Visible:=False;
  ImageDel.Visible:=False;
  ImageUpdate.Visible:=False;

  TabSheet1.TabVisible:=False;
  TabSheet2.TabVisible:=False;
  TabSheet3.TabVisible:=False;
  TabSheet4.TabVisible:=False;
  TabSheet5.TabVisible:=False;
  TabSheet6.TabVisible:=False;
  TabSheet7.TabVisible:=False;
  TabSheet8.TabVisible:=False;
  TabSheet9.TabVisible:=False;
  TabSheet10.TabVisible:=False;
  TabSheet11.TabVisible:=False;
end;

procedure TFreference.ImageAddClick(Sender: TObject);
begin
  FrUserReference.Label4.Visible:=False;
  FrUserReference.DBIDuserRef.Visible:=False;
  FrUserReference.LabelUpdate.Visible:=False;
  FrUserReference.LabelAdd.Visible:=True;

  FrUserReference.SGAddPipe.Cells[2,1]:='';
  FrUserReference.SGAddPipe.Cells[2,2]:='';
  FrUserReference.SGAddPipe.Cells[2,3]:='';
  FrUserReference.SGAddPipe.Cells[2,4]:='';
  FrUserReference.SGAddPipe.Cells[2,5]:='';
  FrUserReference.SGAddPipe.Cells[2,6]:='';
  FrUserReference.SGAddPipe.Cells[2,7]:='';
  FrUserReference.SGAddPipe.Cells[2,8]:='';
  FrUserReference.SGAddPipe.Cells[2,9]:='';
  FrUserReference.SGAddPipe.Cells[2,10]:='';
  FrUserReference.SGAddPipe.Cells[2,11]:='';
  FrUserReference.SGAddPipe.Cells[2,12]:='';
  FrUserReference.SGAddPipe.Cells[2,13]:='';
  FrUserReference.ShowModal;
end;

procedure TFreference.ImageDelClick(Sender: TObject);
begin
 FrDeleteRecordUserRef.ShowModal;
end;

procedure TFreference.ImageUpdateClick(Sender: TObject);
// добавляем значения полей записи в форму для редактирования
begin
  FrUserReference.Label4.Visible:=True;
  FrUserReference.DBIDuserRef.Visible:=True;
  FrUserReference.LabelUpdate.Visible:=True;
  FrUserReference.LabelAdd.Visible:=False;

  FrUserReference.SGAddPipe.Cells[2,1]:=DBEdit1.Text;
  FrUserReference.SGAddPipe.Cells[2,2]:=DBEdit2.Text;
  FrUserReference.SGAddPipe.Cells[2,3]:=DBEdit3.Text;
  FrUserReference.SGAddPipe.Cells[2,4]:=DBEdit4.Text;
  FrUserReference.SGAddPipe.Cells[2,5]:=DBEdit5.Text;
  FrUserReference.SGAddPipe.Cells[2,6]:=DBEdit6.Text;
  FrUserReference.SGAddPipe.Cells[2,7]:=DBEdit7.Text;
  FrUserReference.SGAddPipe.Cells[2,8]:=DBEdit8.Text;
  FrUserReference.SGAddPipe.Cells[2,9]:=DBEdit9.Text;
  FrUserReference.SGAddPipe.Cells[2,10]:=DBEdit10.Text;
  FrUserReference.SGAddPipe.Cells[2,11]:=DBEdit11.Text;
  FrUserReference.SGAddPipe.Cells[2,12]:=DBEdit12.Text;
  FrUserReference.SGAddPipe.Cells[2,13]:=DBEdit13.Text;
  FrUserReference.ShowModal;
end;

end.
