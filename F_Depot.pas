unit F_Depot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, FR_Class, FR_DSet, FR_DBSet;

type
  TDepot = class(TDataModule)
    Veko: TADOConnection;
    Spr_Key: TADODataSet;
    Spr_KeyID_Key: TIntegerField;
    Spr_Edizm: TADODataSet;
    Spr_EdizmID_Edizm: TIntegerField;
    Spr_EdizmEdizm_Name: TWideStringField;
    Spr_Supplier: TADODataSet;
    Spr_SupplierID_Supplier: TIntegerField;
    Spr_SupplierSupplier_Name: TWideStringField;
    Spr_Items: TADODataSet;
    DS_Key: TDataSource;
    DS_Edizm: TDataSource;
    DS_Supplier: TDataSource;
    DS_Items: TDataSource;
    Arrival: TADODataSet;
    ArrivalID_Arrival: TIntegerField;
    ArrivalID_Supplier: TIntegerField;
    ArrivalArrival_Name: TWideStringField;
    ArrivalArrival_Date: TDateTimeField;
    Arrival_Items: TADODataSet;
    Arrival_ItemsID_Arrival_Items: TIntegerField;
    Arrival_ItemsID_Arrival: TIntegerField;
    Arrival_ItemsID_Items: TIntegerField;
    Arrival_ItemsArrival_Items_Value: TFloatField;
    Arrival_ItemsArrival_Items_Price: TFloatField;
    Arrival_ItemsArrival_Items_Date: TDateTimeField;
    Charge: TADODataSet;
    ChargeID_Charge: TIntegerField;
    ChargeID_Supplier: TIntegerField;
    ChargeCharge_Name: TWideStringField;
    ChargeCharge_Date: TDateTimeField;
    Charge_Items: TADODataSet;
    Charge_ItemsID_Charge_Items: TIntegerField;
    Charge_ItemsID_Charge: TIntegerField;
    Charge_ItemsID_Items: TIntegerField;
    Charge_ItemsCharge_Items_Value: TFloatField;
    Charge_ItemsCharge_Items_Price: TFloatField;
    Charge_ItemsCharge_Items_Date: TDateTimeField;
    DS_Arrival: TDataSource;
    DS_Arrival_Items: TDataSource;
    DS_Charge: TDataSource;
    DS_Charge_Items: TDataSource;
    Spr_Config: TADODataSet;
    Spr_ConfigID_Config: TIntegerField;
    Spr_ConfigID_Parent: TIntegerField;
    Spr_ConfigID_Items: TIntegerField;
    Spr_ConfigID_Supplier: TIntegerField;
    DS_Config: TDataSource;
    Spr_ItemsEdizm_Name: TStringField;
    Spr_ConfigID_Edizm: TIntegerField;
    Spr_ItemsID_Items: TIntegerField;
    Spr_ItemsID_Parent: TIntegerField;
    Spr_ItemsID_Supplier: TIntegerField;
    Spr_ItemsID_Edizm: TIntegerField;
    Spr_ItemsItems_Name: TWideStringField;
    Spr_ItemsItems_Articul: TWideStringField;
    Spr_ItemsItems_Folder: TWideStringField;
    Spr_ItemsItems_Level: TIntegerField;
    Spr_ItemsItems_Min: TFloatField;
    ArrivalSupplier_Name: TStringField;
    Spr_Supplier_all: TADODataSet;
    Spr_Supplier_allID_Supplier: TIntegerField;
    Spr_Supplier_allSupplier_Name: TWideStringField;
    DS_Supplier_All: TDataSource;
    ChargeZakaz_Name: TWideStringField;
    ChargeZakaz_Date: TDateTimeField;
    ChargeZakaz_Dop: TMemoField;
    Charge_ItemsID_Supplier: TIntegerField;
    Select_Config: TADODataSet;
    Select_ConfigID_Config: TIntegerField;
    Select_ConfigID_Parent: TIntegerField;
    Select_ConfigID_Items: TIntegerField;
    Select_ConfigID_Supplier: TIntegerField;
    Select_ConfigID_Edizm: TIntegerField;
    Select_ConfigItems_Name: TWideStringField;
    Select_ConfigItems_Articul: TWideStringField;
    Select_ConfigItems_Price: TFloatField;
    Select_ConfigItems_Value: TFloatField;
    Select_ConfigItems_Level: TIntegerField;
    Spr_ItemsItems_Price: TFloatField;
    Spr_ConfigEdizm_Name: TStringField;
    Charge_ItemsEdizm_Name: TStringField;
    Arrival_ItemsArrival_Items_Folder: TWideStringField;
    Arrival_ItemsArrival_Items_Level: TIntegerField;
    Arrival_ItemsID_Parent: TIntegerField;
    Charge_ItemsID_Edizm: TIntegerField;
    Charge_ItemsID_Parent: TIntegerField;
    Charge_ItemsCharge_Items_Folder: TWideStringField;
    Charge_ItemsCharge_Items_Level: TIntegerField;
    Arrival_ItemsID_Edizm: TIntegerField;
    Arrival_ItemsItems_Name: TStringField;
    Spr_ConfigItems_Name: TStringField;
    Charge_ItemsItems_Name: TStringField;
    Arrival_ItemsEdizm_Name: TStringField;
    Spr_ConfigItems_Articul: TStringField;
    Spr_ConfigItems_Price: TFloatField;
    Spr_ConfigItems_Folder: TStringField;
    Spr_ConfigItems_Value: TFloatField;
    Spr_ConfigItems_Level: TIntegerField;
    Arrival_ItemsItems_Articul: TStringField;
    Charge_ItemsItems_Articul: TStringField;
    Ostatki: TADODataSet;
    OstatkiID_Items: TIntegerField;
    OstatkiSumArrival_Items_Value: TFloatField;
    OstatkiLastArrival_Items_Price: TFloatField;
    OstatkiItems_Name: TStringField;
    OstatkiItems_Articul: TStringField;
    OstatkiID_Edizm: TIntegerField;
    OstatkiEdizm_Name: TStringField;
    DS_Ostatki: TDataSource;
    Arrival_ItemsID_Supplier: TIntegerField;
    OstatkiID_Supplier: TIntegerField;
    OstatkiSum_Ostatok: TFloatField;
    OstatkiSum_Min: TFloatField;
    frReport1: TfrReport;
    fr_Supplier: TfrDBDataSet;
    fr_Arrival: TfrDBDataSet;
    fr_Arrival_Items: TfrDBDataSet;
    fr_Charge: TfrDBDataSet;
    fr_Charge_Items: TfrDBDataSet;
    fr_Ostatki: TfrDBDataSet;
    Charge_ItemsSupplier_Name: TStringField;
    OstatkiTotal_Ost: TFloatField;
    Charge_ItemsCharge_Items_ValueS: TFloatField;
    OstatkiTotal_Out: TFloatField;
    Spr_EdizmID_User: TIntegerField;
    Spr_ConfigID_User: TIntegerField;
    Spr_Supplier_allID_User: TIntegerField;
    Spr_SupplierID_User: TIntegerField;
    Spr_ItemsID_User: TIntegerField;
    Select_ConfigID_User: TIntegerField;
    ArrivalID_User: TIntegerField;
    Arrival_ItemsID_User: TIntegerField;
    ChargeID_User: TIntegerField;
    Charge_ItemsID_User: TIntegerField;
    User: TADODataSet;
    UserID_User: TIntegerField;
    UserUser_Name: TWideStringField;
    UserUser_Login: TWideStringField;
    UserUser_Password: TWideStringField;
    UserUser_Kod: TIntegerField;
    UserUser_Rig: TBooleanField;
    DS_User: TDataSource;
    ADO_Insert: TADOCommand;
    ADO_Delete: TADOCommand;
    Rashod_Date: TADODataSet;
    DS_Rashod_Date: TDataSource;
    fr_Rashod_Date: TfrDBDataSet;
    Rashod_DateID_Items: TIntegerField;
    Rashod_DateID_Supplier: TIntegerField;
    Rashod_DateID_Edizm: TIntegerField;
    Rashod_DateSumCharge_Items_Value: TFloatField;
    Rashod_DateLastCharge_Items_Price: TFloatField;
    Rashod_DateItems_Name: TStringField;
    Rashod_DateItems_Articul: TStringField;
    Rashod_DateEdizm_Name: TStringField;
    Rashod_DateSupplier_Name: TStringField;
    Rashod_DateItems_Folder: TStringField;
    Items_All: TADODataSet;
    Items_AllID_Items: TIntegerField;
    Items_AllID_Parent: TIntegerField;
    Items_AllID_Supplier: TIntegerField;
    Items_AllID_Edizm: TIntegerField;
    Items_AllItems_Name: TWideStringField;
    Items_AllItems_Articul: TWideStringField;
    Items_AllItems_Price: TFloatField;
    Items_AllItems_Folder: TWideStringField;
    Items_AllItems_Level: TIntegerField;
    Items_AllItems_Min: TFloatField;
    Items_AllID_User: TIntegerField;
    Charge_ItemsCharge_Items_Sum: TFloatField;
    Charge_ItemsItems_Price: TFloatField;
    Items_AllItems_Page: TWideStringField;
    Spr_ItemsItems_Page: TWideStringField;
    Arrival_ItemsItems_Page: TStringField;
    Charge_ItemsItems_Page: TStringField;
    ADO_Pages: TADODataSet;
    ADO_PagesItems_Page: TWideStringField;
    DS_Pages: TDataSource;
    Items_In: TADODataSet;
    ADO_PagesID_Items: TIntegerField;
    Items_InID_Arrival_Items: TIntegerField;
    Items_InID_Arrival: TIntegerField;
    Items_InID_Items: TIntegerField;
    Items_InID_Edizm: TIntegerField;
    Items_InID_Supplier: TIntegerField;
    Items_InID_Parent: TIntegerField;
    Items_InArrival_Items_Value: TFloatField;
    Items_InArrival_Items_Price: TFloatField;
    Items_InArrival_Items_Date: TDateTimeField;
    Items_InArrival_Items_Folder: TWideStringField;
    Items_InArrival_Items_Level: TIntegerField;
    Items_InID_User: TIntegerField;
    DS_Items_In: TDataSource;
    Items_Out: TADODataSet;
    Items_OutID_Charge_Items: TIntegerField;
    Items_OutID_Charge: TIntegerField;
    Items_OutID_Items: TIntegerField;
    Items_OutID_Supplier: TIntegerField;
    Items_OutID_Edizm: TIntegerField;
    Items_OutID_Parent: TIntegerField;
    Items_OutCharge_Items_Value: TFloatField;
    Items_OutCharge_Items_ValueS: TFloatField;
    Items_OutCharge_Items_Price: TFloatField;
    Items_OutCharge_Items_Date: TDateTimeField;
    Items_OutCharge_Items_Folder: TWideStringField;
    Items_OutCharge_Items_Level: TIntegerField;
    Items_OutID_User: TIntegerField;
    DS_Items_Out: TDataSource;
    Items_InItems_Name: TStringField;
    Items_InItems_Articul: TStringField;
    Items_InItems_Price: TFloatField;
    Items_InEdizm_Name: TStringField;
    Items_OutItems_Name: TStringField;
    Items_OutItems_Articul: TStringField;
    Items_OutItems_Price: TFloatField;
    Items_OutEdizm_Name: TStringField;
    procedure Spr_SupplierNewRecord(DataSet: TDataSet);
    procedure Spr_SupplierBeforeDelete(DataSet: TDataSet);
    procedure Spr_ItemsNewRecord(DataSet: TDataSet);
    procedure Spr_ItemsBeforeDelete(DataSet: TDataSet);
    procedure Spr_EdizmNewRecord(DataSet: TDataSet);
    procedure Spr_EdizmBeforeDelete(DataSet: TDataSet);
    procedure Spr_ConfigNewRecord(DataSet: TDataSet);
    procedure Spr_SupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Arrival_ItemsNewRecord(DataSet: TDataSet);
    procedure Arrival_ItemsBeforeDelete(DataSet: TDataSet);
    procedure ArrivalNewRecord(DataSet: TDataSet);
    procedure ArrivalBeforeDelete(DataSet: TDataSet);
    procedure ChargeBeforeDelete(DataSet: TDataSet);
    procedure ChargeNewRecord(DataSet: TDataSet);
    procedure Charge_ItemsNewRecord(DataSet: TDataSet);
    procedure OstatkiCalcFields(DataSet: TDataSet);
    procedure Charge_ItemsBeforePost(DataSet: TDataSet);
    procedure Charge_ItemsAfterPost(DataSet: TDataSet);
    procedure Charge_ItemsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Depot: TDepot;

