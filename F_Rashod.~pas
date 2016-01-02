unit F_Rashod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons,  dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor, StdCtrls,
  ExtCtrls, DB, Menus, dxDBEdtr, JvSplitter, JvPanel, ImgList, ToolWin,
  JvToolBar, Grids, DBGrids;

type
  TRashod = class(TForm)
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    JvToolBar1: TJvToolBar;
    Tool_First: TToolButton;
    Tool_Prior: TToolButton;
    Tool_Next: TToolButton;
    Tool_Last: TToolButton;
    Tool_Append: TToolButton;
    Tool_Delete: TToolButton;
    Tool_Post: TToolButton;
    ToolButton1: TToolButton;
    Tool_Cancel: TToolButton;
    Tool_Ok: TToolButton;
    ToolButton2: TToolButton;
    Tool_Print: TToolButton;
    IButton: TImageList;
    JvPanel1: TJvPanel;
    JvSplitter1: TJvSplitter;
    JvPanel2: TJvPanel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    Label4: TLabel;
    dxDBMemo1: TdxDBMemo;
    Label5: TLabel;
    JvPanel3: TJvPanel;
    dx_Charge: TdxDBGrid;
    dx_ChargeID_Charge: TdxDBGridMaskColumn;
    dx_ChargeID_Supplier: TdxDBGridMaskColumn;
    dx_ChargeCharge_Date: TdxDBGridDateColumn;
    dx_ChargeZakaz_Name: TdxDBGridColumn;
    dx_ChargeZakaz_Date: TdxDBGridDateColumn;
    dx_ChargeZakaz_Dop: TdxDBGridMemoColumn;
    dxButtonEdit1: TdxButtonEdit;
    Label6: TLabel;
    dx_Rashod_Many: TdxDBGrid;
    dx_Rashod_ManyID_Charge_Items: TdxDBGridMaskColumn;
    dx_Rashod_ManyID_Charge: TdxDBGridMaskColumn;
    dx_Rashod_ManyID_Items: TdxDBGridMaskColumn;
    dx_Rashod_ManyID_Supplier: TdxDBGridMaskColumn;
    dx_Rashod_ManyItems_Name: TdxDBGridLookupColumn;
    dx_Rashod_ManyEdizm_Name: TdxDBGridLookupColumn;
    dx_Rashod_ManyCharge_Items_Date: TdxDBGridDateColumn;
    dx_Rashod_ManyCharge_Items_Value: TdxDBGridMaskColumn;
    dx_Rashod_ManyCharge_Items_Price: TdxDBGridMaskColumn;
    dx_Rashod_ManyID_Edizm: TdxDBGridMaskColumn;
    dx_Rashod_ManyID_Parent: TdxDBGridMaskColumn;
    dx_Rashod_ManyCharge_Items_Folder: TdxDBGridColumn;
    dx_Rashod_ManyCharge_Items_Level: TdxDBGridMaskColumn;
    dx_Rashod_ManyCharge_Items_ValueS: TdxDBGridMaskColumn;
    dx_Rashod_ManySupplier_Name: TdxDBGridLookupColumn;
    dx_ChargeCharge_Name: TdxDBGridMaskColumn;
    dx_Rashod_ManyItems_Articul: TdxDBGridMaskColumn;
    dx_Rashod_ManyItems_Page: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure dx_RashodChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBLookupEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dx_Rashod_ManyDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dx_Rashod_ManyDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure Tool_OkClick(Sender: TObject);
    procedure Tool_PrintClick(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
    procedure dx_Rashod_ManyCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxButtonEdit1Change(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rashod: TRashod;
  procedure State_On;
implementation
uses F_Depot, F_Global_Var, F_Preview;
{$R *.DFM}

procedure TRashod.FormShow(Sender: TObject);
begin
  Depot.Charge.Open;
  Depot.Charge_Items.Open;
end;

procedure TRashod.dx_RashodChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  {Depot.Spr_Supplier.Filtered:=false;
  ID_Supplier:=Depot.Spr_Supplier_AllID_Supplier.Value;
  Depot.Spr_Supplier.Filtered:=true;}
end;

procedure TRashod.dxDBLookupEdit1Change(Sender: TObject);
begin
  {Depot.Spr_Supplier.Filtered:=false;
  ID_Supplier:=Depot.Spr_Supplier_AllID_Supplier.Value;
  Depot.Spr_Supplier.Filtered:=true;}
end;

procedure TRashod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Depot.Charge.Close;
  Depot.Charge_Items.Close;
  //Depot.Spr_Supplier.Filtered:=false;
end;

procedure TRashod.dx_Rashod_ManyDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Name_Drag='Spr_Items' then Accept:=(Drag_ID_Parent<>0) else Accept:=(Drag_ID_Parent=0);
end;

procedure TRashod.dx_Rashod_ManyDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i:integer;
begin
  if Name_Drag='Spr_Items' then
  begin
    Depot.Charge_Items.Append;
    if Depot.Charge_Items.State in [dsInsert, dsEdit] then Depot.Charge_Items.Post;
    Depot.Charge_ItemsCharge_Items_Value.FocusControl;
  end
  else
  begin
    Depot.Select_Config.Close;
    Depot.Select_Config.Parameters[0].DataType:=ftInteger;
    Depot.Select_Config.Parameters[0].Value:=Drop_ID_Parent;
    Depot.Select_Config.Open;
    Depot.Charge_Items.DisableControls;
    for i:=1 to Depot.Select_Config.RecordCount do
    begin
      Depot.Charge_Items.Append;
      Depot.Select_Config.Next;
    end;
    Depot.Charge_Items.EnableControls;
  end;
end;

procedure TRashod.Tool_FirstClick(Sender: TObject);
begin
  Depot.Charge.First;
end;

procedure TRashod.Tool_PriorClick(Sender: TObject);
begin
  Depot.Charge.Prior;
end;

procedure TRashod.Tool_NextClick(Sender: TObject);
begin
  Depot.Charge.Next;
end;

procedure TRashod.Tool_LastClick(Sender: TObject);
begin
  Depot.Charge.Last;
end;

procedure TRashod.Tool_AppendClick(Sender: TObject);
begin
  Depot.Charge.Append;
end;

procedure TRashod.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Charge.RecordCount>0 then Depot.Charge.Delete;
end;

procedure TRashod.Tool_PostClick(Sender: TObject);
begin
  if Depot.Charge.State in [dsEdit, dsInsert] then Depot.Charge.Post;
end;

procedure TRashod.Tool_OkClick(Sender: TObject);
begin
  if Rashod.Align=alBottom then State_On else Rashod.Align:=alBottom;
end;

procedure State_On;
begin
  Rashod.Align:=alNone;
  Rashod.ClientHeight:=440;
  Rashod.ClientWidth:=640;
  Rashod.Position:=poScreenCenter;
end;

procedure TRashod.Tool_PrintClick(Sender: TObject);
begin
    Name_Rep:='Rashod.frf';

    Depot.frReport1.Preview:= Preview.frPreview1;
    Depot.frReport1.Dataset:=Depot.fr_Charge;
    WPath := ExtractFilePath(ParamStr(0));
    Depot.frReport1.LoadFromFile(WPath +'Report\'+ Name_Rep);

    Preview.frPreview1.PageWidth;
    Depot.frReport1.ShowReport;
    Preview.Show;
end;

procedure TRashod.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TRashod.dx_Rashod_ManyCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Values[dx_Rashod_ManyCharge_Items_Value.Index] < ANode.Values[dx_Rashod_ManyCharge_Items_ValueS.Index] then AFont.Color:=clRed ;
  if ANode.Values[dx_Rashod_ManyCharge_Items_Value.Index] > ANode.Values[dx_Rashod_ManyCharge_Items_ValueS.Index] then AFont.Color:=clGreen ;
end;

procedure TRashod.dxButtonEdit1Change(Sender: TObject);
begin
  if dxButtonEdit1.Buttons[0].Visible then Depot.Charge.Locate('Charge_Name',dxButtonEdit1.Text,[loPartialKey])
  else
    if dxButtonEdit1.Buttons[1].Visible then
    begin
      Depot.Items_All.Locate('Items_Articul',dxButtonEdit1.Text,[loPartialKey]);
      ID_Seach:=Depot.Items_AllID_Items.Value;
      Depot.Charge_Items.Locate('ID_Charge;ID_Items',VarArrayOf([Depot.ChargeID_Charge.Value,ID_Seach]),[loCaseInsensitive]);
    end
    else
    begin
      Depot.Items_All.Locate('Items_Page',dxButtonEdit1.Text,[loPartialKey]);
      ID_Seach:=Depot.Items_AllID_Items.Value;
      Depot.Charge_Items.Locate('ID_Charge;ID_Items',VarArrayOf([Depot.ChargeID_Charge.Value,ID_Seach]),[loCaseInsensitive]);
    end
end;

procedure TRashod.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var i:integer;  
    dx_activ: array[0..2] of TdxDBGridMaskColumn;
begin
  dx_activ[0]:=dx_ChargeCharge_Name;
  dx_activ[1]:=dx_Rashod_ManyItems_Articul;
  dx_activ[2]:=dx_Rashod_ManyItems_Page;
  if AbsoluteIndex=2 then AbsoluteIndex:=0 else AbsoluteIndex:=AbsoluteIndex+1;
  for i:=0 to 2 do
  begin
    dxButtonEdit1.Buttons[i].Visible:=false;
    dx_activ[i].Color:=clWindow;
  end;
  dxButtonEdit1.Buttons[AbsoluteIndex].Visible:=true;
  dx_activ[AbsoluteIndex].Color:=$00E4E2C0;
end;

end.
