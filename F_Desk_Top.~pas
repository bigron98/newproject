unit F_Desk_Top;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, JvWinDialogs;

type
  TDesk_Top = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    NUser: TMenuItem;
    NProduction: TMenuItem;
    N9: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    NContract: TMenuItem;
    N7: TMenuItem;
    NClose: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N111: TMenuItem;
    N11: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure NCloseClick(Sender: TObject);
    procedure NUserClick(Sender: TObject);
    procedure NProductionClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure NContractClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Desk_Top: TDesk_Top;
  WPath,SConnect:string;
  F: TextFile;
implementation

uses F_Depot, F_Supplier, F_Spr_Supplier, F_Spr_Items, F_Spr_Edizm,
  F_Spr_Config, F_Prihod, F_Rashod, F_Ostatki, F_Login, F_Global_Var,
  F_Rashod_Date, F_Pages_Items;

{$R *.DFM}

procedure TDesk_Top.FormShow(Sender: TObject);
begin
  Login.Visible:=false;
  Depot.Spr_Edizm.Open;
  Depot.Spr_Supplier.Open;
  Depot.Spr_Supplier_All.Open;
  Depot.Spr_Items.Open;
  Depot.Spr_Config.Open;
  Depot.Ostatki.Open;
  Depot.Items_All.Open;
  Desk_Top.ClientHeight:=0;
end;

procedure TDesk_Top.NCloseClick(Sender: TObject);
begin
  Prihod.Close;
  Rashod.Close;
  Ostatki.Close;
  Spr_Supplier.Close;
  Spr_Items.Close;
  Spr_Edizm.Close;
  Rashod_Date.Close;
  Pages_Items.Close;
  Close;
end;

procedure TDesk_Top.NUserClick(Sender: TObject);
begin
  Spr_Supplier.Show;
end;

procedure TDesk_Top.NProductionClick(Sender: TObject);
begin
  Spr_Items.Show;
end;

procedure TDesk_Top.N4Click(Sender: TObject);
begin
  Spr_Edizm.Show;
end;

procedure TDesk_Top.N9Click(Sender: TObject);
begin
  Spr_Config.Show;
end;

procedure TDesk_Top.N5Click(Sender: TObject);
begin
  Prihod.Show;
end;

procedure TDesk_Top.NContractClick(Sender: TObject);
begin
  Rashod.Show;
end;

procedure TDesk_Top.N7Click(Sender: TObject);
begin
  Ostatki.Show;
end;

procedure TDesk_Top.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Depot.Veko.Connected:=false;
  Login.Visible:=true;
  //Login.ShowModal;
end;

procedure TDesk_Top.N8Click(Sender: TObject);
var dd:TDateTime;
    sd, nd:string;
