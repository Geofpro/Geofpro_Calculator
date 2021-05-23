object FrmProjectionEXL: TFrmProjectionEXL
  Left = 0
  Top = 0
  Caption = 
    'GFP Calculator 3i  '#1055#1088#1086#1077#1082#1094#1080#1103' '#1087#1088#1086#1092#1080#1083#1103' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1085#1072' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1091#1102' '#1087#1083#1086 +
    #1089#1082#1086#1089#1090#1100
  ClientHeight = 478
  ClientWidth = 1244
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SGexcel: TStringGrid
    Left = 0
    Top = 41
    Width = 670
    Height = 437
    Align = alLeft
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Chart1: TChart
    Left = 670
    Top = 41
    Width = 574
    Height = 437
    Legend.Visible = False
    Title.Visible = False
    View3D = False
    Align = alClient
    Color = clWhite
    TabOrder = 1
    ExplicitLeft = 784
    ExplicitTop = 56
    ExplicitWidth = 465
    ExplicitHeight = 401
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1244
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = 712
    ExplicitTop = 24
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 54
      Height = 13
      Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ENameFile: TEdit
      Left = 104
      Top = 11
      Width = 546
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 256
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 192
    Top = 96
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object Excel1: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1080#1079' Excel '#1092#1072#1081#1083#1072
        OnClick = Excel1Click
      end
      object N2: TMenuItem
        Caption = #1042#1099#1081#1090#1080
      end
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N4: TMenuItem
        Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      end
    end
  end
end
