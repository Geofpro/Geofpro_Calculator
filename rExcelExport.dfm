object FrExcelExport: TFrExcelExport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'GEOFPRO Calculator 3i'
  ClientHeight = 153
  ClientWidth = 382
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 113
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 50
      Width = 192
      Height = 13
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074' Excel '#1076#1086#1082#1091#1084#1077#1085#1090'?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 24
    Top = 120
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = #1069#1082#1089#1087#1086#1088#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 120
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
