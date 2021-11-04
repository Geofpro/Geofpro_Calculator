unit TableOfElements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, GFPСonversionElements,
  GFPPipeWeight;

type
  TFTableOfElements = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SGElements: TStringGrid;
    Panel2: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure СonversionElements;  // преобразование секции в элементы
  procedure LeghtSum; // нарастающий итог длины инструмента
  procedure Zenit; // определяем зенитный угол для каждого элемента
  procedure ClassPipeWeightT; // расчёт массы и веса
  procedure SGElementsClear; // очистить таблицу расчёта
  procedure PipeWeightSection; // вычисляем вес каждой секции (сумма веса элементов каждой секции)
  procedure CalculateWeight; // выполнить расчёт массы и веса
  end;

var
  FTableOfElements: TFTableOfElements;
  ElementsNum: TConversionElements;
  PipeWeight1 : TPipeWeight;

implementation

{$R *.dfm}

uses pipe_calculator, ProjectionEXL, pcmenu, Diagram, DiagramFactors;

// в этом модуле преобразуем секцию в элементы, например в секции длиной 120 метров
// содержится 10 труб (элементов) по 12 метров.

procedure TFTableOfElements.СonversionElements;
   // разбиваем секции бурильной колонны на элементы
 var E1, E2, E3, E6, E7, E8, E9, Eindex: String;
 E4, E5: Real;
 i: Integer; // счётчик
 CR : Integer; // количество секций бурильной колонны
begin
   // очищаем список элементов
     Memo1.Text:='';
     Memo1.Lines.Add('Расчёт выполнен.');
     Memo1.Lines.Add('Количество элементов в секции:');
   // создаём экземпляр класса TConversionElements
     ElementsNum:= TConversionElements.Create;
     CR:= Fcalculator3i.StringGrid1.RowCount-1;

   for i := 1 to CR do
   begin
    // присваиваем индексы секциям колонны бурильных труб
    Fcalculator3i.StringGrid1.Cells[16,i]:=IntToStr(i)+'index';
    // присваиваем значение 0 расчётным ячейкам
    Fcalculator3i.StringGrid1.Cells[13,i]:='0';
    Fcalculator3i.StringGrid1.Cells[14,i]:='0';
    Fcalculator3i.StringGrid1.Cells[15,i]:='0';
    // масса 1 метра тела трубы (инструмента), кг
    E1:=Fcalculator3i.StringGrid1.Cells[8,i];
    // масса муфты, кг
    E2:=Fcalculator3i.StringGrid1.Cells[9,i];
    // масса двух высадок, кг
    E3:=Fcalculator3i.StringGrid1.Cells[10,i];
    // длина секции (число)
    E4:=StrToFloat(Fcalculator3i.StringGrid1.Cells[11,i]);
    // длина элемнта (число)
    E5:=StrToFloat(Fcalculator3i.StringGrid1.Cells[12,i]);
    //длина муфты, м:
    E6:=Fcalculator3i.StringGrid1.Cells[7,i];
    // имя секции
    E7:=Fcalculator3i.StringGrid1.Cells[1,i];
    // диаметр наружный тела трубы, мм
    E8:=Fcalculator3i.StringGrid1.Cells[2,i];
    // диаметр внутренний тела трубы, мм
    E9:=Fcalculator3i.StringGrid1.Cells[3,i];
    // индекс секции колонны бурильных труб
    Eindex:= Fcalculator3i.StringGrid1.Cells[16,i];
    // вызываем процедуру импорта/экспорта параметров бурильной колонны
    ElementsNum.InputData (E4, E5, E7, E1, E2, E3, E6, E8, E9, Eindex);
    ElementsNum.ConversionElemets;
   end;

  ElementsNum.Free;
end;

procedure TFTableOfElements.Button1Click(Sender: TObject);
begin
  СonversionElements;
  LeghtSum;
end;

procedure TFTableOfElements.Button2Click(Sender: TObject);
begin
  Zenit;
end;

procedure TFTableOfElements.Button3Click(Sender: TObject);
begin
  ClassPipeWeightT;
end;

procedure TFTableOfElements.Button4Click(Sender: TObject);
begin
  SGElementsClear;
end;

procedure TFTableOfElements.Button5Click(Sender: TObject);
begin
 PipeWeightSection;
end;

procedure TFTableOfElements.CalculateWeight;
 var i : Integer;
