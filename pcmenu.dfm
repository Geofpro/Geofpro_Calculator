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
    object Lclose: TLabel
      Left = 56
      Top = 350
      Width = 100
      Height = 13
      Cursor = crHandPoint
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = LcloseClick
    end
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
      Caption = #1042#1087#1080#1089#1099#1074#1072#1077#1084#1086#1089#1090#1100' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
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
      Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072
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
      ActivePage = TabSave
      Align = alClient
      TabOrder = 0
      object TabBit: TTabSheet
        Caption = 'TabBit'
        TabVisible = False
        ExplicitTop = 6
        ExplicitHeight = 509
        object Label1: TLabel
          Left = 32
          Top = 40
          Width = 103
          Height = 13
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1076#1086#1083#1086#1090#1072', '#1084#1084
        end
        object Label2: TLabel
          Left = 32
          Top = 100
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
          Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1074#1087#1080#1089#1099#1074#1072#1077#1084#1086#1089#1090#1080' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072' '#1074' '#1089#1082#1074#1072#1078#1080#1085#1091
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
      end
      object TabMud: TTabSheet
        Caption = 'TabMud'
        ImageIndex = 1
        ExplicitTop = 6
        ExplicitHeight = 509
        object Label3: TLabel
          Left = 32
          Top = 40
          Width = 182
          Height = 13
          Caption = #1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072', '#1082#1075'/'#1084
        end
        object Label4: TLabel
          Left = 215
          Top = 36
          Width = 5
          Height = 11
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Emud: TEdit
          Left = 32
          Top = 60
          Width = 400
          Height = 21
          TabOrder = 0
          Text = 'Emud'
        end
        object CheckMud: TCheckBox
          Left = 32
          Top = 120
          Width = 409
          Height = 17
          Caption = 
            #1091#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1083#1086#1090#1085#1086#1089#1090#1100' '#1073#1091#1088#1086#1074#1086#1075#1086' '#1088#1072#1089#1090#1074#1086#1088#1072' '#1087#1088#1080' '#1088#1072#1089#1095#1077#1090#1077' '#1074#1077#1089#1072' '#1080#1085#1089#1090#1088#1091#1084#1077#1085 +
            #1090#1072
          TabOrder = 1
        end
      end
      object TabSave: TTabSheet
        Caption = 'TabSave'
        ImageIndex = 2
      end
    end
  end
  object MemoSave: TMemo
    Left = 231
    Top = 53
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
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Filter = 'geofpro2|*.gfc'
    Left = 304
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'gfc'
    Filter = 'geofpro|*.gfc'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 384
    Top = 80
  end
end
