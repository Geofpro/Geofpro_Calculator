unit GFPPipeWeight;

interface

uses SysUtils, Dialogs, Classes;

type
    TPipeWeight = class
private
    FNamePipe: String;  // название элемента бурильной колонны
    FPipeWeight : Real; // вес элемента, кН
    FFrictionWeight: Real;// состовляющая силы трения (проекция на горизонтальную ось)
    FPipeMass : Real; // масса трубы (элемента бурильной колонны), кг
    FMassi : Real; // масса одного метра трубы, кг
    FMassConnector : Real; // масса муфты, кг
    FMass2Thickening : Real; // масса двух высадок, кг
    FSectionLength : Real; // длина секции, м
    FPipeLenght : Real; // длина одной трубы, м
    FConnectorLenght : Real; // длина муфты, мм!!!
    FZenitAngle : Real; // зенитный угол, радианы
    FDensity : Real; // плотность, кг/м3
    FDn: Real; // диаметр трубы наружный, м
    FDv: Real; //внутренний диаметр трубы, м
    FDensityMud: Real;// плотность бурового раствора
    FSwimFactor: Real; // коэффициент плавучести
    FFrictionFactor: Real; // коэффициент трения
    FInertiaFactor: Real; // коэффициент инерции
    FPipeBendFactor: Real; // коэффициент изгиба колонны труб
    FMudFactorTrue: String; // 1-учитываем коэффициент плавучасти, 0-не учитываем

 public
 property NamePipe: string read FNamePipe write FNamePipe;

 property PipeWeigh: Real read FPipeWeight write FPipeWeight;


 property Massi: Real read FMassi write FMassi;
 property MassC: Real read FMassConnector write FMassConnector;
 property Mass2t: Real read FMass2Thickening write FMass2Thickening;
 property LenghtS: Real read FSectionLength write FSectionLength;
 property LenghtP: Real read FPipeLenght write FPipeLenght;
 property LenghtC: Real read FConnectorLenght write FConnectorLenght;
 procedure RadianT(Ze1:Real); //углы переводим в радианы
 property ZenitA: Real read FZenitAngle write RadianT;
 property PipeMass: Real read FPipeMass write FPipeMass;
 property Density: Real read FDensity write FDensity;
 property DensityMud: Real read FDensityMud write FDensityMud;
 property Dn: Real read FDn write Fdn;
 property Dv: Real read FDv write Fdv;
 property SwimFactor : Real read FSwimFactor write FSwimFactor;
 property FrictionFactor: Real read FFrictionFactor write FFrictionFactor;
 property InertiaFactor: Real read FInertiaFactor write FInertiaFactor;
 property PipeBendFactor: Real read FPipeBendFactor write FPipeBendFactor;
 property MudFactorTrue: String read FMudFactorTrue write FMudFactorTrue;
 property FrictionWeight: Real read FFrictionWeight write FFrictionWeight;

 procedure InputData ( Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr,
 Ci, Cb : Real; Np, Mf : String);
 procedure PipeCalc;  // расчёт массы и веса
 procedure GFPShowMessage;
 procedure DensityCalc; // расчёт плотности
 procedure SwimFactorCalc; // рассчитываем коэффициент плавучести



 constructor Create;


    end;

implementation

// класс выполняет расчёт массы и веса элементов бурильной колонны
// процедура  InputData предназначена для обращения к свойствам класса, и
// служит для передачи данных для расчёта объекту класса
// вызов класса происходит из модуля TableOfElements
// Класс расчитывает плотность бурильных труб,
// плотность замка и высадки равна плотности трубы.
// Класс переводит углы в радианы.



{ TPipeWeight }

constructor TPipeWeight.Create;
begin
  //InputData;
  //GFPShowMessage;
end;

procedure TPipeWeight.DensityCalc;
 var VolumeEl: Real; // объём элемента, куб м
begin
  VolumeEl:=Pi/4*((Dn*Dn)-(Dv*Dv));
  Density:= Massi/VolumeEl;
end;

procedure TPipeWeight.GFPShowMessage;
begin
 ShowMessage('Расчёт выполнен');
end;

procedure TPipeWeight.InputData(Mi, Mc, M2t, Lp, Lc, Zen, Dne, Dve, CMudE, Cfr,
 Ci, Cb : Real; Np, Mf: String);
  // импорт данных для расчёта
begin
  NamePipe:=Np;
  Massi:=Mi;
  MassC:=Mc;
  Mass2T:=M2t;
  LenghtP:=Lp;
  LenghtC:=Lc;
  ZenitA:= Zen;
  Dn:=Dne/1000;
  Dv:=Dve/1000;
  DensityMud:= CMudE;
  FrictionFactor:=Cfr;
  InertiaFactor:= Ci;
  PipeBendFactor:=Cb;
  MudFactorTrue:=Mf;
end;

procedure TPipeWeight.RadianT(Ze1 : Real);
// переводим углы в радианы
begin
  FZenitAngle:= Ze1*Pi/180;
end;

procedure TPipeWeight.SwimFactorCalc;
// определяет коэффициент плавучести
begin
 if MudFactorTrue='1' then SwimFactor:= 1-(DensityMud/Density)
 else  SwimFactor:=1;
end;

procedure TPipeWeight.PipeCalc;
begin
 // расчёт плотности бурового инструмента
  DensityCalc;
 // расчёт коэффициента плавучести
  SwimFactorCalc;
 // расчёт массы бурового инструмента
  PipeMass := Massi*(LenghtP-(LenghtC/1000))+MassC+Mass2t;
 // расчёт веса инструмента
  PipeWeigh:= 9.81*SwimFactor*InertiaFactor*PipeBendFactor*
  (PipeMass*(FrictionFactor*sin(ZenitA) + cos(ZenitA))/1000) ;
 // расчёт состовляющей силы трения (проекция на горизонтальный участок)
  FrictionWeight:= 9.81*PipeMass*FrictionFactor*sin(ZenitA)/1000 ;


end;

end.
