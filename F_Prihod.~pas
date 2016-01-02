unit F_Prihod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons,  dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor, StdCtrls,
  ExtCtrls, DB, Menus, dxDBEdtr, JvSplitter, JvPanel, ImgList, ToolWin,
  JvToolBar;

type
  TPrihod = class(TForm)
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
    dx_Prihod_Many: TdxDBGrid;
    JvSplitter1: TJvSplitter;
    JvPanel2: TJvPanel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dx_Prihod_ManyID_Arrival_Items: TdxDBGridMaskColumn;
    dx_Prihod_ManyID_Arrival: TdxDBGridMaskColumn;
    dx_Prihod_ManyID_Items: TdxDBGridMaskColumn;
    dx_Prihod_ManyArrival_Items_Value: TdxDBGridMaskColumn;
    dx_Prihod_ManyArrival_Items_Price: TdxDBGridMaskColumn;
    dx_Prihod_ManyArrival_Items_Date: TdxDBGridDateColumn;
    dx_Prihod_ManyItems_Name: TdxDBGridLookupColumn;
    dx_Prihod_ManyArrival_Items_Folder: TdxDBGridColumn;
    dx_Prihod_ManyArrival_Items_Level: TdxDBGridMaskColumn;
    JvPanel3: TJvPanel;
    Label6: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dx_Charge: TdxDBGrid;
    dx_ChargeID_Arrival: TdxDBGridMaskColumn;
    dx_ChargeID_Supplier: TdxDBGridMaskColumn;
    dx_ChargeArrival_Date: TdxDBGridDateColumn;
    dx_ChargeSupplier_Name: TdxDBGridLookupColumn;
    dx_Prihod_ManyID_Supplier: TdxDBGridMaskColumn;
    dx_Prihod_ManyID_Parent: TdxDBGridMaskColumn;
    dx_Prihod_ManyID_Edizm: TdxDBGridMaskColumn;
    dx_Prihod_ManyEdizm_Name: TdxDBGridLookupColumn;
    dx_Prihod_ManyItems_Articul: TdxDBGridMaskColumn;
    dx_Prihod_ManyItems_Page: TdxDBGridMaskColumn;
    dx_ChargeArrival_Name: TdxDBGridMaskColumn;

    procedure FormShow(Sender: TObject);
    procedure dx_PrihodChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBLookupEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dx_Prihod_ManyDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dx_Prihod_ManyDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
    procedure Tool_OkClick(Sender: TObject);
    procedure Tool_PrintClick(Sender: TObject);
    procedure dxButtonEdit1Change(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prihod: TPrihod;
  procedure State_On;

implementation
uses F_Depot, F_Global_Var, F_Preview;
{$R *.DFM}



procedure TPrihod.FormShow(Sender: TObject);
begin
  Depot.Arrival.Open;
  Depot.Arrival_Items.Open;
  ID_Supplier:=Depot.Spr_Supplier_AllID_Supplier.Value;
  Depot.Spr_Supplier.Filtered:=true;
end;

procedure TPrihod.dx_PrihodChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  Depot.Spr_Supplier.Filtered:=false;
  ID_Supplier:=Depot.Spr_Supplier_AllID_Supplier.Value;
  Depot.Spr_Supplier.Filtered:=true;
end;

procedure TPrihod.dxDBLookupEdit1Change(Sender: TObject);
begin
  Depot.Spr_Supplier.Filtered:=false;
  ID_Supplier:=Depot.Spr_Supplier_AllID_Supplier.Value;
  Depot.Spr_Supplier.Filtered:=true;
end;

procedure TPrihod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Depot.Arrival.Close;
  Depot.Arrival_Items.Close;
  Depot.Spr_Supplier.Filtered:=false;
end;

procedure TPrihod.dx_Prihod_ManyDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=(Drag_ID_Parent<>0) and (Name_Drag='Spr_Items');
end;

procedure TPrihod.dx_Prihod_ManyDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  Depot.Arrival_Items.Append;
  Depot.Arrival_Items.Post;
  Depot.Arrival_ItemsArrival_Items_Value.FocusControl;
end;

procedure TPrihod.Tool_AppendClick(Sender: TObject);
begin
  Depot.Arrival.Append;
end;

procedure TPrihod.Tool_FirstClick(Sender: TObject);
begin
  Depot.Arrival.First;
end;

procedure TPrihod.Tool_PriorClick(Sender: TObject);
begin
  Depot.Arrival.Prior;
end;

procedure TPrihod.Tool_NextClick(Sender: TObject);
begin
  Depot.Arrival.Next;
end;

procedure TPrihod.Tool_LastClick(Sender: TObject);
begin
  Depot.Arrival.Last;
end;

procedure TPrihod.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Arrival.RecordCount>1 then Depot.Arrival.Delete;
end;

procedure TPrihod.Tool_PostClick(Sender: TObject);
begin
  if Depot.Arrival.State in [dsEdit, dsInsert] then Depot.Arrival.Post;
end;

procedure TPrihod.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TPrihod.Tool_OkClick(Sender: TObject);
begin
  if Prihod.Align=alBottom then State_On else Prihod.Align:=alBottom;
end;

procedure State_On;
begin
  Prihod.Align:=alNone;
  Prihod.ClientHeight:=440;
  Prihod.ClientWidth:=640;
  Prihod.Position:=poScreenCenter;
end;

procedure TPrihod.Tool_PrintClick(Sender: TObject);
begin
    Name_Rep:='Prihod.frf';

    Depot.frReport1.Preview:= Preview.frPreview1;
    Depot.frReport1.Dataset:=Depot.fr_Arrival;
    WPath := ExtractFilePath(ParamStr(0));
    Depot.frReport1.LoadFromFile(WPath +'Report\'+ Name_Rep);

    Preview.frPreview1.PageWidth;
    Depot.frReport1.ShowReport;
    Preview.Show;
end;

procedure TPrihod.dxButtonEdit1Change(Sender: TObject);
begin
  if dxButtonEdit1.Buttons[0].Visible then Depot.Arrival.Locate('Arrival_Name',dxButtonEdit1.Text,[loPartialKey])
  else
    if dxButtonEdit1.Buttons[1].Visible then
    begin
      Depot.Items_All.Locate('Items_Articul',dxButtonEdit1.Text,[loPartialKey]);
      ID_Seach:=Depot.Items_AllID_Items.Value;
      Depot.Arrival_Items.Locate('ID_Arrival;ID_Items',VarArrayOf([Depot.ArrivalID_Arrival.Value,ID_Seach]),[loCaseInsensitive]);
    end
    else
      begin
        Depot.Items_All.Locate('Items_Page',dxButtonEdit1.Text,[loPartialKey]);
        ID_Seach:=Depot.Items_AllID_Items.Value;
        Depot.Arrival_Items.Locate('ID_Arrival;ID_Items',VarArrayOf([Depot.ArrivalID_Arrival.Value,ID_Seach]),[loCaseInsensitive]);
      end;
end;
                                  
procedure TPrihod.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var i:integer;
    dx_activ: array[0..2] of TdxDBGridMaskColumn;
begin
  dx_activ[0]:=dx_ChargeArrival_Name;
  dx_activ[1]:=dx_Prihod_ManyItems_Articul;
  dx_activ[2]:=dx_Prihod_ManyItems_Page;
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
