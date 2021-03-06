unit F_Spr_Items;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Buttons, JvGradient,
  ExtCtrls, ImgList, ComCtrls, ToolWin, JvToolBar, dxTL, dxDBCtrl, dxDBGrid, DB,
  dxDBTLCl, dxGrClms, dxExEdtr, ExtDlgs, JvSpin, Spin, DBCtrls, Grids,
  DBGrids, Menus, dxDBEdtr, dxDBTL;

type
  TSpr_Items = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvToolBar1: TJvToolBar;
    Tool_First: TToolButton;
    Tool_Prior: TToolButton;
    Tool_Next: TToolButton;
    Tool_Last: TToolButton;
    Tool_Append: TToolButton;
    Tool_Delete: TToolButton;
    Tool_Post: TToolButton;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    OpenPictureDialog1: TOpenPictureDialog;
    SpinButton1: TSpinButton;
    dx_Menu_Category: TdxDBGrid;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit1: TdxDBEdit;
    Splitter1: TSplitter;
    ToolButton2: TToolButton;
    Popup_Print: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dx_Menu_CategoryID_Supplier: TdxDBGridMaskColumn;
    dx_Menu_CategorySupplier_Name: TdxDBGridColumn;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dx_Items: TdxDBTreeList;
    ImageList2: TImageList;
    dx_ItemsID_Items: TdxDBTreeListMaskColumn;
    dx_ItemsID_Parent: TdxDBTreeListMaskColumn;
    dx_ItemsID_Supplier: TdxDBTreeListMaskColumn;
    dx_ItemsID_Edizm: TdxDBTreeListMaskColumn;
    dx_ItemsItems_Name: TdxDBTreeListColumn;
    dx_ItemsItems_Folder: TdxDBTreeListColumn;
    dx_ItemsItems_Articul: TdxDBTreeListColumn;
    dx_ItemsItems_Level: TdxDBTreeListMaskColumn;
    dx_ItemsItems_Min: TdxDBTreeListMaskColumn;
    dx_ItemsEdizm_Name: TdxDBTreeListLookupColumn;
    dxDBEdit4: TdxDBEdit;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    dxDBEdit3: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit5: TdxDBEdit;
    Label4: TLabel;
    dxDBEdit6: TdxDBEdit;
    Label6: TLabel;
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure dx_Spr_ItemsStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dx_Spr_ItemsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dx_Spr_ItemsEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure dx_ItemsCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Spr_Items: TSpr_Items;
  procedure State_On;
implementation
uses F_Depot, F_Global_Var;
{$R *.DFM}

procedure TSpr_Items.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Items.First;
end;

procedure TSpr_Items.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Items.Prior;
end;

procedure TSpr_Items.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Items.Next;
end;

procedure TSpr_Items.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Items.Last;
end;

procedure TSpr_Items.Tool_AppendClick(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  ID_Parent:=Depot.Spr_ItemsID_Parent.Value;
  vis:=ID_Parent<>0;
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Sender);
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TSpr_Items.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Items.RecordCount>0 then Depot.Spr_Items.Delete;
end;

procedure TSpr_Items.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
end;

procedure TSpr_Items.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TSpr_Items.dx_Spr_ItemsStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Name_Drag:='Spr_Items';
  Drag_Items_ID:=Depot.Spr_ItemsID_Items.Value;
  Drag_ID_Parent:=Depot.Spr_ItemsID_Parent.Value;
  Drag_ID_Edizm:=Depot.Spr_ItemsID_Edizm.Value;
  Drag_ID_Supplier:=Depot.Spr_ItemsID_Supplier.Value;
  Drag_Items_Name:=Depot.Spr_ItemsItems_Name.Value ;
  Drag_Items_Articul:=Depot.Spr_ItemsItems_Articul.Value;
  Drag_Items_Folder:=Depot.Spr_ItemsItems_Folder.Value;
  Drag_Items_Level:=Depot.Spr_ItemsItems_Level.Value;
 // Depot.Spr_Items.DisableControls;
 // dx_Items.
end;

procedure TSpr_Items.dx_Spr_ItemsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=false;
end;

procedure TSpr_Items.dx_Spr_ItemsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  Name_Drag:='';
 // Depot.Spr_Items.EnableControls;
end;

procedure TSpr_Items.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=1 then
  begin
    if not (Depot.Spr_Items.State in [dsInsert]) then vis:=(Depot.Spr_ItemsItems_Level.Value=1);
    dxDBEdit2.Visible:=vis;
    dxDBLookupEdit1.Visible:=vis;
    dxDBEdit4.Visible:=vis;
    dxDBEdit3.Visible:=vis;
    dxDBEdit5.Visible:=vis;
    dxDBEdit6.Visible:=vis;
    Label4.Visible:=vis;
    Label6.Visible:=vis;
    Label1.Visible:=vis;
    Label7.Visible:=vis;
    Label3.Visible:=vis;
    Label5.Visible:=vis;

  end;
end;

procedure TSpr_Items.MenuItem1Click(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  ID_Parent:=0;
  vis:=false;
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Sender);
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TSpr_Items.MenuItem2Click(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  if (Depot.Spr_ItemsID_Parent.Value=0) then
  begin
    ID_Parent:=Depot.Spr_ItemsID_Items.Value;
    Folder_Name:=Depot.Spr_ItemsItems_Name.Value;
  end
  else
  begin
    ID_Parent:=Depot.Spr_ItemsID_Parent.Value;
    Folder_Name:=Depot.Spr_ItemsItems_Folder.Value;
  end;
  vis:=true;
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Sender);
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TSpr_Items.dx_ItemsCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
{  if ID_Supplier>0 then
  begin
    if ANode.Values[dx_ItemsID_Supplier.Index] = ID_Supplier then AFont.Color:=clNavy else AFont.Color:=clSilver;
  end;}
end;

procedure TSpr_Items.ToolButton5Click(Sender: TObject);
begin
  if Spr_Items.Align=alBottom then State_On else Spr_Items.Align:=alBottom;
end;

procedure State_On;
begin
  Spr_Items.Align:=alNone;
  Spr_Items.ClientHeight:=440;
  Spr_Items.ClientWidth:=640;
  Spr_Items.Position:=poScreenCenter;
end;

end.
