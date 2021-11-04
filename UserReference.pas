unit UserReference;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrUserReference = class(TForm)
    Panel1: TPanel;
    SGAddPipe: TStringGrid;
    Image1: TImage;
    LabelAdd: TLabel;
    Label2: TLabel;
    DBIDuserRef: TDBEdit;
    LabelUpdate: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure LabelAddClick(Sender: TObject);
    procedure LabelUpdateClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
    function �heckingvalue2 :boolean; //�������� �������� �������
  public
    { Public declarations }
  end;

var
  FrUserReference: TFrUserReference;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrUserReference.FormCreate(Sender: TObject);
begin
  SGAddPipe.ColWidths[0]:=34;
  SGAddPipe.ColWidths[1]:=300;
  SGAddPipe.ColWidths[2]:=300;

  SGAddPipe.Cells[0,0]:='�';
  SGAddPipe.Cells[1,0]:='������������ ���������';
  SGAddPipe.Cells[2,0]:='��������';

  SGAddPipe.Cells[0,1]:='1';
  SGAddPipe.Cells[0,2]:='2';
  SGAddPipe.Cells[0,3]:='3';
  SGAddPipe.Cells[0,4]:='4';
  SGAddPipe.Cells[0,5]:='5';
  SGAddPipe.Cells[0,6]:='6';
  SGAddPipe.Cells[0,7]:='7';
  SGAddPipe.Cells[0,8]:='8';
  SGAddPipe.Cells[0,9]:='9';
  SGAddPipe.Cells[0,10]:='10';
  SGAddPipe.Cells[0,11]:='11';
  SGAddPipe.Cells[0,12]:='12';
  SGAddPipe.Cells[0,13]:='13';

  SGAddPipe.Cells[1,1]:='������������ ����������� �����������';
  SGAddPipe.Cells[1,2]:='�������� �������, ��';
  SGAddPipe.Cells[1,3]:='���������� �������, ��';
  SGAddPipe.Cells[1,4]:='������������ �������, ��';
  SGAddPipe.Cells[1,5]:='������� ����� ��������, ��';
  SGAddPipe.Cells[1,6]:='������� ����� ����������, ��';
  SGAddPipe.Cells[1,7]:='����� �����, ��';
  SGAddPipe.Cells[1,8]:='����� ������ ����� �����������, ��';
  SGAddPipe.Cells[1,9]:='����� �����, ��';
  SGAddPipe.Cells[1,10]:='����� ���� �������, ��';
  SGAddPipe.Cells[1,11]:='����� ������, �';
  SGAddPipe.Cells[1,12]:='����� ��������, �';
  SGAddPipe.Cells[1,13]:='����������';
end;

procedure TFrUserReference.LabelAddClick(Sender: TObject);
begin
   try
   DataModule1.FDQinsert.ParamByName('Name').AsString:=SGAddPipe.Cells[2,1];
   DataModule1.FDQinsert.ParamByName('Dn').AsFloat:=StrToFloat(SGAddPipe.Cells[2,2]);
   DataModule1.FDQinsert.ParamByName('Dv').AsFloat:=StrToFloat(SGAddPipe.Cells[2,3]);
   DataModule1.FDQinsert.ParamByName('Dmax').AsFloat:=StrToFloat(SGAddPipe.Cells[2,4]);
   DataModule1.FDQinsert.ParamByName('Dmn').AsFloat:=StrToFloat(SGAddPipe.Cells[2,5]);
   DataModule1.FDQinsert.ParamByName('Dmv').AsFloat:=StrToFloat(SGAddPipe.Cells[2,6]);
   DataModule1.FDQinsert.ParamByName('Lm').AsFloat:=StrToFloat(SGAddPipe.Cells[2,7]);
   DataModule1.FDQinsert.ParamByName('Mi').AsFloat:=StrToFloat(SGAddPipe.Cells[2,8]);
   DataModule1.FDQinsert.ParamByName('Mm').AsFloat:=StrToFloat(SGAddPipe.Cells[2,9]);
   DataModule1.FDQinsert.ParamByName('M2v').AsFloat:=StrToFloat(SGAddPipe.Cells[2,10]);
   DataModule1.FDQinsert.ParamByName('Ls').AsFloat:=StrToFloat(SGAddPipe.Cells[2,11]);
   DataModule1.FDQinsert.ParamByName('Le').AsFloat:=StrToFloat(SGAddPipe.Cells[2,12]);
   DataModule1.FDQinsert.ParamByName('Comments').AsString:=SGAddPipe.Cells[2,13];

   DataModule1.FDQinsert.ExecSQL;
   ShowMessage('������ ���������');
   DataModule1.FDQUserRef.Refresh;
   except
   ShowMessage('� ������� �������� �� ����������� ������� ������ �����, ��������� ����� ������� 108,6');
  end;

