object Rashod_Date: TRashod_Date
  Left = 386
  Top = 236
  Width = 524
  Height = 497
  Caption = '������ �� ������'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 451
    Width = 516
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object dx_Cus: TdxDBGrid
    Left = 0
    Top = 61
    Width = 516
    Height = 390
    BandRowCount = 2
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'ID_Items'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = Depot.DS_Rashod_Date
    Filter.Criteria = {00000000}
    HideSelectionColor = 10930928
    HideSelectionTextColor = clBlack
    HighlightColor = 10930928
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
    PreviewLines = 1
    ShowRowFooter = True
    object dx_CusID_Items: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_Items'
    end
    object dx_CusID_Supplier: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_Supplier'
    end
    object dx_CusID_Edizm: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_Edizm'
    end
    object dx_CusSupplier_Name: TdxDBGridMaskColumn
      Caption = '���������'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      Width = 126
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Supplier_Name'
    end
    object dx_CusItems_Folder: TdxDBGridMaskColumn
      Caption = '�����'
      HeaderAlignment = taCenter
      Visible = False
      Width = 312
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Items_Folder'
    end
    object dx_CusItems_Articul: TdxDBGridMaskColumn
      Caption = '�������'
      HeaderAlignment = taCenter
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Items_Articul'
    end
    object dx_CusItems_Name: TdxDBGridMaskColumn
      Caption = '������������'
      HeaderAlignment = taCenter
      Width = 260
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Items_Name'
    end
    object dx_CusEdizm_Name: TdxDBGridMaskColumn
      Caption = '��. ���.'
      HeaderAlignment = taCenter
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Edizm_Name'
    end
    object dx_CusSumCharge_Items_Value: TdxDBGridMaskColumn
      Caption = '���-��'
      HeaderAlignment = taCenter
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Sum-Charge_Items_Value'
    end
    object dx_CusLastCharge_Items_Price: TdxDBGridMaskColumn
      Caption = '����'
      HeaderAlignment = taCenter
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Last-Charge_Items_Price'
    end
  end
  object JvPanel4: TJvPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 61
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 116
      Top = 30
      Width = 28
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '��:'
    end
    object Label3: TLabel
      Left = 116
      Top = 8
      Width = 28
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'c:'
    end
    object Label8: TLabel
      Left = 12
      Top = 8
      Width = 100
      Height = 21
      AutoSize = False
      Caption = '������� ������'
    end
    object dx_Date_Out: TdxDateEdit
      Left = 150
      Top = 28
      Width = 121
      Style.BorderStyle = xbsFlat
      Style.Shadow = True
      TabOrder = 0
      Date = -700000
    end
    object dx_Date_In: TdxDateEdit
      Left = 150
      Top = 6
      Width = 121
      Style.BorderStyle = xbsFlat
      Style.Shadow = True
      TabOrder = 1
      Date = -700000
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 420
      Width = 33
      Height = 25
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C8C318C318C318C318C318C318C318C318C318C318C31
        8C311F7C1F7C1F7C1F37630C8C3194529452D65A4A292925DE7BFF7F9C73FF7F
        FF7F1F7C1F7C1F7C1F371F375F475F479F5B9F5BDF6BDF6BFF7FFF7FFF7FFF7F
        FF7F1F7C1F7C1F7CFF26AD35EF3D3F362104B5564A2929259F6B292584109C73
        DE7B1F7C1F7C1F7CFF26FF26FF26FF263E533E533E533E539F6B7B6F9C739C73
        FF7F1F7C1F7C1F7CBF028C319201C6181F378C315F474A293E533E537B6F2925
        DE7B1F7C1F7C1F7CBF02CA00630C9201FF264A295F47BF464A294A29E71CD65A
        DE7B1F7C1F7C1F7C5B02BF025B023F365B02FF26FF265F47BF469F5BBF46DF6B
        DF6B1F7C1F7C1F7CF7015B02BF02BF028C315B028C31FF268C31E71C4A293E53
        DF6B1F7C1F7C1F7CF701C618920192015B025B025B028C311F375F475F479F5B
        9F5B1F7C1F7C1F7C92019201F7015B025B02F701FF26FF261F371F373E535F47
        9F5B1F7C1F7C1F7C920192019201F701F701F7015B02FF26FF261F371F375F47
        5F471F7C1F7C1F7C2E01524A524AB5563F36B556BF02BF02FF26FF261F371F37
        5F471F7C1F7C1F7C2E012E0192019201F701F7015B02BF02BF02FF262E01BF12
        FF7F1F7C1F7C1F7C6A0010429201945239673E53BF461F377B6FBF022E01BF12
        1F7C1F7C1F7C1F7C6A00CA00CA002E0192019201F701F7015B02BF022E011F7C
        1F7C1F7C1F7C}
    end
    object Button1: TButton
      Left = 360
      Top = 6
      Width = 149
      Height = 25
      Caption = '������������ �����'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 360
      Top = 30
      Width = 149
      Height = 25
      Caption = '������ ������'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
end