begin
 // очищаем данные предыдущего расчёта
  SGElementsClear;
 // преобразовываем секцию в элементы
  СonversionElements;
 //  нарастающий итог
  LeghtSum;
 // определяем зенитный угол для каждой отдельной трубы
  Zenit;
 // проверяем, заполненны ли значения зенитного угла
  for i := 1 to SGElements.RowCount-1 do
 begin
     if SGElements.Cells[8,i]='' then
    begin
     ShowMessage('Заполните данные профиля скважины');
     Exit;
    end;
  end;
 // расчитываем массу и вес каждой трубы
 ClassPipeWeightT;
 // экспорт расчётных данных в таблицу ввода данных
 PipeWeightSection;

 // расчитываем длину инструмента
   Fcalculator3i.SumLeght;
   //  переводим кг в тонны
   Fcalculator3i.ConvertKG;
   // рассчитываем суммарную массу и вес
   Fcalculator3i.SumWeight;
   // строим диаграмму распределения веса
   FrmDiagram.MassDiagramm;
   // строим диаграмму составляющих формулы веса
   FrDiagramFactors.StartCalculation;
   Memo1.Lines.Add('');
   Memo1.Lines.Add('Расчётная длина колонны: ' +SGElements.Cells[7,SGElements.RowCount-1]+ ' м');
   ShowMessage(Memo1.Text);
end;

procedure TFTableOfElements.ClassPipeWeightT;
 // создаём экземпляр класса TPipeWeight, расчёт массы и веса бурильной колонны
 var i: Integer;
 var E7, MufFactorTrue: String;
 var E1, E2, E3, E4, E5, E6, EDn, EDv, CMud, ECfr,
 ECi, ECb : Real;  // значения, которые пережаём в объект  PipeWeight1
begin

   PipeWeight1:=TPipeWeight.Create;


   for i := 1 to SGElements.RowCount-1 do

  //(Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr, Ci, Cb : Real; Np, Mf: String);
     begin
      // масса одного метра трубы, кг
      E1:=StrToFloat(SGElements.Cells[3,i]);
      // масса муфты, кг
      E2:=StrToFloat(SGElements.Cells[4,i]);
      // масса двух высадок, кг
      E3:=StrToFloat(SGElements.Cells[5,i]);
      // длина одной трубы, м
      E4:=StrToFloat(SGElements.Cells[6,i]);
      // длина муфты, мм
      E5:=StrToFloat(SGElements.Cells[2,i]);
      //зенитный угол, град
      E6:=StrToFloat(SGElements.Cells[8,i]);
      // внешний диаметр тела трубы
      EDn:= StrToFloat(SGElements.Cells[9,i]);
      // внутренний диаметр тела трубы
      EDv:= StrToFloat(SGElements.Cells[10,i]);
      // имя элемента
      E7:=SGElements.Cells[1,i];
      // плотность бурового раствора
      CMud:= StrToFloat(Fpcmenu.SGFactors.Cells[1,1]);
      // коэффициент трения труб о стенки скважины
      ECfr:= StrToFloat(Fpcmenu.SGFactors.Cells[1,2]);
      // коэффициент инерции
      ECi:= StrToFloat(Fpcmenu.SGFactors.Cells[1,3]);
      // коэффициент изгиба бурильной колонны
      ECb:= StrToFloat(Fpcmenu.SGFactors.Cells[1,4]);
      // учитывать(1)/не учитывать (0) коэффициент плавучести
      if Fpcmenu.CheckMud.Checked=False then MufFactorTrue:='0';
      if Fpcmenu.CheckMud.Checked=True then MufFactorTrue:='1';

      PipeWeight1.InputData (E1, E2, E3, E4, E5, E6, EDn, EDv, CMud, ECfr,
      ECi, ECb,  E7, MufFactorTrue);
      // расчёт массы
      PipeWeight1.PipeCalc;
      // плонтность трубы, кг/м куб
      SGElements.Cells[11,i]:= FloatToStrF(PipeWeight1.Density,ffFixed,10,2);
      // коэффициент плавучести
      SGElements.Cells[12,i]:= FloatToStrF(PipeWeight1.SwimFactor,ffFixed,10,2);
      // масса в кг
      SGElements.Cells[19,i]:= FloatToStrF(PipeWeight1.PipeMass,ffFixed,10,2);
      // вес, кН
      SGElements.Cells[20,i]:= FloatToStrF(PipeWeight1.PipeWeigh,ffFixed,10,2);
      // расчёт силы трения, кН
      SGElements.Cells[18,i]:= FloatToStrF(PipeWeight1.FrictionWeight,ffFixed,10,2);

     end;
   //PipeWeight1.GFPShowMessage;
   PipeWeight1.Free;
