object FrmDiagram: TFrmDiagram
  Left = 0
  Top = 0
  Caption = 
    'GEOFPRO Calculator  '#1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1074#1077#1089#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085 +
    #1085#1099', '#1082#1053
  ClientHeight = 490
  ClientWidth = 927
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 927
    Height = 490
    Legend.Alignment = laBottom
    Legend.CheckBoxesStyle = cbsRadio
    Legend.TextStyle = ltsValue
    Legend.TopPos = 11
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    Color = clWhite
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TPieSeries
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
      OtherSlice.Legend.TextStyle = ltsPercent
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
    end
  end
end
