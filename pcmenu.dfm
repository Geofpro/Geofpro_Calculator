object Fpcmenu: TFpcmenu
  Left = 0
  Top = 0
  Align = alLeft
  BorderStyle = bsNone
  Caption = 'Fpcmenu'
  ClientHeight = 521
  ClientWidth = 703
  Color = 10652205
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 521
    Align = alLeft
    Caption = 'Panel1'
    Color = 10652205
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Popen: TPanel
      Left = 1
      Top = 42
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1054#1090#1082#1088#1099#1090#1100' '
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = PopenClick
      OnMouseLeave = PopenMouseLeave
      OnMouseMove = PopenMouseMove
    end
    object Psave: TPanel
      Left = 1
      Top = 83
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = PsaveClick
      OnMouseLeave = PsaveMouseLeave
      OnMouseMove = PsaveMouseMove
    end
    object Pperson: TPanel
      Left = 1
      Top = 124
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083#1080#1079#1072#1094#1080#1103' '#1086#1090#1095#1105#1090#1086#1074
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = PpersonClick
      OnMouseLeave = PpersonMouseLeave
      OnMouseMove = PpersonMouseMove
    end
    object Pbit: TPanel
      Left = 1
      Top = 165
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1076#1080#1072#1084#1077#1090#1088#1086#1074' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = PbitClick
      OnMouseLeave = PbitMouseLeave
      OnMouseMove = PbitMouseMove
    end
    object Pmud: TPanel
      Left = 1
      Top = 206
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '#1088#1072#1089#1095#1105#1090#1072
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = PmudClick
      OnMouseLeave = PmudMouseLeave
      OnMouseMove = PmudMouseMove
    end
    object Pminimaized: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = '<'
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = PminimaizedClick
      OnMouseLeave = PminimaizedMouseLeave
      OnMouseMove = PminimaizedMouseMove
    end
    object Pexit: TPanel
      Left = 1
      Top = 479
      Width = 215
      Height = 41
      Cursor = crHandPoint
      Align = alBottom
      BevelOuter = bvNone
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = PexitClick
      OnMouseLeave = PexitMouseLeave
      OnMouseMove = PexitMouseMove
    end
    object Pmenu: TPanel
      Left = 1
      Top = 247
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = PmenuClick
      OnMouseLeave = PmenuMouseLeave
      OnMouseMove = PmenuMouseMove
    end
    object Pelements: TPanel
      Left = 1
      Top = 288
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = #1069#1083#1077#1084#1077#1085#1090#1099' '#1073#1091#1088#1080#1083#1100#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099
      Color = 10652205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = PelementsClick
      OnMouseLeave = PelementsMouseLeave
      OnMouseMove = PelementsMouseMove
    end
  end
  object Panel2: TPanel
    Left = 217
    Top = 0
    Width = 483
    Height = 521
    Align = alLeft
    Caption = 'Panel2'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 481
      Height = 519
      ActivePage = TabMenu
      Align = alClient
      TabOrder = 0
      object TabBit: TTabSheet
        Caption = 'TabBit'
        object Label1: TLabel
          Left = 32
          Top = 40
          Width = 103
          Height = 13
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1076#1086#1083#1086#1090#1072', '#1084#1084
        end
        object Label2: TLabel
          Left = 32
          Top = 101
          Width = 376
          Height = 13
          Caption = 
            #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086#1081' '#1086#1073#1089#1072#1076#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099', '#1084 +
            #1084
        end
        object Label5: TLabel
          Left = 32
          Top = 160
          Width = 373
          Height = 13
          Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086' '#1076#1086#1087#1091#1089#1090#1080#1084#1099#1081' '#1079#1072#1079#1086#1088' '#1084#1077#1078#1076#1091' '#1076#1080#1072#1084#1077#1090#1088#1086#1084' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1080' '#1076#1080#1072#1084#1077#1090#1088#1086#1084
        end
        object Label6: TLabel
          Left = 32
          Top = 176
          Width = 115
          Height = 13
          Caption = #1073#1091#1088#1086#1074#1086#1075#1086' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
        end
        object Ebit: TEdit
          Left = 32
          Top = 60
          Width = 400
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object CheckBit: TCheckBox
          Left = 32
          Top = 272
          Width = 393
          Height = 17
          Caption = #1074#1082#1083#1102#1095#1080#1090#1100' '#1087#1088#1086#1074#1077#1088#1082#1091' '
          TabOrder = 1
        end
        object Eminpipe: TEdit
          Left = 32
          Top = 120
          Width = 400
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object Erad: TEdit
          Left = 32
          Top = 196
          Width = 400
          Height = 21
          TabOrder = 3
          Text = '2'
        end
        object Memo1: TMemo
          Left = 16
          Top = 312
          Width = 441
          Height = 137
          BorderStyle = bsNone
          Lines.Strings = (
            
              '  '#1044#1083#1103' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1076#1080#1072#1084#1077#1090#1088#1086#1074' '#1086#1090#1082#1088#1099#1090#1086#1075#1086' '#1089#1090#1074#1086#1083#1072' '#1089#1082#1074#1072#1078#1080#1085#1099' ' +
              #1080
            ' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1076#1080#1072#1084#1077#1090#1088#1072' '#1086#1073#1089#1072#1076#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1084#1091' '#1076#1080#1072#1084#1077#1090#1088#1091
            
              ' '#1089#1082#1074#1072#1078#1080#1085#1085#1086#1075#1086' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072' '#1080#1079' '#1088#1072#1089#1095#1105#1090#1085#1086#1081' '#1090#1072#1073#1083#1080#1094#1099', '#1091#1082#1072#1078#1080#1090#1077' '#1076#1080#1072#1084#1077#1090#1088' '#1076 +
              #1086#1083#1086#1090#1072','
            
              ' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086' '#1076#1086#1087#1091#1089#1090#1080#1084#1099#1081' '#1079#1072#1079#1086#1088' '#1084#1077#1078#1076#1091' '#1076#1080#1072#1084#1077#1090#1088#1086#1084' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1080' '#1076#1080#1072#1084#1077#1090#1088#1086 +
              #1084' '#1073#1091#1088#1086#1074#1086#1075#1086
            ' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072', '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1076#1080#1072#1084#1077#1090#1088' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086#1081' '#1086#1073#1089#1072#1076#1085#1086#1081' '#1082#1086#1083#1086#1085#1085#1099'.')
          TabOrder = 4
        end
      end
      object TabMud: TTabSheet
        Caption = 'TabMud'
        ImageIndex = 1
        object Memo2: TMemo
          Left = 18
          Top = 359
          Width = 431
          Height = 154
          BorderStyle = bsNone
          Lines.Strings = (
            
              'Kfr - '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1090#1088#1077#1085#1080#1103' '#1082#1086#1083#1086#1085#1085#1099' '#1086' '#1089#1090#1077#1085#1082#1080' '#1089#1082#1074#1072#1078#1080#1085#1099' '#1085#1072' '#1085#1072#1082#1083#1086#1085#1085#1086#1084' ' +
              #1080
            
              #1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086#1084' '#1091#1095#1072#1089#1090#1082#1072#1093', '#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1084#1099#1081' '#1076#1080#1072#1087#1072#1079#1086#1085' '#1079#1085#1072#1095#1077#1085#1080#1081' 0,15'#8211'0,' +
              '4'
            ''
            'Ki - '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090', '#1091#1095#1080#1090#1099#1074#1072#1102#1097#1080#1081' '#1074#1083#1080#1103#1085#1080#1077' '#1089#1080#1083' '#1090#1088#1077#1085#1080#1103' '#1085#1072' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1084
            
              #1091#1095#1072#1089#1090#1082#1077' '#1089#1082#1074#1072#1078#1080#1085#1099', '#1076#1077#1081#1089#1090#1074#1080#1103' '#1089#1080#1083' '#1080#1085#1077#1088#1094#1080#1080', '#1089#1080#1083' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1103' '#1076#1074#1080#1078#1077#1085 +
              #1080#1102
            #1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072','
            ''
            
              'Kb - '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090', '#1091#1095#1080#1090#1099#1074#1072#1102#1097#1080#1081' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1080#1079#1075#1080#1073#1072' '#1082#1086#1083#1086#1085#1085#1099' '#1073#1091#1088#1080#1083#1100#1085#1099 +
              #1093' '
            #1090#1088#1091#1073', '#1087#1088#1080' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1080' '#1095#1077#1088#1077#1079' '#1080#1089#1082#1088#1080#1074#1083#1105#1085#1085#1099#1081' '#1091#1095#1072#1089#1090#1086#1082' '#1089#1082#1074#1072#1078#1080#1085#1099'.'
            '')
          TabOrder = 0
        end
        object SGFactors: TStringGrid
          Left = 18
          Top = 17
          Width = 433
          Height = 287
          ColCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 1
        end
      end
      object TabSave: TTabSheet
        Caption = 'TabSave'
        ImageIndex = 2
        object MemoSave: TMemo
          Left = 15
          Top = 37
          Width = 442
          Height = 428
          Lines.Strings = (
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            '')
          TabOrder = 0
        end
      end
      object TabMenu: TTabSheet
        Caption = 'TabMenu'
        ImageIndex = 3
        object CheckMud: TCheckBox
          Left = 18
          Top = 41
          Width = 409
          Height = 17
          Caption = 
            ' '#1085#1077' '#1091#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1083#1086#1090#1085#1086#1089#1090#1100' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072' '#1087#1088#1080' '#1088#1072#1089#1095#1077#1090#1077' '#1074#1077#1089#1072' '#1080#1085#1089#1090#1088 +
            #1091#1084#1077#1085#1090#1072
          TabOrder = 0
        end
        object CheckBoxHint: TCheckBox
          Left = 18
          Top = 82
          Width = 295
          Height = 17
          Caption = ' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1086#1076#1089#1082#1072#1079#1082#1080' '#1082#1085#1086#1087#1086#1082
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBoxHintClick
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'geofpro2|*.gfc'
    Left = 528
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'gfc'
    Filter = 'geofpro|*.gfc'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 624
    Top = 432
  end
end
