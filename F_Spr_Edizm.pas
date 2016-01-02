unit F_Spr_Edizm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, JvToolBar, dxGrClEx, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, StdCtrls, DB;

type
  TSpr_Edizm = class(TForm)
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
    StatusBar1: TStatusBar;
    dx_Edizm: TdxDBGrid;
    dx_EdizmID_Edizm: TdxDBGridMaskColumn;
    dx_EdizmEdizm_Name: TdxDBGridColumn;
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
  Spr_Edizm: TSpr_Edizm;

implementation
uses F_Depot, F_Global_Var;
{$R *.DFM}

procedure TSpr_Edizm.Tool_FirstClick(Sender: TObject);
begin
  Depot.Spr_Edizm.First;
end;

procedure TSpr_Edizm.Tool_PriorClick(Sender: TObject);
begin
  Depot.Spr_Edizm.Prior;
end;

procedure TSpr_Edizm.Tool_NextClick(Sender: TObject);
begin
  Depot.Spr_Edizm.Next;
end;

procedure TSpr_Edizm.Tool_LastClick(Sender: TObject);
begin
  Depot.Spr_Edizm.Last;
end;

procedure TSpr_Edizm.Tool_AppendClick(Sender: TObject);
begin

  Depot.Spr_Edizm.Append;
  Depot.Spr_EdizmEdizm_Name.FocusControl;
end;

procedure TSpr_Edizm.Tool_DeleteClick(Sender: TObject);
begin
  if Depot.Spr_Edizm.RecordCount>0 then Depot.Spr_Edizm.Delete;
end;

procedure TSpr_Edizm.Tool_PostClick(Sender: TObject);
begin
  if Depot.Spr_Edizm.State in [dsEdit, dsInsert] then Depot.Spr_Edizm.Post;
end;

procedure TSpr_Edizm.Tool_CancelClick(Sender: TObject);
begin
  Close;
end;

end.
