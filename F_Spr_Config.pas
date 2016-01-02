unit F_Spr_Config;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, JvToolBar, dxGrClEx, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, StdCtrls, DB, dxDBTL;

type
  TSpr_Config = class(TForm)
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
    StatusBar1: TStatusBar;
    dx_Spr_Config: TdxDBTreeList;
    dx_Spr_ConfigID_Config: TdxDBTreeListMaskColumn;
    dx_Spr_ConfigID_Parent: TdxDBTreeListMaskColumn;
    dx_Spr_ConfigID_Items: TdxDBTreeListMaskColumn;
    dx_Spr_ConfigID_Supplier: TdxDBTreeListMaskColumn;
    dx_Spr_ConfigItems_Name: TdxDBTreeListColumn;
    dx_Spr_ConfigItems_Articul: TdxDBTreeListColumn;
    dx_Spr_ConfigItems_Value: TdxDBTreeListMaskColumn;
    dx_Spr_ConfigItems_Level: TdxDBTreeListMaskColumn;
    ImageList2: TImageList;
    dx_Spr_ConfigItems_Price: TdxDBTreeListLookupColumn;
    dx_Spr_ConfigItems_Folder: TdxDBTreeListLookupColumn;
    dx_Spr_ConfigEdizm_Name: TdxDBTreeListLookupColumn;
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
    procedure dx_Spr_ConfigDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dx_Spr_ConfigDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure dx_Spr_ConfigStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dx_Spr_ConfigDblClick(Sender: TObject);
    procedure dx_Spr_ConfigChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Spr_Config: TSpr_Config;

implementation
uses F_Depot, F_Global_Var;
{$R *.DFM}

procedure TSpr_Config.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Config.First;
end;

procedure TSpr_Config.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Config.Prior;
end;

procedure TSpr_Config.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Config.Next;
end;

procedure TSpr_Config.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Config.Last;
end;

procedure TSpr_Config.Tool_AppendClick(Sender: TObject);
begin
  Depot.Spr_Config.Append;
  Depot.Spr_ConfigItems_Name.FocusControl;
end;

procedure TSpr_Config.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Config.RecordCount>0 then Depot.Spr_Config.Delete;
end;

procedure TSpr_Config.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Config.State in [dsEdit, dsInsert] then Depot.Spr_Config.Post;
end;

procedure TSpr_Config.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TSpr_Config.dx_Spr_ConfigDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Name_Drag='Spr_Config' then dx_Spr_Config.OptionsBehavior:=dx_Spr_Config.OptionsBehavior-[etoDragScroll] else
  dx_Spr_Config.OptionsBehavior:=dx_Spr_Config.OptionsBehavior+[etoDragScroll];
  Drop_ID_Parent:=Depot.Spr_ConfigID_Config.Value;
  Drag_Level:=Depot.Spr_ConfigItems_Level.Value;
  Accept:=((Drag_Level=0) and (Name_Drag='Spr_Items'));
end;

procedure TSpr_Config.dx_Spr_ConfigDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  Depot.Spr_Config.Append;
  Depot.Spr_Config.Post;
  Depot.Spr_ConfigItems_Value.FocusControl;
end;

procedure TSpr_Config.dx_Spr_ConfigStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Name_Drag:='Spr_Config';
  Drag_ID_Parent:=Depot.Spr_ConfigID_Parent.Value;
  Drop_ID_Parent:=Depot.Spr_ConfigID_Config.Value;

end;

procedure TSpr_Config.dx_Spr_ConfigDblClick(Sender: TObject);
begin
  if Depot.Spr_ConfigID_Parent.Value=0 then
  begin
    dx_Spr_ConfigItems_Name.DisableEditor:=false;
    Depot.Spr_ConfigItems_Name.FocusControl;
  end
  else
  begin
    dx_Spr_Config.OptionsView:=dx_Spr_Config.OptionsView-[etoRowSelect];
    Depot.Spr_ConfigItems_Value.FocusControl;
  end;
end;

procedure TSpr_Config.dx_Spr_ConfigChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  dx_Spr_ConfigItems_Name.DisableEditor:=true;
  if Depot.Spr_ConfigID_Parent.Value>0 then dx_Spr_Config.OptionsView:=dx_Spr_Config.OptionsView+[etoRowSelect] else
  dx_Spr_Config.OptionsView:=dx_Spr_Config.OptionsView-[etoRowSelect];
end;

end.
