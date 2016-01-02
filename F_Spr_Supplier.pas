unit F_Spr_Supplier;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, JvToolBar, dxGrClEx, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, StdCtrls, DB;

type
  TSpr_Supplier = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    dx_Supplier: TdxDBGrid;
    Label7: TLabel;
    dx_Work_Conditions: TdxDBButtonEdit;
    dx_SupplierSupplier_Name: TdxDBGridColumn;
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Spr_Supplier: TSpr_Supplier;

implementation
uses F_Depot;//;, F_Global_Var;
{$R *.DFM}

procedure TSpr_Supplier.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Supplier.First;
end;

procedure TSpr_Supplier.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Supplier.Prior;
end;

procedure TSpr_Supplier.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Supplier.Next;
end;

procedure TSpr_Supplier.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Supplier.Last;
end;

procedure TSpr_Supplier.Tool_AppendClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  Depot.Spr_Supplier.Append;
  Depot.Spr_SupplierSupplier_Name.FocusControl;
end;

procedure TSpr_Supplier.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Supplier.RecordCount>0 then Depot.Spr_Supplier.Delete;
end;

procedure TSpr_Supplier.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Supplier.State in [dsEdit, dsInsert] then Depot.Spr_Supplier.Post;
end;

procedure TSpr_Supplier.FormShow(Sender: TObject);
begin
  Depot.Spr_Supplier.Open;
end;

procedure TSpr_Supplier.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

end.
