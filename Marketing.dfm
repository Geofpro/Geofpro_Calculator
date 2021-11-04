object FrMarketing: TFrMarketing
  Left = 0
  Top = 0
  Caption = 'GEOFPRO Calculator 3i'
  ClientHeight = 549
  ClientWidth = 1187
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1187
    Height = 49
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 998
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 213
      Height = 13
      Caption = #1055#1072#1088#1090#1085#1105#1088#1099' '#1087#1088#1086#1077#1082#1090#1072' GEOFPRO Calculator 3i:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 49
    Width = 1187
    Height = 500
    Align = alClient
    TabOrder = 1
    OnMouseWheelDown = ScrollBox1MouseWheelDown
    OnMouseWheelUp = ScrollBox1MouseWheelUp
    ExplicitTop = 65
  end
end
