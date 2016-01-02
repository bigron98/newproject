object Depot: TDepot
  OldCreateOrder = False
  Left = 200
  Top = 121
  Height = 540
  Width = 783
  object Veko: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data ' +
      'Source=C:\Veko\Date\Veko.mdb;Mode=Share Deny None;Extended Prope' +
      'rties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path=""' +
      ';Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLED' +
      'B:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Je' +
      't OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passwo' +
      'rd="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt D' +
      'atabase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet O' +
      'LEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 22
    Top = 12
  end
  object Spr_Key: TADODataSet
    Connection = Veko
    CommandText = 'select * from Spr_Key'
    Parameters = <>
    Left = 84
    Top = 12
    object Spr_KeyID_Key: TIntegerField
      FieldName = 'ID_Key'
    end
  end
  object Spr_Edizm: TADODataSet
    Active = True
    Connection = Veko
    CursorType = ctStatic
    BeforeDelete = Spr_EdizmBeforeDelete
    OnNewRecord = Spr_EdizmNewRecord
    CommandText = 'select * from Spr_Edizm'
    Parameters = <>
    Left = 86
    Top = 62
    object Spr_EdizmID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Spr_EdizmEdizm_Name: TWideStringField
      FieldName = 'Edizm_Name'
      Size = 50
    end
    object Spr_EdizmID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Spr_Supplier: TADODataSet
    Connection = Veko
    BeforeDelete = Spr_SupplierBeforeDelete
    OnFilterRecord = Spr_SupplierFilterRecord
    OnNewRecord = Spr_SupplierNewRecord
    CommandText = 'select * from Spr_Supplier'
    Parameters = <>
    Left = 218
    Top = 26
    object Spr_SupplierID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Spr_SupplierSupplier_Name: TWideStringField
      FieldName = 'Supplier_Name'
      Size = 50
    end
    object Spr_SupplierID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Spr_Items: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    BeforeDelete = Spr_ItemsBeforeDelete
    OnNewRecord = Spr_ItemsNewRecord
    CommandText = 'select * from Spr_Items'
    DataSource = DS_Supplier
    IndexFieldNames = 'ID_Supplier'
    MasterFields = 'ID_Supplier'
    Parameters = <>
    Left = 220
    Top = 76
    object Spr_ItemsID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Spr_ItemsID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Spr_ItemsID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Spr_ItemsID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Spr_ItemsItems_Name: TWideStringField
      FieldName = 'Items_Name'
      Size = 50
    end
    object Spr_ItemsItems_Articul: TWideStringField
      FieldName = 'Items_Articul'
      Size = 50
    end
    object Spr_ItemsItems_Page: TWideStringField
      FieldName = 'Items_Page'
      Size = 50
    end
    object Spr_ItemsItems_Price: TFloatField
      FieldName = 'Items_Price'
    end
    object Spr_ItemsItems_Folder: TWideStringField
      FieldName = 'Items_Folder'
      Size = 50
    end
    object Spr_ItemsItems_Level: TIntegerField
      FieldName = 'Items_Level'
    end
    object Spr_ItemsItems_Min: TFloatField
      FieldName = 'Items_Min'
    end
    object Spr_ItemsEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Spr_ItemsID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object DS_Key: TDataSource
    DataSet = Spr_Key
    Left = 138
    Top = 22
  end
  object DS_Edizm: TDataSource
    DataSet = Spr_Edizm
    Left = 138
    Top = 72
  end
  object DS_Supplier: TDataSource
    DataSet = Spr_Supplier
    Left = 270
    Top = 38
  end
  object DS_Items: TDataSource
    DataSet = Spr_Items
    Left = 272
    Top = 86
  end
  object Arrival: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    BeforeDelete = ArrivalBeforeDelete
    OnNewRecord = ArrivalNewRecord
    CommandText = 'select * from Arrival'
    Parameters = <>
    Left = 386
    Top = 26
    object ArrivalID_Arrival: TIntegerField
      FieldName = 'ID_Arrival'
    end
    object ArrivalID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object ArrivalArrival_Name: TWideStringField
      FieldName = 'Arrival_Name'
      Size = 50
    end
    object ArrivalArrival_Date: TDateTimeField
      FieldName = 'Arrival_Date'
    end
    object ArrivalSupplier_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Supplier_Name'
      LookupDataSet = Spr_Supplier_all
      LookupKeyFields = 'ID_Supplier'
      LookupResultField = 'Supplier_Name'
      KeyFields = 'ID_Supplier'
      Lookup = True
    end
    object ArrivalID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Arrival_Items: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    BeforeDelete = Arrival_ItemsBeforeDelete
    OnNewRecord = Arrival_ItemsNewRecord
    CommandText = 'select * from Arrival_Items'
    DataSource = DS_Arrival
    IndexFieldNames = 'ID_Arrival'
    MasterFields = 'ID_Arrival'
    Parameters = <>
    Left = 386
    Top = 76
    object Arrival_ItemsID_Arrival_Items: TIntegerField
      FieldName = 'ID_Arrival_Items'
    end
    object Arrival_ItemsID_Arrival: TIntegerField
      FieldName = 'ID_Arrival'
    end
    object Arrival_ItemsID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Arrival_ItemsID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Arrival_ItemsID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Arrival_ItemsID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Arrival_ItemsItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Arrival_ItemsItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Arrival_ItemsItems_Page: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Page'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Page'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Arrival_ItemsEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Arrival_ItemsArrival_Items_Value: TFloatField
      FieldName = 'Arrival_Items_Value'
    end
    object Arrival_ItemsArrival_Items_Price: TFloatField
      FieldName = 'Arrival_Items_Price'
    end
    object Arrival_ItemsArrival_Items_Date: TDateTimeField
      FieldName = 'Arrival_Items_Date'
    end
    object Arrival_ItemsArrival_Items_Folder: TWideStringField
      FieldName = 'Arrival_Items_Folder'
      Size = 50
    end
    object Arrival_ItemsArrival_Items_Level: TIntegerField
      FieldName = 'Arrival_Items_Level'
    end
    object Arrival_ItemsID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Charge: TADODataSet
    Connection = Veko
    BeforeDelete = ChargeBeforeDelete
    OnNewRecord = ChargeNewRecord
    CommandText = 'select * from Charge'
    Parameters = <>
    Left = 388
    Top = 126
    object ChargeID_Charge: TIntegerField
      FieldName = 'ID_Charge'
    end
    object ChargeID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object ChargeCharge_Name: TWideStringField
      FieldName = 'Charge_Name'
      Size = 50
    end
    object ChargeCharge_Date: TDateTimeField
      FieldName = 'Charge_Date'
    end
    object ChargeZakaz_Name: TWideStringField
      FieldName = 'Zakaz_Name'
      Size = 50
    end
    object ChargeZakaz_Date: TDateTimeField
      FieldName = 'Zakaz_Date'
    end
    object ChargeZakaz_Dop: TMemoField
      FieldName = 'Zakaz_Dop'
      BlobType = ftMemo
    end
    object ChargeID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Charge_Items: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    BeforePost = Charge_ItemsBeforePost
    AfterPost = Charge_ItemsAfterPost
    OnCalcFields = Charge_ItemsCalcFields
    OnNewRecord = Charge_ItemsNewRecord
    CommandText = 'select * from Charge_Items'
    DataSource = DS_Charge
    IndexFieldNames = 'ID_Charge'
    MasterFields = 'ID_Charge'
    Parameters = <>
    Left = 390
    Top = 178
    object Charge_ItemsItems_Page: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Page'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Page'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Charge_ItemsID_Charge_Items: TIntegerField
      FieldName = 'ID_Charge_Items'
    end
    object Charge_ItemsID_Charge: TIntegerField
      FieldName = 'ID_Charge'
    end
    object Charge_ItemsID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Charge_ItemsID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Charge_ItemsID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Charge_ItemsID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Charge_ItemsItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Charge_ItemsItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Charge_ItemsItems_Price: TFloatField
      FieldKind = fkLookup
      FieldName = 'Items_Price'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Price'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Charge_ItemsEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Charge_ItemsCharge_Items_Date: TDateTimeField
      FieldName = 'Charge_Items_Date'
    end
    object Charge_ItemsCharge_Items_Price: TFloatField
      FieldName = 'Charge_Items_Price'
    end
    object Charge_ItemsCharge_Items_Value: TFloatField
      FieldName = 'Charge_Items_Value'
    end
    object Charge_ItemsCharge_Items_ValueS: TFloatField
      FieldName = 'Charge_Items_ValueS'
    end
    object Charge_ItemsCharge_Items_Folder: TWideStringField
      FieldName = 'Charge_Items_Folder'
      Size = 50
    end
    object Charge_ItemsCharge_Items_Level: TIntegerField
      FieldName = 'Charge_Items_Level'
    end
    object Charge_ItemsSupplier_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Supplier_Name'
      LookupDataSet = Spr_Supplier_all
      LookupKeyFields = 'ID_Supplier'
      LookupResultField = 'Supplier_Name'
      KeyFields = 'ID_Supplier'
      Lookup = True
    end
    object Charge_ItemsID_User: TIntegerField
      FieldName = 'ID_User'
    end
    object Charge_ItemsCharge_Items_Sum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Charge_Items_Sum'
      Calculated = True
    end
  end
  object DS_Arrival: TDataSource
    DataSet = Arrival
    Left = 442
    Top = 40
  end
  object DS_Arrival_Items: TDataSource
    DataSet = Arrival_Items
    Left = 444
    Top = 88
  end
  object DS_Charge: TDataSource
    DataSet = Charge
    Left = 444
    Top = 140
  end
  object DS_Charge_Items: TDataSource
    DataSet = Charge_Items
    Left = 446
    Top = 192
  end
  object Spr_Config: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    OnNewRecord = Spr_ConfigNewRecord
    CommandText = 'select * from Spr_Config'
    Parameters = <>
    Left = 84
    Top = 132
    object Spr_ConfigID_Config: TIntegerField
      FieldName = 'ID_Config'
    end
    object Spr_ConfigID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Spr_ConfigID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Spr_ConfigID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Spr_ConfigID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Spr_ConfigItems_Name: TStringField
      FieldName = 'Items_Name'
    end
    object Spr_ConfigItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Spr_ConfigItems_Price: TFloatField
      FieldKind = fkLookup
      FieldName = 'Items_Price'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Price'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Spr_ConfigItems_Folder: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Folder'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Folder'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Spr_ConfigItems_Value: TFloatField
      FieldName = 'Items_Value'
    end
    object Spr_ConfigItems_Level: TIntegerField
      FieldName = 'Items_Level'
    end
    object Spr_ConfigEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Spr_ConfigID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object DS_Config: TDataSource
    DataSet = Spr_Config
    Left = 138
    Top = 144
  end
  object Spr_Supplier_all: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    CommandText = 'select * from Spr_Supplier'
    Parameters = <>
    Left = 82
    Top = 208
    object Spr_Supplier_allID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Spr_Supplier_allSupplier_Name: TWideStringField
      FieldName = 'Supplier_Name'
      Size = 50
    end
    object Spr_Supplier_allID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object DS_Supplier_All: TDataSource
    DataSet = Spr_Supplier_all
    Left = 138
    Top = 216
  end
  object Select_Config: TADODataSet
    Connection = Veko
    CommandText = 'select * from Spr_Config where ID_Parent=:ID_Parent'
    Parameters = <
      item
        Name = 'ID_Parent'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 222
    Top = 128
    object Select_ConfigID_Config: TIntegerField
      FieldName = 'ID_Config'
    end
    object Select_ConfigID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Select_ConfigID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Select_ConfigID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Select_ConfigID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Select_ConfigItems_Name: TWideStringField
      FieldName = 'Items_Name'
      Size = 50
    end
    object Select_ConfigItems_Articul: TWideStringField
      FieldName = 'Items_Articul'
      Size = 50
    end
    object Select_ConfigItems_Price: TFloatField
      FieldName = 'Items_Price'
    end
    object Select_ConfigItems_Value: TFloatField
      FieldName = 'Items_Value'
    end
    object Select_ConfigItems_Level: TIntegerField
      FieldName = 'Items_Level'
    end
    object Select_ConfigID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object Ostatki: TADODataSet
    Connection = Veko
    OnCalcFields = OstatkiCalcFields
    CommandText = 
      'SELECT '#13#10'    Arrival_Sum.ID_Items, '#13#10'    Arrival_Sum.ID_Supplier' +
      ', '#13#10'    Arrival_Sum.[Sum-Arrival_Items_Value],'#13#10'    (IIf(IsNull(' +
      'Charge_Sum.[Sum-Charge_Items_Value]),0,Charge_Sum.[Sum-Charge_It' +
      'ems_Value])) as Total_Out, '#13#10'    Charge_Sum.ID_Edizm,'#13#10'    Arriv' +
      'al_Sum.[Last-Arrival_Items_Price],'#13#10'    (Arrival_Sum.[Sum-Arriva' +
      'l_Items_Value]-Total_Out) as Total_Ost'#13#10'FROM '#13#10'   (SELECT '#13#10'    ' +
      '    Arrival_Items.ID_Items, '#13#10'        Arrival_Items.ID_Supplier,' +
      ' '#13#10'        Sum(Arrival_Items.Arrival_Items_Value) AS [Sum-Arriva' +
      'l_Items_Value], '#13#10'        Last(Arrival_Items.Arrival_Items_Price' +
      ') AS [Last-Arrival_Items_Price]'#13#10'    FROM Arrival_Items '#13#10'    GR' +
      'OUP BY '#13#10'          Arrival_Items.ID_Items, '#13#10'          Arrival_I' +
      'tems.ID_Supplier) as Arrival_Sum LEFT JOIN '#13#10'   (SELECT '#13#10'      ' +
      '   Charge_Items.ID_Items, '#13#10'         Charge_Items.ID_Edizm, '#13#10'  ' +
      '       Sum(Charge_Items.Charge_Items_Value) AS [Sum-Charge_Items' +
      '_Value]'#13#10'    FROM Charge_Items'#13#10'    GROUP BY '#13#10'         Charge_I' +
      'tems.ID_Items, '#13#10'         Charge_Items.ID_Edizm) as Charge_Sum '#13 +
      #10'ON Arrival_Sum.ID_Items = Charge_Sum.ID_Items'#13#10
    DataSource = DS_Supplier_All
    IndexFieldNames = 'ID_Supplier'
    MasterFields = 'ID_Supplier'
    Parameters = <>
    Left = 226
    Top = 178
    object OstatkiID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object OstatkiID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object OstatkiID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object OstatkiItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object OstatkiItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object OstatkiEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object OstatkiSumArrival_Items_Value: TFloatField
      FieldName = 'Sum-Arrival_Items_Value'
    end
    object OstatkiTotal_Out: TFloatField
      FieldName = 'Total_Out'
      ReadOnly = True
    end
    object OstatkiLastArrival_Items_Price: TFloatField
      FieldName = 'Last-Arrival_Items_Price'
    end
    object OstatkiSum_Ostatok: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Sum_Ostatok'
      Calculated = True
    end
    object OstatkiSum_Min: TFloatField
      FieldKind = fkLookup
      FieldName = 'Sum_Min'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Min'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object OstatkiTotal_Ost: TFloatField
      FieldName = 'Total_Ost'
      ReadOnly = True
    end
  end
  object DS_Ostatki: TDataSource
    DataSet = Ostatki
    Left = 276
    Top = 194
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 22
    Top = 62
    ReportForm = {18000000}
  end
  object fr_Supplier: TfrDBDataSet
    DataSource = DS_Supplier
    Left = 318
    Top = 38
  end
  object fr_Arrival: TfrDBDataSet
    DataSet = Arrival
    Left = 492
    Top = 40
  end
  object fr_Arrival_Items: TfrDBDataSet
    DataSet = Arrival_Items
    Left = 494
    Top = 88
  end
  object fr_Charge: TfrDBDataSet
    DataSet = Charge
    Left = 494
    Top = 140
  end
  object fr_Charge_Items: TfrDBDataSet
    DataSet = Charge_Items
    Left = 496
    Top = 192
  end
  object fr_Ostatki: TfrDBDataSet
    DataSet = Ostatki
    Left = 326
    Top = 196
  end
  object User: TADODataSet
    Connection = Veko
    CommandText = 'select * from Users'
    Parameters = <>
    Left = 84
    Top = 270
    object UserID_User: TIntegerField
      FieldName = 'ID_User'
    end
    object UserUser_Name: TWideStringField
      FieldName = 'User_Name'
      Size = 50
    end
    object UserUser_Login: TWideStringField
      FieldName = 'User_Login'
      Size = 50
    end
    object UserUser_Password: TWideStringField
      FieldName = 'User_Password'
      Size = 50
    end
    object UserUser_Kod: TIntegerField
      FieldName = 'User_Kod'
    end
    object UserUser_Rig: TBooleanField
      FieldName = 'User_Rig'
    end
  end
  object DS_User: TDataSource
    DataSet = User
    Left = 138
    Top = 280
  end
  object ADO_Insert: TADOCommand
    Connection = Veko
    Parameters = <>
    Left = 226
    Top = 242
  end
  object ADO_Delete: TADOCommand
    Connection = Veko
    Parameters = <>
    Left = 226
    Top = 292
  end
  object Rashod_Date: TADODataSet
    Connection = Veko
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10'    Charge1.ID_Items, '#13#10'    Charge1.ID_Supplier, '#13#10'    ' +
      'Charge1.ID_Edizm, '#13#10'    Sum(Charge1.Charge_Items_Value) AS [Sum-' +
      'Charge_Items_Value], '#13#10'    Last(Charge1.Charge_Items_Price) AS [' +
      'Last-Charge_Items_Price]'#13#10'FROM '#13#10'    (SELECT Charge_Items.* FROM' +
      ' Charge_Items'#13#10'     WHERE '#13#10'         (((Charge_Items.Charge_Item' +
      's_Date)>:Date1 And '#13#10'           (Charge_Items.Charge_Items_Date)' +
      '<:Date2))) as Charge1'#13#10'GROUP BY '#13#10'    Charge1.ID_Items, '#13#10'    Ch' +
      'arge1.ID_Supplier, '#13#10'    Charge1.ID_Edizm'#13#10#13#10#13#10
    Parameters = <
      item
        Name = 'Date1'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Date2'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 276
    Top = 244
    object Rashod_DateID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Rashod_DateID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Rashod_DateID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Rashod_DateSumCharge_Items_Value: TFloatField
      FieldName = 'Sum-Charge_Items_Value'
    end
    object Rashod_DateLastCharge_Items_Price: TFloatField
      FieldName = 'Last-Charge_Items_Price'
    end
    object Rashod_DateSupplier_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Supplier_Name'
      LookupDataSet = Spr_Supplier_all
      LookupKeyFields = 'ID_Supplier'
      LookupResultField = 'Supplier_Name'
      KeyFields = 'ID_Supplier'
      Lookup = True
    end
    object Rashod_DateEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Rashod_DateItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Rashod_DateItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Rashod_DateItems_Folder: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Folder'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Folder'
      KeyFields = 'ID_Items'
      Lookup = True
    end
  end
  object DS_Rashod_Date: TDataSource
    DataSet = Rashod_Date
    Left = 330
    Top = 254
  end
  object fr_Rashod_Date: TfrDBDataSet
    DataSet = Rashod_Date
    Left = 390
    Top = 254
  end
  object Items_All: TADODataSet
    Connection = Veko
    CommandText = 'select * from Spr_Items'
    Parameters = <>
    Left = 86
    Top = 328
    object Items_AllID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Items_AllID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Items_AllID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Items_AllID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Items_AllItems_Name: TWideStringField
      FieldName = 'Items_Name'
      Size = 50
    end
    object Items_AllItems_Articul: TWideStringField
      FieldName = 'Items_Articul'
      Size = 50
    end
    object Items_AllItems_Page: TWideStringField
      FieldName = 'Items_Page'
      Size = 50
    end
    object Items_AllItems_Price: TFloatField
      FieldName = 'Items_Price'
    end
    object Items_AllItems_Folder: TWideStringField
      FieldName = 'Items_Folder'
      Size = 50
    end
    object Items_AllItems_Level: TIntegerField
      FieldName = 'Items_Level'
    end
    object Items_AllItems_Min: TFloatField
      FieldName = 'Items_Min'
    end
    object Items_AllID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object ADO_Pages: TADODataSet
    Connection = Veko
    CommandText = 
      'SELECT '#13#10'    Spr_Items.Items_Page,'#13#10'    Spr_Items.ID_Items'#13#10'FROM' +
      ' Spr_Items'#13#10'GROUP BY '#13#10'     Spr_Items.Items_Page,'#13#10'     Spr_Item' +
      's.ID_Items'#13#10'HAVING ((Not (Spr_Items.Items_Page) Is Null))'#13#10
    Parameters = <>
    Left = 392
    Top = 312
    object ADO_PagesItems_Page: TWideStringField
      FieldName = 'Items_Page'
      Size = 50
    end
    object ADO_PagesID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
  end
  object DS_Pages: TDataSource
    DataSet = ADO_Pages
    Left = 446
    Top = 322
  end
  object Items_In: TADODataSet
    Connection = Veko
    CommandText = 'select * from Arrival_Items'
    DataSource = DS_Pages
    IndexFieldNames = 'ID_Items'
    MasterFields = 'ID_Items'
    Parameters = <>
    Left = 392
    Top = 360
    object Items_InID_Arrival_Items: TIntegerField
      FieldName = 'ID_Arrival_Items'
    end
    object Items_InID_Arrival: TIntegerField
      FieldName = 'ID_Arrival'
    end
    object Items_InID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Items_InID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Items_InID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Items_InID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Items_InArrival_Items_Value: TFloatField
      FieldName = 'Arrival_Items_Value'
    end
    object Items_InArrival_Items_Price: TFloatField
      FieldName = 'Arrival_Items_Price'
    end
    object Items_InArrival_Items_Date: TDateTimeField
      FieldName = 'Arrival_Items_Date'
    end
    object Items_InArrival_Items_Folder: TWideStringField
      FieldName = 'Arrival_Items_Folder'
      Size = 50
    end
    object Items_InArrival_Items_Level: TIntegerField
      FieldName = 'Arrival_Items_Level'
    end
    object Items_InEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Items_InItems_Price: TFloatField
      FieldKind = fkLookup
      FieldName = 'Items_Price'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Price'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_InItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_InItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_InID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object DS_Items_In: TDataSource
    DataSet = Items_In
    Left = 448
    Top = 368
  end
  object Items_Out: TADODataSet
    Connection = Veko
    CommandText = 'select * from Charge_Items'
    DataSource = DS_Pages
    IndexFieldNames = 'ID_Items'
    MasterFields = 'ID_Items'
    Parameters = <>
    Left = 392
    Top = 408
    object Items_OutID_Charge_Items: TIntegerField
      FieldName = 'ID_Charge_Items'
    end
    object Items_OutID_Charge: TIntegerField
      FieldName = 'ID_Charge'
    end
    object Items_OutID_Items: TIntegerField
      FieldName = 'ID_Items'
    end
    object Items_OutID_Supplier: TIntegerField
      FieldName = 'ID_Supplier'
    end
    object Items_OutID_Edizm: TIntegerField
      FieldName = 'ID_Edizm'
    end
    object Items_OutID_Parent: TIntegerField
      FieldName = 'ID_Parent'
    end
    object Items_OutCharge_Items_Value: TFloatField
      FieldName = 'Charge_Items_Value'
    end
    object Items_OutCharge_Items_ValueS: TFloatField
      FieldName = 'Charge_Items_ValueS'
    end
    object Items_OutCharge_Items_Price: TFloatField
      FieldName = 'Charge_Items_Price'
    end
    object Items_OutCharge_Items_Date: TDateTimeField
      FieldName = 'Charge_Items_Date'
    end
    object Items_OutCharge_Items_Folder: TWideStringField
      FieldName = 'Charge_Items_Folder'
      Size = 50
    end
    object Items_OutCharge_Items_Level: TIntegerField
      FieldName = 'Charge_Items_Level'
    end
    object Items_OutItems_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Name'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Name'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_OutItems_Articul: TStringField
      FieldKind = fkLookup
      FieldName = 'Items_Articul'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Articul'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_OutItems_Price: TFloatField
      FieldKind = fkLookup
      FieldName = 'Items_Price'
      LookupDataSet = Spr_Items
      LookupKeyFields = 'ID_Items'
      LookupResultField = 'Items_Price'
      KeyFields = 'ID_Items'
      Lookup = True
    end
    object Items_OutEdizm_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Edizm_Name'
      LookupDataSet = Spr_Edizm
      LookupKeyFields = 'ID_Edizm'
      LookupResultField = 'Edizm_Name'
      KeyFields = 'ID_Edizm'
      Lookup = True
    end
    object Items_OutID_User: TIntegerField
      FieldName = 'ID_User'
    end
  end
  object DS_Items_Out: TDataSource
    DataSet = Items_Out
    Left = 450
    Top = 414
  end
end