end;

procedure TFrUserReference.Label2Click(Sender: TObject);
begin
 FrUserReference.Close;
end;

procedure TFrUserReference.LabelUpdateClick(Sender: TObject);
begin
 try
  if �heckingvalue2 then
   begin
    DataModule1.FDQupdate.ParamByName('Name').AsString:=SGAddPipe.Cells[2,1];
    DataModule1.FDQupdate.ParamByName('Dn').AsFloat:=StrToFloat(SGAddPipe.Cells[2,2]);
    DataModule1.FDQupdate.ParamByName('Dv').AsFloat:=StrToFloat(SGAddPipe.Cells[2,3]);
    DataModule1.FDQupdate.ParamByName('Dmax').AsFloat:=StrToFloat(SGAddPipe.Cells[2,4]);
    DataModule1.FDQupdate.ParamByName('Dmn').AsFloat:=StrToFloat(SGAddPipe.Cells[2,5]);
    DataModule1.FDQupdate.ParamByName('Dmv').AsFloat:=StrToFloat(SGAddPipe.Cells[2,6]);
    DataModule1.FDQupdate.ParamByName('Lm').AsFloat:=StrToFloat(SGAddPipe.Cells[2,7]);
    DataModule1.FDQupdate.ParamByName('Mi').AsFloat:=StrToFloat(SGAddPipe.Cells[2,8]);
    DataModule1.FDQupdate.ParamByName('Mm').AsFloat:=StrToFloat(SGAddPipe.Cells[2,9]);
    DataModule1.FDQupdate.ParamByName('M2v').AsFloat:=StrToFloat(SGAddPipe.Cells[2,10]);
    DataModule1.FDQupdate.ParamByName('Ls').AsFloat:=StrToFloat(SGAddPipe.Cells[2,11]);
    DataModule1.FDQupdate.ParamByName('Le').AsFloat:=StrToFloat(SGAddPipe.Cells[2,12]);
    DataModule1.FDQupdate.ParamByName('Comments').AsString:=SGAddPipe.Cells[2,13];
    DataModule1.FDQupdate.ParamByName('ID').AsInteger:=StrToInt(DBIDuserRef.Text);

    DataModule1.FDQupdate.ExecSQL;
    ShowMessage('������ ���������');
    DataModule1.FDQUserRef.Refresh;
   end;
 except
 ShowMessage('� ������� �������� �� ����������� ������� ������ �����, ��������� ����� ������� 108,6');
 end;
end;


function TFrUserReference.�heckingvalue2: boolean;
   var row, i : Integer;
 n : String;
begin
   for row := 2 to (SGAddPipe.RowCount-2) do
         begin
         n:=SGAddPipe.Cells[2, row];
         // ��������� ������� ������ �����
         if n='' then
         begin
          Result:=False;
         end;
          for i := 1 to length(SGAddPipe.Cells[2, row]) do
         begin
         // ��������� ���������� ������ � ��������� �������
           if not (n[i] in ['0'..'9',',','.']) then
           begin
            Result:=False;
           end;
           end;

       end;

   Result:=True;
end;

end.