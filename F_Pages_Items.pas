unit F_Pages_Items;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons,  dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor, StdCtrls,
  ExtCtrls, DB, Menus, dxDBEdtr, JvSplitter, JvPanel, ImgList, ToolWin,
  JvToolBar, Grids, DBGrids;

type
  TPages_Items = class(TForm)
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
    JvPanel3: TJvPanel;
    dx_Charge: TdxDBGrid;
    dxButtonEdit1: TdxButtonEdit;
    Label6: TLabel;
    dx_ChargeItems_Page: TdxDBGridColumn;
    dx_ChargeID_Items: TdxDBGridMaskColumn;
    dx_Rashod_Many: TdxDBGrid;
    dx_Rashod_ManyItems_Articul: TdxDBGridMaskColumn;
    dx_Rashod_ManyItems_Name: TdxDBGridLookupColumn;
    dx_Rashod_ManyEdizm_Name: TdxDBGridLookupColumn;
    JvPanel2: TJvPanel;
    dx_Rashod_ManyArrival_Items_Value: TdxDBGridMaskColumn;
    dx_Rashod_ManyArrival_Items_Date: TdxDBGridDateColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridLookupColumn1: TdxDBGridLookupColumn;
    dxDBGridLookupColumn2: TdxDBGridLookupColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dx_Rashod_ManyDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure Tool_PrintClick(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
    procedure dxButtonEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pages_Items: TPages_Items;
  procedure State_On;
implementation
uses F_Depot, F_Global_Var, F_Preview;
{$R *.DFM}

procedure TPages_Items.FormShow(Sender: TObject);
begin
  Depot.ADO_Pages.Open;
  Depot.Items_In.Open;
  Depot.Items_Out.Open;
end;

procedure TPages_Items.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Depot.ADO_Pages.Close;
  Depot.Items_In.Close;
  Depot.Items_Out.Close;
end;

procedure TPages_Items.dx_Rashod_ManyDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i:integer;
begin

end;

procedure State_On;
begin

end;

procedure TPages_Items.Tool_PrintClick(Sender: TObject);
begin
  {  Name_Rep:='Rashod.frf';

    Depot.frReport1.Preview:= Preview.frPreview1;
    Depot.frReport1.Dataset:=Depot.fr_Charge;
    WPath := ExtractFilePath(ParamStr(0));
    Depot.frReport1.LoadFromFile(WPath +'Report\'+ Name_Rep);

    Preview.frPreview1.PageWidth;
    Depot.frReport1.ShowReport;
    Preview.Show;   }
end;

procedure TPages_Items.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TPages_Items.dxButtonEdit1Change(Sender: TObject);
begin
    Depot.ADO_Pages.Locate('Items_Page',dxButtonEdit1.Text,[loPartialKey]);
end;

end.
