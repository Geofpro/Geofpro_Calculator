object FrDeleteRecordUserRef: TFrDeleteRecordUserRef
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'GEOFPRO Calculator 3i'
  ClientHeight = 153
  ClientWidth = 369
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
    Width = 369
    Height = 113
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 50
      Width = 168
      Height = 13
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072'?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 40
    Top = 120
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 120
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