end;

procedure TFTableOfElements.FormCreate(Sender: TObject);
begin
 // свойства таблицы StringGrid1
  SGElements.ColWidths[0] := 40;
  SGElements.ColWidths[1] := 200;
  SGElements.ColWidths[2] := 120;
  SGElements.ColWidths[3] := 90;
  SGElements.ColWidths[4] := 90;
  SGElements.ColWidths[5] := 90;
  SGElements.ColWidths[6] := 120;
  SGElements.ColWidths[7] := 90;
  SGElements.ColWidths[8] := 120;
  SGElements.ColWidths[9] := 70;
  SGElements.ColWidths[10] := 70;
  SGElements.ColWidths[11] := 120;
  SGElements.ColWidths[12] := 150;
  SGElements.ColWidths[13] := 90;

  SGElements.ColWidths[18] := 120;
  SGElements.ColWidths[19] := 120;
  SGElements.ColWidths[20] := 120;


  SGElements.Cells[0,0]:='№';
  SGElements.Cells[1,0]:='Наименование';
  SGElements.Cells[2,0]:='Длина муфты, мм';
  SGElements.Cells[3,0]:='Масса i,кг';
  SGElements.Cells[4,0]:='Масса м,кг';
  SGElements.Cells[5,0]:='Масса 2в,кг';
  SGElements.Cells[6,0]:='Длина элемента, м';
  SGElements.Cells[7,0]:='Глубина, м';
  SGElements.Cells[8,0]:='Зенитный угол, м';
  SGElements.Cells[9,0]:='Д н, мм';
  SGElements.Cells[10,0]:='Д вн, мм';
  SGElements.Cells[11,0]:='Плотность, кг/м3';
  SGElements.Cells[12,0]:='Коэффициент плавучести';
  SGElements.Cells[13,0]:='индекс';

  SGElements.Cells[18,0]:='Сила трения, кН';
  SGElements.Cells[19,0]:='Масса, кг';
  SGElements.Cells[20,0]:='Вес, кН';

end;

procedure TFTableOfElements.LeghtSum;
// нарастающий итог длины инструмента
var i, ERow: integer;
 Sum1 : Real;
begin
 ERow:=SGElements.RowCount-1;
 SGElements.Cells[7,1]:= SGElements.Cells[6,1];
  for i := 2 to ERow do
    begin
      SGElements.Cells[7,i]:=FloatToStr(StrToFloat(SGElements.Cells[7,i-1])+
      StrToFloat(SGElements.Cells[6,i]));
    end;

end;

procedure TFTableOfElements.PipeWeightSection;
// суммируем вес каждой секции
 var i,i2 : Integer;
begin
 for i := 1 to Fcalculator3i.StringGrid1.RowCount-1 do
 begin
   for i2 := 1 to SGElements.RowCount-1 do
   begin
     if SGElements.Cells[13,i2]=Fcalculator3i.StringGrid1.Cells[16,i] then
     begin
     Fcalculator3i.StringGrid1.Cells[13,i]:= FloatToStr(StrToFloat(Fcalculator3i.StringGrid1.Cells[13,i])+
     StrToFloat(SGElements.Cells[19,i2]));
     Fcalculator3i.StringGrid1.Cells[15,i]:= FloatToStr(StrToFloat(Fcalculator3i.StringGrid1.Cells[15,i])+
     StrToFloat(SGElements.Cells[20,i2]));
     end;
   end;

 end;




end;

procedure TFTableOfElements.SGElementsClear;
 var i, a : Integer;
begin
  for i := 0 to SGElements.ColCount do
   begin
     for a := 1 to SGElements.RowCount do SGElements.Cells[i,a]:='';
   end;

  SGElements.RowCount:=1;
end;

procedure TFTableOfElements.Zenit;
// опреднляем значение зенитного угла для каждого элемента
 var i, ip, Z: Integer;
begin
 Z:= FrmProjectionEXL.SGexcel.RowCount-2;
  for i := 1 to SGElements.RowCount-1 do
  begin
    for ip := 1 to Z do
    begin
      if (StrToFloat(SGElements.Cells[7,i])<StrToFloat(FrmProjectionEXL.SGexcel.Cells[0,ip+1]))
      and (StrToFloat(SGElements.Cells[7,i])>=StrToFloat(FrmProjectionEXL.SGexcel.Cells[0,ip])) then
      begin
       SGElements.Cells[8,i]:= FrmProjectionEXL.SGexcel.Cells[1,ip]
      end
    end;

  end;

end;

end.
