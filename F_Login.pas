unit F_Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, dxEdLib, dxCntner, dxEditor, dxExEdtr, ExtCtrls,
  JvPanel, JvListBox, JvCtrls, ImgList, ComCtrls, ToolWin, JvToolBar, DB,
  Buttons;

type
  TLogin = class(TForm)
    JvPanel1: TJvPanel;
    dx_Login_Name: TdxPopupEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvListBox1: TJvListBox;
    IButton: TImageList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dx_Login_Password: TdxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvListBox1Click(Sender: TObject);
    procedure dx_Login_NameExit(Sender: TObject);
    procedure dx_Login_NameKeyPress(Sender: TObject; var Key: Char);
    procedure dx_Login_PasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation
uses F_Depot, F_Global_Var, F_Desk_Top;
{$R *.DFM}

procedure TLogin.FormShow(Sender: TObject);
var SConnect:string;
    i:integer;
begin
  if Depot.Veko.Connected=true then Depot.Veko.Connected:=false;

  WPath := ExtractFilePath(ParamStr(0));
  if FileExists(WPath+'Date\Veka.txt') then
  begin
    AssignFile(F, WPath+'Date\Veka.txt');
    Reset(F);
    Readln(F,sss);
    if sss<>'' then
    begin
      SConnect:='Provider=Microsoft.Jet.OLEDB.4.0; Data Source='+sss+'; Persist Security Info=False ';
      Depot.Veko.ConnectionString:=SConnect;
      Depot.Veko.Connected:=true;
    end;
    CloseFile(F);
  end
  else
  begin
    FileCreate(WPath+'Date\Veka.txt');
  end;
  JvListBox1.Clear;
  Depot.User.Open;
  Depot.User.First;
  for i:=1 to Depot.User.RecordCount do
  begin
    JvListBox1.Items.Append(Depot.UserUser_Login.Value);
    Depot.User.Next;
  end;
end;

procedure TLogin.BitBtn1Click(Sender: TObject);
begin
  if not Depot.User.Locate('User_Login',dx_Login_Name.Text,[loCaseInsensitive]) then
  begin
    ShowMessage('Неверное имя входа');
  end
  else
    if not Depot.User.Locate('User_Password',dx_Login_Password.Text,[loCaseInsensitive]) then
    begin
      ShowMessage('Неверный пароль');
    end
    else
    begin
      Login_ID:=Depot.UserID_User.Value;
      Login_Name:=dx_Login_Name.Text;
      Login_Password:=dx_Login_Password.Text;
      Login_Right:=Depot.UserUser_Rig.Value;
      Desk_Top.Show;
    end;
end;

procedure TLogin.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TLogin.JvListBox1Click(Sender: TObject);
begin
  dx_Login_Name.Text:= JvListBox1.Items.Strings[JvListBox1.ItemIndex];
  if GetParentForm(JvListBox1) is TdxPopupEditForm then TdxPopupEditForm(GetParentForm(JvListBox1)).ClosePopup(True);
end;

procedure TLogin.dx_Login_NameExit(Sender: TObject);
begin
  dx_Login_Password.SetFocus;
end;

procedure TLogin.dx_Login_NameKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dx_Login_Password.SetFocus;
end;

procedure TLogin.dx_Login_PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then BitBtn1Click(Sender);
end;

end.
