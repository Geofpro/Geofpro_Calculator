object Fcalculator3i: TFcalculator3i
  Left = 0
  Top = 0
  Caption = 'GEOFPRO '#1056#1072#1089#1095#1105#1090' '#1074#1077#1089#1072' '#1073#1091#1088#1080#1083#1100#1085#1099#1093' '#1090#1088#1091#1073
  ClientHeight = 489
  ClientWidth = 892
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 892
      Height = 21
      Align = alTop
      Caption = 'Panel2'
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 21
        Height = 19
        Cursor = crHandPoint
        Align = alLeft
        AutoSize = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000150000
          00130802000000F02CD1DC000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          344944415478DA635CB0600903058071543F76FD262606C8DC33672E8CEA275A
          3F9A663C4610883FA041B86C1E11FA0982A1AE1F00B46042002B1B8652000000
          0049454E44AE426082}
        ExplicitLeft = 8
        ExplicitTop = 6
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 73
    Width = 892
    Height = 416
    Align = alClient
    ColCount = 14
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 672
    Top = 112
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100'..'
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'..'
      end
    end
    object N4: TMenuItem
      Caption = #1056#1072#1087#1086#1088#1090
      object Excel1: TMenuItem
        Caption = 'Excel'
      end
      object PDF1: TMenuItem
        Caption = 'PDF'
      end
    end
  end
end
