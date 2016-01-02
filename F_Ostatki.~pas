unit F_Ostatki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Buttons, JvGradient,
  ExtCtrls, ImgList, ComCtrls, ToolWin, JvToolBar, dxTL, dxDBCtrl, dxDBGrid, DB,
  dxDBTLCl, dxGrClms, dxExEdtr, ExtDlgs, JvSpin, Spin, DBCtrls, Grids,
  DBGrids, Menus, dxDBEdtr, dxDBTL;

type
  TOstatki = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    Splitter1: TSplitter;
    ToolButton2: TToolButton;
    Popup_Print: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dx_Menu_CategoryID_Supplier: TdxDBGridMaskColumn;
    dx_Menu_CategorySupplier_Name: TdxDBGridColumn;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    dx_Ostatki: TdxDBGrid;
    dx_OstatkiID_Items: TdxDBGridMaskColumn;
    dx_OstatkiID_Supplier: TdxDBGridMaskColumn;
    dx_OstatkiID_Edizm: TdxDBGridMaskColumn;
    dx_OstatkiItems_Name: TdxDBGridLookupColumn;
    dx_OstatkiItems_Articul: TdxDBGridLookupColumn;
    dx_OstatkiEdizm_Name: TdxDBGridLookupColumn;
    dx_OstatkiSumArrival_Items_Value: TdxDBGridMaskColumn;
    dx_OstatkiSumCharge_Items_Value: TdxDBGridMaskColumn;
    dx_OstatkiLastArrival_Items_Price: TdxDBGridMaskColumn;
    dx_OstatkiSum_Ostatok: TdxDBGridColumn;
    dx_OstatkiSum_Min: TdxDBGridLookupColumn;
    ToolButton3: TToolButton;
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
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure dx_OstatkiCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dx_Prihod_ManyCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ostatki: TOstatki;
  procedure State_On;
implementation
uses F_Depot, F_Global_Var, F_Spr_Items;
{$R *.DFM}

procedure TOstatki.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Items.First;
end;

procedure TOstatki.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Items.Prior;
end;

procedure TOstatki.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Items.Next;
end;

procedure TOstatki.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Items.Last;
end;

procedure TOstatki.Tool_AppendClick(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  ID_Parent:=Depot.Spr_ItemsID_Parent.Value;
  vis:=ID_Parent<>0;
  PageControl1.ActivePageIndex:=1;

  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TOstatki.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Items.RecordCount>0 then Depot.Spr_Items.Delete;
end;

procedure TOstatki.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
end;

procedure TOstatki.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TOstatki.dx_Spr_ItemsStartDrag(Sender: TObject;
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

procedure TOstatki.dx_Spr_ItemsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=false;
end;

procedure TOstatki.dx_Spr_ItemsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  Name_Drag:='';
 // Depot.Spr_Items.EnableControls;
end;

procedure TOstatki.MenuItem1Click(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  ID_Parent:=0;
  vis:=false;
  PageControl1.ActivePageIndex:=1;
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TOstatki.MenuItem2Click(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
  if (Depot.Spr_ItemsID_Parent.Value=0) then ID_Parent:=Depot.Spr_ItemsID_Items.Value else
  ID_Parent:=Depot.Spr_ItemsID_Parent.Value;
  vis:=true;
  PageControl1.ActivePageIndex:=1;
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TOstatki.dx_OstatkiCustomDrawCell(Sender: TObject;
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

procedure TOstatki.ToolButton5Click(Sender: TObject);
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

procedure TOstatki.FormShow(Sender: TObject);
begin
  Depot.Ostatki.Open;
end;

procedure TOstatki.dx_Prihod_ManyCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Values[dx_OstatkiSum_Ostatok.Index] < ANode.Values[dx_OstatkiSum_Min.Index] then AFont.Color:=clRed ;
end;

procedure TOstatki.ToolButton3Click(Sender: TObject);
begin
  Depot.Ostatki.DisableControls;
  Depot.Ostatki.Requery;
  Depot.Ostatki.EnableControls;
end;

end.
