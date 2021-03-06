object FrReports: TFrReports
  Left = 0
  Top = 0
  Width = 1001
  Height = 788
  AutoScroll = True
  Caption = 'FrReports'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 81
    Align = alTop
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Button1: TButton
      Left = 56
      Top = 24
      Width = 97
      Height = 33
      Caption = #1054#1090#1082#1088#1099#1090#1100' FR'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 176
      Top = 24
      Width = 97
      Height = 33
      Caption = #1054#1090#1095#1105#1090' AllDate'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 296
      Top = 24
      Width = 105
      Height = 33
      Caption = 'DB'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 423
      Top = 24
      Width = 105
      Height = 33
      Caption = 'DROP TAB'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 559
      Top = 24
      Width = 105
      Height = 33
      Caption = 'ImportData'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 688
      Top = 24
      Width = 97
      Height = 33
      Caption = 'Picture'
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 81
    Width = 985
    Height = 668
    Align = alClient
    TabOrder = 1
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44373.405471122700000000
    ReportOptions.LastChange = 44402.655452511570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' Category1'
        Value = Null
      end
      item
        Name = 'diagram_pic'
        Value = ''
      end
      item
        Name = 'projection_pic'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageTitle: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo2: TfrxMemoView
        Left = 170.078850000000000000
        Top = 347.716760000000000000
        Width = 430.866420000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1056#1072#1087#1086#1088#1090' '#1088#1072#1089#1095#1105#1090#1072' '#1074#1077#1089#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099'.')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 15.118120000000000000
        Top = 1024.252630000000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1099#1087#1086#1083#1085#1077#1085#1086' '#1074' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1080' GEOFPRO Calculator 3i')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 37.795300000000000000
        Top = 472.441250000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1082#1074#1072#1078#1080#1085#1072':')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 37.795300000000000000
        Top = 510.236550000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1052#1077#1089#1090#1086#1088#1086#1078#1076#1077#1085#1080#1077':')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 37.795300000000000000
        Top = 548.031850000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1099#1087#1086#1083#1085#1080#1083)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 37.795300000000000000
        Top = 623.622450000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1083#1078#1085#1086#1089#1090#1100':')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 37.795300000000000000
        Top = 661.417750000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1048#1054':')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 37.795300000000000000
        Top = 585.827150000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 37.795300000000000000
        Top = 774.803650000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1072#1079#1095#1080#1082':')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 37.795300000000000000
        Top = 699.213050000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
      end
      object frxDBDataset2Well: TfrxMemoView
        Left = 188.976500000000000000
        Top = 472.441250000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'Well'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."Well"]')
      end
      object frxDBDataset2OilField: TfrxMemoView
        Left = 188.976500000000000000
        Top = 510.236550000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'OilField'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."OilField"]')
      end
      object frxDBDataset2Staff: TfrxMemoView
        Left = 188.976500000000000000
        Top = 623.622450000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'Staff'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."Staff"]')
      end
      object frxDBDataset2Organization: TfrxMemoView
        Left = 188.976500000000000000
        Top = 585.827150000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'Organization'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."Organization"]')
      end
      object frxDBDataset2Person: TfrxMemoView
        Left = 188.976500000000000000
        Top = 661.417750000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'Person'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."Person"]')
      end
      object frxDBDataset2DateReport: TfrxMemoView
        Left = 188.976500000000000000
        Top = 699.213050000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'DateReport'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."DateReport"]')
      end
      object frxDBDataset2Client: TfrxMemoView
        Left = 188.976500000000000000
        Top = 774.803650000000000000
        Width = 498.897960000000000000
        Height = 18.897650000000000000
        DataField = 'Client'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."Client"]')
      end
    end
    object PageMain: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1056#1072#1089#1095#1105#1090' '#1084#1072#1089#1089#1099' '#1080' '#1074#1077#1089#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099'.')
          ParentFont = False
        end
      end
      object Memo23: TfrxMemoView
        Left = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072', '#1082#1075'/'#1084' '#1082#1091#1073)
        ParentFont = False
      end
      object frxDBDataset2MudDensity: TfrxMemoView
        Left = 570.709030000000000000
        Top = 207.874150000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'MudDensity'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."MudDensity"]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1090#1088#1077#1085#1080#1103', Kfr')
        ParentFont = False
      end
      object frxDBDataset2kfr: TfrxMemoView
        Left = 570.709030000000000000
        Top = 245.669450000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'kfr'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."kfr"]')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1089#1080#1083' '#1080#1085#1077#1088#1094#1080#1080', '#1089#1080#1083' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1103' '#1076#1074#1080#1078#1077#1085#1080#1102' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089 +
            #1090#1074#1086#1088#1072', Ki')
        ParentFont = False
      end
      object frxDBDataset2Ki: TfrxMemoView
        Left = 570.709030000000000000
        Top = 283.464750000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'Ki'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."Ki"]')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090', '#1091#1095#1080#1090#1099#1074#1072#1102#1097#1080#1081' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1080#1079#1075#1080#1073#1072' '#1073#1091#1088#1080#1083#1100#1085#1099#1093' '#1090#1088#1091#1073', Kb')
        ParentFont = False
      end
      object frxDBDataset2Kb: TfrxMemoView
        Left = 570.709030000000000000
        Top = 321.260050000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'Kb'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."Kb"]')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 22.677180000000000000
        Top = 94.488250000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1083#1080#1085#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084)
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 3.779530000000000000
        Top = 49.133890000000000000
        Width = 710.551640000000000000
        Color = clBlack
        Frame.Color = clTeal
        Frame.Typ = [ftTop]
      end
      object frxDBDataset2LengthDrillPipe: TfrxMemoView
        Left = 570.709030000000000000
        Top = 94.488250000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'LengthDrillPipe'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."LengthDrillPipe"]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 22.677180000000000000
        Top = 132.283550000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1052#1072#1089#1089#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1090#1086#1085#1085#1099)
        ParentFont = False
      end
      object frxDBDataset2MassDrillPipe: TfrxMemoView
        Left = 570.709030000000000000
        Top = 132.283550000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'MassDrillPipe'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."MassDrillPipe"]')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 514.016080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1077#1089' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1082#1053)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 22.677180000000000000
        Top = 377.953000000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':')
        ParentFont = False
      end
      object frxDBDataset2Comments: TfrxMemoView
        Left = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 680.315400000000000000
        Height = 94.488250000000000000
        DataField = 'Comments'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."Comments"]')
        ParentFont = False
      end
      object frxDBDataset2WeightDrillPipe: TfrxMemoView
        Left = 570.709030000000000000
        Top = 170.078850000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        DataField = 'WeightDrillPipe'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."WeightDrillPipe"]')
      end
    end
    object PageTable: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NamePipe: TfrxMemoView
          Left = 37.795300000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'NamePipe'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NamePipe"]')
          ParentFont = False
        end
        object frxDBDataset1Dn: TfrxMemoView
          Left = 204.094620000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DataField = 'Dn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Dn"]')
          ParentFont = False
        end
        object frxDBDataset1Dvn: TfrxMemoView
          Left = 283.464750000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'Dvn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Dvn"]')
          ParentFont = False
        end
        object frxDBDataset1Dmax: TfrxMemoView
          Left = 359.055350000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'Dmax'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Dmax"]')
          ParentFont = False
        end
        object frxDBDataset1Dcn: TfrxMemoView
          Left = 434.645950000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'Dcn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Dcn"]')
          ParentFont = False
        end
        object frxDBDataset1Dcvn: TfrxMemoView
          Left = 510.236550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'Dcvn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Dcvn"]')
          ParentFont = False
        end
        object frxDBDataset1LeghtConnector: TfrxMemoView
          Left = 585.827150000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'LeghtConnector'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."LeghtConnector"]')
          ParentFont = False
        end
        object frxDBDataset1LeghtElement: TfrxMemoView
          Left = 737.008350000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'LeghtElement'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."LeghtElement"]')
          ParentFont = False
        end
        object frxDBDataset1MassTone: TfrxMemoView
          Left = 812.598950000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'MassTone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."MassTone"]')
          ParentFont = False
        end
        object frxDBDataset1Weight: TfrxMemoView
          Left = 888.189550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'Weight'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Weight"]')
          ParentFont = False
        end
        object frxDBDataset1LeghtSection: TfrxMemoView
          Left = 661.417750000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'LeghtSection'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."LeghtSection"]')
          ParentFont = False
        end
        object frxDBDataset1id: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 166.299320000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Width = 79.370078740000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#1085', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#1074#1085', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 359.055350000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dmax, '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 434.645950000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#1084#1085', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 510.236550000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#1084#1074#1085', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'L'#1084', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'L'#1089', '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 737.008350000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Le, '#1084#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 812.598950000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052', '#1090#1086#1085#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 888.189550000000000000
          Width = 75.590551180000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'W, '#1082#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Width = 37.795300000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object PageProjection: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Align = baClient
        Width = 718.110700000000000000
        Height = 1046.929810000000000000
        AutoSize = True
        Center = True
        FileLink = '[projection_pic]'
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo42: TfrxMemoView
        Left = 26.456710000000000000
        Top = 11.338590000000000000
        Width = 589.606680000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clTeal
        Memo.UTF8W = (
          #1055#1088#1086#1077#1082#1094#1080#1103' '#1087#1088#1086#1092#1080#1083#1103' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1085#1072' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1091#1102' '#1087#1083#1086#1089#1082#1086#1089#1090#1100', '#1084)
        ParentFont = False
      end
    end
    object PageWeight: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture2: TfrxPictureView
        Align = baClient
        Width = 1046.929810000000000000
        Height = 718.110700000000000000
        Center = True
        FileLink = '[diagram_pic]'
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo43: TfrxMemoView
        Left = 37.795300000000000000
        Top = 11.338590000000000000
        Width = 483.779840000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clTeal
        Memo.UTF8W = (
          #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1074#1077#1089#1072' '#1089#1077#1082#1094#1080#1081' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1082#1053)
        ParentFont = False
      end
    end
    object PageShortName: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo32: TfrxMemoView
        Left = 22.677180000000000000
        Top = 15.118120000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':')
      end
      object Memo31: TfrxMemoView
        Left = 18.897650000000000000
        Top = 56.692950000000000000
        Width = 419.527778740000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'D'#1085' - '#1085#1072#1088#1091#1078#1085#1099#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084#1084)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 442.205010000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'D'#1074#1085' - '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084#1084)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 563.149970000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            'Dmax - '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1085#1072#1088#1091#1078#1085#1099#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099',' +
            ' '#1084#1084)
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 453.543600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'D'#1084#1085' - '#1076#1080#1072#1084#1077#1090#1088' '#1089#1086#1077#1076#1080#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1084#1091#1092#1090#1099' '#1085#1072#1088#1091#1078#1085#1099#1081', '#1084#1084)
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 430.866420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'D'#1084#1074#1085' - '#1076#1080#1072#1084#1077#1090#1088' '#1089#1086#1077#1076#1080#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1084#1091#1092#1090#1099' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081', '#1084#1084)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 449.764070000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'L'#1084' - '#1076#1083#1080#1085#1072' '#1089#1086#1077#1076#1080#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1084#1091#1092#1090#1099', '#1084)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 427.086890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'L'#1089' - '#1076#1083#1080#1085#1072' '#1089#1077#1082#1094#1080#1080' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 427.086890000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Le - '#1076#1083#1080#1085#1072' '#1086#1076#1085#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 18.897650000000000000
        Top = 362.834880000000000000
        Width = 423.307360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1052' - '#1084#1072#1089#1089#1072' '#1089#1077#1082#1094#1080#1080' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1090#1086#1085#1085#1072)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 18.897650000000000000
        Top = 400.630180000000000000
        Width = 408.189240000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'W - '#1074#1077#1089' '#1089#1077#1082#1094#1080#1080' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1082#1053)
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataModule1.DataSourcePipeCalculator
    BCDToCurrency = False
    Left = 496
    Top = 96
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = DataModule1.DataSourcePersonDate
    BCDToCurrency = False
    Left = 408
    Top = 97
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 696
    Top = 105
  end
end
