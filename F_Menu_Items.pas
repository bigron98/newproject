unit F_Menu_Items;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Buttons, JvGradient,
  ExtCtrls, ImgList, ComCtrls, ToolWin, JvToolBar, dxTL, dxDBCtrl, dxDBGrid, DB,
  dxDBTLCl, dxGrClms, dxExEdtr, ExtDlgs, JvSpin, Spin, DBCtrls, Grids,
  DBGrids, Menus;

type
  TMenu_Items = class(TForm)
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
    dxDBMemo1: TdxDBMemo;
    Label4: TLabel;
    Label1: TLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBEdit5: TdxDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit1: TdxDBEdit;
    dx_Menu_Items: TdxDBGrid;
    Splitter1: TSplitter;
    Popup_Calculation: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ToolButton2: TToolButton;
    Popup_Print: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dx_Menu_CategoryID_Supplier: TdxDBGridMaskColumn;
    dx_Menu_CategorySupplier_Name: TdxDBGridColumn;
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu_Items: TMenu_Items;

implementation
uses F_Depot, F_Global_Var;
{$R *.DFM}

procedure TMenu_Items.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Items.First;
end;

procedure TMenu_Items.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Items.Prior;
end;

procedure TMenu_Items.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Items.Next;
end;

procedure TMenu_Items.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Items.Last;
end;

procedure TMenu_Items.Tool_AppendClick(Sender: TObject);
begin
  Depot.Spr_Items.Append;
  Depot.Spr_ItemsItems_Name.FocusControl;
end;

procedure TMenu_Items.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Items.RecordCount>0 then Depot.Spr_Items.Delete;
end;

procedure TMenu_Items.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Items.State in [dsEdit, dsInsert] then Depot.Spr_Items.Post;
end;

procedure TMenu_Items.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

end.
