unit F_Custom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, JvToolBar, dxGrClEx, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, StdCtrls, DB, dxDBTL;

type
  TCustom = class(TForm)
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
    dxDBTreeList1: TdxDBTreeList;
    procedure Tool_FirstClick(Sender: TObject);
    procedure Tool_PriorClick(Sender: TObject);
    procedure Tool_NextClick(Sender: TObject);
    procedure Tool_LastClick(Sender: TObject);
    procedure Tool_AppendClick(Sender: TObject);
    procedure Tool_DeleteClick(Sender: TObject);
    procedure Tool_PostClick(Sender: TObject);
    procedure Tool_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Custom: TCustom;

implementation
uses F_Depot, F_Global_Var;
{$R *.DFM}

procedure TCustom.Tool_FirstClick(Sender: TObject);
begin
  Depot.ADO_Custom.First;
end;

procedure TCustom.Tool_PriorClick(Sender: TObject);
begin
  Depot.ADO_Custom.Prior;
end;

procedure TCustom.Tool_NextClick(Sender: TObject);
begin
  Depot.ADO_Custom.Next;
end;

procedure TCustom.Tool_LastClick(Sender: TObject);
begin
  Depot.ADO_Custom.Last;
end;

procedure TCustom.Tool_AppendClick(Sender: TObject);
begin

  Depot.ADO_Custom.Append;
  Depot.ADO_CustomCustom_Name.FocusControl;
end;

procedure TCustom.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.ADO_Custom.RecordCount>0 then Depot_Spr.ADO_Custom.Delete;
end;

procedure TCustom.Tool_PostClick(Sender: TObject);
begin
  if Depot.ADO_Custom.State in [dsEdit, dsInsert] then Depot_Spr.ADO_Custom.Post;
end;

procedure TCustom.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

end.