implementation
uses F_Global_Var, F_Preview;
{$R *.DFM}

procedure TDepot.Spr_SupplierNewRecord(DataSet: TDataSet);
begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      Spr_SupplierID_Supplier.Value:=Spr_KeyID_Key.Value;
      Spr_SupplierSupplier_Name.Value:='����� ���������';
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.Spr_SupplierBeforeDelete(DataSet: TDataSet);
begin
    if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.Spr_ItemsNewRecord(DataSet: TDataSet);
begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      Spr_ItemsID_Items.Value:=Spr_KeyID_Key.Value;
      Spr_ItemsID_Parent.Value:=ID_Parent;
      Spr_ItemsID_Supplier.Value:=Spr_SupplierID_Supplier.Value;
      Spr_ItemsID_Edizm.Value:=0;
      if (ID_Parent=0) then
      begin
        Spr_ItemsItems_Name.Value:='����� �����';
        Spr_ItemsItems_Articul.Value:='';
        Spr_ItemsItems_Level.Value:=0;
      end
      else
      begin
        Spr_ItemsItems_Name.Value:='����� �����';
        Spr_ItemsItems_Articul.Value:='0000';
        Spr_ItemsItems_Level.Value:=1;
        Spr_ItemsItems_Folder.Value:=Folder_Name;
      end;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.Spr_ItemsBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.Spr_EdizmNewRecord(DataSet: TDataSet);
begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      Spr_EdizmID_Edizm.Value:=Spr_KeyID_Key.Value;
      Spr_EdizmEdizm_Name.Value:='����� ������� ���������';
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.Spr_EdizmBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.Spr_ConfigNewRecord(DataSet: TDataSet);
begin
  if Name_Drag='Spr_Items' then
  begin
    with Spr_Key do
    begin
      Open;
      try
        Edit;
        Spr_ConfigID_Config.Value:=Spr_KeyID_Key.Value;
        Spr_ConfigID_Parent.Value:=Drop_ID_Parent;
        Spr_ConfigID_Supplier.Value:=Drag_ID_Supplier;
        Spr_ConfigID_Items.Value:=Drag_Items_ID;
        Spr_ConfigID_Edizm.Value:=Drag_ID_Edizm;
        Spr_ConfigItems_Name.Value:=Drag_Items_Name;
        Spr_ConfigItems_Articul.Value:=Drag_Items_Articul;
        Spr_ConfigItems_Value.Value:=0;
        Spr_ConfigItems_Level.Value:=1;
        Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
        Post;
      finally
        Close;
      end;
    end;
  end  
  else
  begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      Spr_ConfigID_Config.Value:=Spr_KeyID_Key.Value;
      Spr_ConfigID_Parent.Value:=0;
      Spr_ConfigID_Items.Value:=0;
      Spr_ConfigItems_Name.Value:='����� ������������';
      Spr_ConfigItems_Articul.Value:='';
      Spr_ConfigItems_Value.AsString:='';
      Spr_ConfigItems_Level.Value:=0;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
  end;
