object FTableOfElements: TFTableOfElements
  Left = 0
  Top = 0
  Caption = 'FTableOfElements'
  ClientHeight = 451
  ClientWidth = 919
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
    Width = 919
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 235
      Height = 13
      Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1074#1089#1077#1093' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 320
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object SGElements: TStringGrid
    Left = 0
    Top = 41
    Width = 919
    Height = 351
    Align = alClient
    ColCount = 9
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 392
    Width = 919
    Height = 59
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
  end
end