begin
  dd:=date();
  sd:=DateToStr(dd);
  delete(sd,3,1);
  delete(sd,5,1);
  CopyFile(sss,WPath+'Date\'+sd+'.mdb');

    if Depot.Veko.Connected=true then Depot.Veko.Connected:=false;
    SConnect:='Provider=Microsoft.Jet.OLEDB.4.0; Data Source='+WPath+'Date\'+sd+'.mdb'+'; Persist Security Info=False ';
    Depot.Veko.ConnectionString:=SConnect;
    Depot.Veko.Connected:=true;

  Depot.ADO_Delete.CommandText:= ' DELETE * from New_Arrival '      ;
  Depot.ADO_Delete.Execute;

  Depot.ADO_Insert.CommandText:=
'INSERT INTO New_Arrival            '+
'              ( ID_Arrival,          '+
'                ID_Supplier,        '+
'                Arrival_Name,      '+
'                Arrival_Date )     '+
'SELECT                            '+
'   Spr_Supplier.ID_Supplier,                  '+
'   Spr_Supplier.ID_Supplier,                  '+
'   "Новый период" AS Name_Pr,      '+
'   Date() AS Date_In             '+
'FROM Spr_Supplier                         ';
  Depot.ADO_Insert.Execute;

  Depot.ADO_Delete.CommandText:=
' DELETE * from New_Arrival_Items ';
  Depot.ADO_Delete.Execute;

 { Depot.ADO_Insert.CommandText:=
'INSERT INTO New_Prihod_Many                             '+
'          ( ID_Prihod,                                  '+
'            ID_Items,                                   '+
'            Price_Out,                                  '+
'            Name_Prihod_Many,                           '+
'            Articul,                                    '+
'            Date_In,                                    '+
'            Total_out,                                  '+
'            Total_In,                                   '+
'            Count_In )                                  '+
'SELECT                                                  '+
'     TIN.ID_Shop,                                       '+
'     TIN.ID_Items,                                      '+
'     TIN.[Price_Out],                                   '+
'     TIN.Name_Prihod_Many,                              '+
'     TIN.Articul,                                       '+
'     Date() AS Date_In,                                 '+
'     (IIf(IsNull(OUT.[Sum-Count_OUT]),0,OUT.[Sum-Count_OUT])) AS Total_OUT,   '+
'     (IIf(IsNull(TIN.[Sum-Count_IN]),0,[TIN].[Sum-Count_IN])) AS Total_IN,    '+
'     (Total_IN-Total_OUT) as Total_Ost                                       '+
'FROM (                                                                                                                                 '+
'     SELECT                                                                                                                            '+
'          Prihod.ID_Shop,                                                                                                              '+
'          Prihod_Many.ID_Items,                                                                                                        '+
'          Prihod_Many.Name_Prihod_Many,                                                                                                '+
'          Prihod_Many.Articul,                                                                                                         '+
'          Max(Prihod_Many.ID_Prihod_Many) AS [Max_ID],                                                                                 '+
'          Last(Prihod_Many.Price_Out) AS [Price_Out],                                                                                  '+
'          Sum(Prihod_Many.Count_IN)  AS [Sum-Count_IN]                                                                                 '+
'     FROM                                                                                                                              '+
'          Prihod LEFT JOIN Prihod_Many ON Prihod.ID_Prihod = Prihod_Many.ID_Prihod                                                     '+
'     GROUP BY Prihod.ID_Shop, Prihod_Many.ID_Items, Prihod_Many.Name_Prihod_Many, Prihod_Many.Articul ) as TIN                         '+
'LEFT JOIN (                                                                                                                            '+
'     SELECT                                                                                                                            '+
'          Rashod.ID_Shop,                                                                                                              '+
'          Rashod_Many.ID_Items,                                                                                                        '+
'          Rashod_Many.Name_Rashod_Many,                                                                                                '+
'          Rashod_Many.Articul,                                                                                                         '+
'          Sum(Rashod_Many.Count_OUT) AS [Sum-Count_OUT]                                                                                '+
'      FROM                                                                                                                             '+
'          Rashod LEFT JOIN Rashod_Many ON Rashod.ID_Rashod = Rashod_Many.ID_Rashod                                                     '+
'      GROUP BY Rashod.ID_Shop, Rashod_Many.ID_Items, Rashod_Many.Name_Rashod_Many,Rashod_Many.Articul) as Out                          '+
'ON (TIN.ID_Shop = Out.ID_Shop) AND (TIN.ID_Items = Out.ID_Items) and (TIN.Articul = Out.Articul) and (TIN.Name_Prihod_Many = Out.Name_Rashod_Many) '+
'WHERE ((IIf(IsNull(TIN.[Sum-Count_IN]),0,TIN.[Sum-Count_IN]))-(IIf(IsNull(OUT.[Sum-Count_OUT]),0,OUT.[Sum-Count_OUT])) >0) ';
Depot.ADO_Insert.Execute;

  Depot.ADO_Delete.CommandText:=' DELETE * from Prihod ';
  Depot.ADO_Delete.Execute;

  Depot.ADO_Delete.CommandText:=' DELETE * from Rashod ';
  Depot.ADO_Delete.Execute;

  Depot.ADO_Delete.CommandText:=' DELETE * from Reviz ';
  Depot.ADO_Delete.Execute;

  Depot.ADO_Insert.CommandText:=
'INSERT INTO Prihod                     '+
'          ( ID_Prihod,                 '+
'            ID_Shop,                   '+
'            Name_Prihod,               '+
'            Date_Prihod )              '+
'SELECT                                 '+
'            New_Prihod.ID_Prihod,      '+
'            New_Prihod.ID_Shop,        '+
'            New_Prihod.Name_Prihod,    '+
'            New_Prihod.Date_Prihod     '+
'FROM New_Prihod';
  Depot.ADO_Insert.Execute;

  Depot.ADO_Insert.CommandText:=
'INSERT INTO Prihod_Many                '+
'          ( ID_Prihod_Many,            '+
'            ID_Prihod,                 '+
'            ID_Items,                  '+
'            Name_Prihod_Many,          '+
'            Date_In,                   '+
'            Count_In,                  '+
'            Price_Out,                 '+
'            Articul,                   '+
'            Opis )                     '+
'SELECT                                 '+
'            New_Prihod_Many.ID_Prihod_Many,     '+
'            New_Prihod_Many.ID_Prihod,          '+
'            New_Prihod_Many.ID_Items,           '+
'            New_Prihod_Many.Name_Prihod_Many,   '+
'            New_Prihod_Many.Date_In,            '+
'            New_Prihod_Many.Count_In,           '+
'            New_Prihod_Many.Price_Out,          '+
'            New_Prihod_Many.Articul,            '+
'            New_Prihod_Many.Opis                '+
'FROM New_Prihod_Many ';
  Depot.ADO_Insert.Execute;

  Depot.ADO_Delete.CommandText:=' DELETE * from New_Prihod ';
  Depot.ADO_Delete.Execute;

  Depot.ADO_Delete.CommandText:=' DELETE * from New_Prihod_Many ';
  Depot.ADO_Delete.Execute;
end;
                              }
end;

procedure TDesk_Top.N10Click(Sender: TObject);
begin
  Rashod_Date.Show;
end;

procedure TDesk_Top.N11Click(Sender: TObject);
begin
  Pages_Items.Show;
end;

end.