end;

procedure TDepot.Spr_SupplierFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(Depot.Spr_SupplierID_Supplier.Value=ID_Supplier);
end;

procedure TDepot.Arrival_ItemsNewRecord(DataSet: TDataSet);
begin
with Spr_Key do
  begin
    Open;
    try
      Edit;
      Arrival_ItemsID_Arrival_Items.Value:=Spr_KeyID_Key.Value;
      Arrival_ItemsID_Arrival.Value:=Depot.ArrivalID_Arrival.Value;
      Arrival_ItemsID_Items.Value:=Drag_Items_ID;
      Arrival_ItemsID_Supplier.Value:=Drag_ID_Supplier;
      Arrival_ItemsID_Edizm.Value:=Drag_ID_Edizm;
      Arrival_ItemsID_Parent.Value:=Drag_ID_Parent;
      Arrival_ItemsArrival_Items_Value.Value:=0;
      Arrival_ItemsArrival_Items_Date.Value:=Date();
      Arrival_ItemsArrival_Items_Folder.Value:=Drag_Items_Folder;
      Arrival_ItemsArrival_Items_Level.Value:=Drag_Items_Level;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.Arrival_ItemsBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.ArrivalNewRecord(DataSet: TDataSet);
begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      ArrivalID_Arrival.Value:=Spr_KeyID_Key.Value;
      ArrivalID_Supplier.Value:=Spr_SupplierID_Supplier.Value;
      ArrivalArrival_Name.Value:='����� ������';
      ArrivalArrival_Date.Value:=Date();
      Arrival.Post;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.ArrivalBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.ChargeBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('����������� �������� ������?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TDepot.ChargeNewRecord(DataSet: TDataSet);
begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      ChargeID_Charge.Value:=Spr_KeyID_Key.Value;
      //ChargeID_Supplier.Value:=Spr_SupplierID_Supplier.Value;
      ChargeCharge_Name.Value:='����� ������';
      ChargeCharge_Date.Value:=Date();
      ChargeZakaz_Name.Value:='��������';
      ChargeZakaz_Date.Value:=Date();
      Charge.Post;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
end;

procedure TDepot.Charge_ItemsNewRecord(DataSet: TDataSet);
begin
  if Name_Drag='Spr_Items' then
  begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
        Charge_ItemsID_Charge_Items.Value:=Spr_KeyID_Key.Value;
        Charge_ItemsID_Charge.Value:=Depot.ChargeID_Charge.Value;
        Charge_ItemsID_Supplier.Value:=Drag_ID_Supplier;
        Charge_ItemsID_Items.Value:=Drag_Items_ID;
        Charge_ItemsID_Edizm.Value:=Drag_ID_Edizm;
        Charge_ItemsCharge_Items_Date.Value:=Date();
        Charge_ItemsCharge_Items_Value.Value:=0;
        Charge_ItemsCharge_Items_ValueS.Value:=0;
        Charge_Items.Post;
        Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Post;
    finally
      Close;
    end;
  end;
  end;
  if Name_Drag='Spr_Config' then
  begin
  with Spr_Key do
  begin
    Open;
    try
      Edit;
      Charge_ItemsID_Charge_Items.Value:=Spr_KeyID_Key.Value;
      Charge_ItemsID_Charge.Value:=ChargeID_Charge.Value;
      Charge_ItemsID_Supplier.Value:=Select_ConfigID_Supplier.Value;
      Charge_ItemsID_Items.Value:=Select_ConfigID_Items.Value;
      Charge_ItemsID_Edizm.Value:=Select_ConfigID_Edizm.Value;
      Charge_ItemsCharge_Items_Date.Value:=Date();
      Charge_ItemsCharge_Items_Price.Value:=Select_ConfigItems_Price.Value;
      Charge_ItemsCharge_Items_ValueS.Value:=Select_ConfigItems_Value.Value;
      Spr_KeyID_Key.Value := Spr_KeyID_Key.Value + 1;
      Charge_Items.Post;
      Post;
    finally
      Close;
    end;
  end;
  end
end;

procedure TDepot.OstatkiCalcFields(DataSet: TDataSet);
begin
  OstatkiSum_Ostatok.Value:=OstatkiSumArrival_Items_Value.Value-OstatkiTotal_Out.Value;
end;

procedure TDepot.Charge_ItemsBeforePost(DataSet: TDataSet);
var x : variant;
begin
  if Charge_Items.State in [dsEdit] then
  begin
  if VarIsNull(Ostatki.Lookup('ID_Items',Charge_ItemsID_Items.Value,'Total_Ost')) then
    Count_Item:=0
    else
    Count_Item:=(Ostatki.Lookup('ID_Items',Charge_ItemsID_Items.Value,'Total_Ost'));
    if Charge_ItemsCharge_Items_Value.NewValue>(Charge_ItemsCharge_Items_Value.OldValue+Count_Item) then
    begin
      ShowMessage('��������� ���-�� � �������.');
      Abort;
    end
  end
  else
    if Charge_ItemsCharge_Items_Value.Value>Round(Count_Item) then
    begin
      ShowMessage('��������� ���-�� � �������.');
      Abort;
    end;
  if Charge_Items.State in [dsInsert] then
  begin
    if Name_Drag='Spr_Config' then x:=Select_ConfigID_Items.Value else x:=Drag_Items_ID;
    if VarIsNull(Ostatki.Lookup('ID_Items',x,'Total_Ost')) then
    Count_Item:=0
    else
    Count_Item:=(Ostatki.Lookup('ID_Items',x,'Total_Ost'));
    if Charge_ItemsCharge_Items_ValueS.Value>Count_Item then Charge_ItemsCharge_Items_Value.Value:=Count_Item
    else Charge_ItemsCharge_Items_Value.Value:=Charge_ItemsCharge_Items_ValueS.Value;
  end;
end;

procedure TDepot.Charge_ItemsAfterPost(DataSet: TDataSet);
begin
  Ostatki.DisableControls;
  Ostatki.Requery;
  Ostatki.EnableControls;
end;

procedure TDepot.Charge_ItemsCalcFields(DataSet: TDataSet);
begin
  Charge_ItemsCharge_Items_Sum.Value:=Charge_ItemsItems_Price.Value*Charge_ItemsCharge_Items_Value.Value;
end;

end.
