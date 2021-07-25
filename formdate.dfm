object Fformdate: TFformdate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'GEOFPRO '#1042#1074#1086#1076' '#1076#1072#1090#1099
  ClientHeight = 261
  ClientWidth = 459
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 261
    Align = alLeft
    Caption = 'Panel1'
    Color = 10381108
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
  end
  object MonthCalendar1: TMonthCalendar
    Left = 192
    Top = 32
    Width = 191
    Height = 160
    Date = 44275.481542650460000000
    TabOrder = 1
  end
  object Button1: TButton
    Left = 208
    Top = 208
    Width = 161
    Height = 25
    Cursor = crHandPoint
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 152
    Top = 8
    Width = 186
    Height = 21
    Date = 44381.484901678240000000
    Time = 44381.484901678240000000
    TabOrder = 3
    Visible = False
  end
end
