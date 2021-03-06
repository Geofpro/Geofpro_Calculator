object FrReportsAllDate: TFrReportsAllDate
  Left = 0
  Top = 0
  Width = 980
  Height = 2690
  TabOrder = 0
  object Label1: TLabel
    Left = 400
    Top = 2656
    Width = 122
    Height = 13
    Caption = 'GEOFPRO Software 2021'
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 339
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' 1. '#1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1086' '#1089#1082#1074#1072#1078#1080#1085#1077' '#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1095#1105#1090#1072'.'
  end
  object Label3: TLabel
    Left = 24
    Top = 512
    Width = 221
    Height = 13
    Caption = #1058#1072#1073#1083#1080#1094#1072' 2. '#1042#1077#1089' '#1089#1077#1082#1094#1080#1081' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099'.'
  end
  object StringGridDate: TStringGrid
    Left = 24
    Top = 40
    Width = 900
    Height = 441
    ColCount = 2
    RowCount = 20
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object StringGridPipeCalculator: TStringGrid
    Left = 24
    Top = 531
    Width = 900
    Height = 449
    ColCount = 12
    TabOrder = 1
  end
  object Chart1: TChart
    Left = 24
    Top = 1016
    Width = 900
    Height = 750
    Legend.Visible = False
    Title.Text.Strings = (
      #1055#1088#1086#1077#1082#1094#1080#1103' '#1087#1088#1086#1092#1080#1083#1103' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1085#1072' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1091#1102' '#1087#1083#1086#1089#1082#1086#1089#1090#1100)
    View3D = False
    BorderWidth = 1
    Color = clWhite
    TabOrder = 2
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
  object Chart2: TChart
    Left = 24
    Top = 1800
    Width = 900
    Height = 700
    Legend.Alignment = laBottom
    Legend.TextStyle = ltsValue
    Title.Text.Strings = (
      #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1074#1077#1089#1072' '#1089#1077#1082#1094#1080#1081' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1082#1053)
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Color = clWhite
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TPieSeries
      Marks.Style = smsLabelPercent
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
    end
  end
end
