object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 517
  Width = 775
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Geofpro\Geofpro_Calculator\DrillingPipeDB\geofpro3i.' +
        'mdb'
      'ConnectionDef=Access_Demo')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 72
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 232
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 360
    Top = 72
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM drillingpipe')
    Left = 56
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 56
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 120
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 192
    Top = 248
  end
  object DataSource4: TDataSource
    DataSet = FDQuery4
    Left = 256
    Top = 248
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 328
    Top = 248
  end
  object DataSource6: TDataSource
    DataSet = FDQuery6
    Left = 408
    Top = 248
  end
  object DataSource7: TDataSource
    DataSet = FDQuery7
    Left = 480
    Top = 248
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM connector')
    Left = 120
    Top = 168
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ubt')
    Left = 192
    Top = 168
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM drillingtools ORDER BY '#1064#1080#1092#1088)
    Left = 256
    Top = 168
  end
  object FDQuery5: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM motors')
    Left = 328
    Top = 168
  end
  object FDQuery6: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM coiled')
    Left = 408
    Top = 168
  end
  object FDQuery7: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM nkt')
    Left = 480
    Top = 168
  end
  object FDQuery8: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM casingpipe')
    Left = 544
    Top = 168
  end
  object DataSource8: TDataSource
    DataSet = FDQuery8
    Left = 544
    Top = 248
  end
  object FDQuery9: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tbt')
    Left = 608
    Top = 168
  end
  object DataSource9: TDataSource
    DataSet = FDQuery9
    Left = 608
    Top = 248
  end
  object FDConnectionReport: TFDConnection
    Params.Strings = (
      
        'Database=C:\Geofpro\Geofpro_Calculator\Win32\Debug\DrillingPipeD' +
        'B\GFPcalculatorReport.mdb'
      'ConnectionDef=Access_Demo')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 376
  end
  object FDQueryReport: TFDQuery
    Connection = FDConnectionReport
    Left = 192
    Top = 376
  end
  object FDQueryPersonDate: TFDQuery
    Connection = FDConnectionReport
    SQL.Strings = (
      'SELECT * FROM Title')
    Left = 352
    Top = 384
  end
  object FDQueryPipeCalculator: TFDQuery
    Connection = FDConnectionReport
    SQL.Strings = (
      'SELECT * FROM WeightCalc')
    Left = 488
    Top = 384
  end
  object DataSourcePersonDate: TDataSource
    DataSet = FDQueryPersonDate
    Left = 352
    Top = 448
  end
  object DataSourcePipeCalculator: TDataSource
    DataSet = FDQueryPipeCalculator
    Left = 488
    Top = 448
  end
end
