object Freference: TFreference
  Left = 0
  Top = 0
  Caption = 'GEOFPRO '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 518
  ClientWidth = 1046
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 49
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 16
      Top = 15
      Width = 681
      Height = 21
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        #1041#1091#1088#1080#1083#1100#1085#1099#1077' '#1090#1088#1091#1073#1099
        #1047#1072#1084#1082#1080' '#1073#1091#1088#1080#1083#1100#1085#1099#1093' '#1090#1088#1091#1073
        #1059#1041#1058
        #1041#1091#1088#1086#1074#1086#1081' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090', '#1075#1077#1086#1092#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1087#1088#1080#1073#1086#1088#1099
        #1042#1047#1044' '
        #1058#1088#1091#1073#1099' '#1082#1086#1083#1090#1102#1073#1080#1085#1075
        #1053#1050#1058
        #1054#1073#1089#1072#1076#1085#1099#1077' '#1090#1088#1091#1073#1099
        #1058#1041#1058)
    end
    object Button1: TButton
      Left = 744
      Top = 13
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1046
    Height = 434
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1041#1091#1088#1080#1083#1100#1085#1099#1077' '#1090#1088#1091#1073#1099
      TabVisible = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'-'#1085
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'-'#1074
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1077#1085#1082#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1095#1085#1086#1089#1090#1080
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1072#1084#1086#1082
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1091#1092#1090#1072'-'#1085#1076
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1091#1092#1090#1072'-'#1074#1076
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1091#1092#1090#1072'-'#1076#1083
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'-'#1074
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'-'#1084
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1046#1077#1089#1090#1082#1086#1089#1090#1100'-'#1080
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1046#1077#1089#1090#1082#1086#1089#1090#1100'-'#1089
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1043#1054#1057#1058
            Width = 90
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1084#1082#1080
      ImageIndex = 1
      TabVisible = False
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1085
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1074
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'_'#1082#1075
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1059#1041#1058
      ImageIndex = 2
      TabVisible = False
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1085', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1074', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072', '#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072', '#1082#1075
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072
            Width = 120
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1082#1074#1072#1078#1080#1085#1085#1099#1081' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090
      ImageIndex = 3
      TabVisible = False
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1085
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1074
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_max'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072#1056#1072#1089#1095
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1047#1044
      ImageIndex = 4
      TabVisible = False
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1082#1086#1088#1087#1091#1089#1072'_'#1084#1080#1085
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1082#1086#1088#1087#1091#1089#1072'_'#1084#1072#1082#1089
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072'_'#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'_'#1076#1074#1080#1075#1072#1090#1077#1083#1103
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1076#1086#1083#1086#1090#1072'_'#1084#1080#1085
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1076#1086#1083#1086#1090#1072'_'#1084#1072#1082#1089
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072'_'#1076#1086#1083'_'#1072#1087#1080
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072'_'#1076#1086#1083'_'#1075#1086#1089#1090
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072'_'#1090#1088#1091#1073#1072'_'#1072#1087#1080
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072'_'#1090#1088#1091#1073#1072'_'#1075#1086#1089#1090
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072'_'#1096#1087#1080#1085#1076'_'#1076#1086'_'#1080#1089#1082#1088
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1087#1086#1079#1086#1085'_'#1080#1089#1082#1088'_'#1075#1088#1072#1076
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1086#1087#1091#1089#1090#1080#1084#1072#1103'_'#1086#1089#1077#1074#1072#1103'_'#1082#1053
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'z'#1088'_z'#1089#1090
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1063#1080#1089#1083#1086'_'#1096#1072#1075#1086#1074'_'#1089#1090#1072#1090#1086#1088#1072
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072'_'#1072#1082#1090#1080#1074'_'#1089#1090#1072#1090#1086#1088#1072
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1072#1073#1086#1095#1080#1081'_'#1086#1073#1098#1077#1084'_'#1083'_'#1086#1073
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1072#1089#1093#1086#1076'_'#1083'_'#1089'_'#1084#1080#1085
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1072#1089#1093#1086#1076'_'#1083'_'#1089'_'#1084#1072#1082#1089
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1063#1072#1089#1090#1086#1090#1072'_'#1093#1086#1083#1086#1089#1090'_'#1086#1073'_'#1084#1080#1085
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1063#1072#1089#1090#1086#1090#1072'_'#1093#1086#1083#1086#1089#1090'_'#1086#1073'_'#1084#1072#1082#1089
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1092'_'#1087#1077#1088#1077#1087#1072#1076'_'#1076#1072#1074#1083'_'#1084#1080#1085'_'#1052#1055#1072
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1092'_'#1087#1077#1088#1077#1087#1072#1076'_'#1076#1072#1074#1083'_'#1084#1072#1082#1089'_'#1052#1055#1072
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1084#1077#1085#1090'_'#1089#1080#1083#1099'_'#1084#1080#1085'_'#1082#1053'_'#1084
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1084#1077#1085#1090'_'#1089#1080#1083#1099'_'#1084#1072#1082#1089'_'#1082#1053'_'#1084
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1097#1085#1086#1089#1090#1100'_'#1084#1080#1085'_'#1082#1042#1090
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1097#1085#1086#1089#1090#1100'_'#1084#1072#1082#1089'_'#1082#1042#1090
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
            Width = 60
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1043#1053#1050#1058
      ImageIndex = 6
      TabVisible = False
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource6
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1088#1091#1078#1085#1099#1081'_'#1076#1080#1072#1084#1077#1090#1088'_'#1084#1084
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1086#1083#1097#1080#1085#1072'_'#1089#1090#1077#1085#1082#1080'_'#1084#1084
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' _'#1076#1080#1072#1084#1077#1090#1088'_ '#1084#1084
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'_'#1082#1075
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1083#1086#1097#1072#1076#1100'_'#1087#1086#1087#1077#1088#1077#1095#1085#1086#1075#1086'_'#1084#1084'2'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1083#1086#1097#1072#1076#1100'_'#1087#1088#1086#1093#1086#1076#1085#1086#1075#1086'_'#1084#1084'2'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1103#1103' '#1105#1084#1082#1086#1089#1090#1100'_'#1083#1080#1090#1088'_100_'#1084
            Width = 130
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1053#1050#1058
      ImageIndex = 7
      TabVisible = False
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource7
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1085', '#1084#1084
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1086#1083#1097#1080#1085#1072' '#1089#1090#1077#1085#1082#1080', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1074#1085','#1084#1084
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1074#1099#1089#1072#1076#1082#1080', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072' '#1074#1099#1089#1072#1076#1082#1080
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072', '#1082#1075
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1084#1072#1089#1089#1099', '#1082#1075
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1084#1091#1092#1090#1099', '#1082#1075
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1083#1080#1085#1072' '#1084#1091#1092#1090#1099', '#1082#1075
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072' '#1084#1091#1092#1090#1099', '#1082#1075
            Width = 120
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1054#1073#1089#1072#1076#1085#1099#1077' '#1090#1088#1091#1073#1099
      ImageIndex = 8
      TabVisible = False
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource8
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1085', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1074#1085', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1086#1083#1097#1080#1085#1072' '#1089#1090#1077#1085#1082#1080', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1084#1091#1092#1090#1099', '#1084#1084
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1077#1089', '#1082#1053
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088' '#1084#1091#1092#1090#1099' '#1091#1084#1077#1085', '#1084#1084
            Width = 140
            Visible = True
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = #1058#1041#1058
      ImageIndex = 8
      TabVisible = False
      object DBGrid9: TDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSource9
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1064#1080#1092#1088
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1085
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1074#1085
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1080#1072#1084#1077#1090#1088'_'#1084
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1077#1079#1100#1073#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1072#1089#1089#1072'_'#1084
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object ESG1col: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ESG1col'
    Visible = False
  end
  object ESG1row: TEdit
    Left = 128
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'ESG1row'
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 483
    Width = 1046
    Height = 35
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 4
    object DBNavigator1: TDBNavigator
      Left = 9
      Top = 5
      Width = 240
      Height = 25
      Cursor = crHandPoint
      DataSource = DataModule1.DataSource1
      TabOrder = 0
    end
  end
end
