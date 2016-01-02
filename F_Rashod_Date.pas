unit F_Rashod_Date;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBEdtr, dxDBELib, dxExEdtr, dxEdLib, dxCntner, dxEditor, Menus,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, StdCtrls, DB,
  ExtCtrls, JvPanel, Buttons, Grids, DBGrids;

type
  TRashod_Date = class(TForm)
    StatusBar1: TStatusBar;
    dx_Cus: TdxDBGrid;
    JvPanel4: TJvPanel;
    dx_Date_Out: TdxDateEdit;
    Label1: TLabel;
    dx_Date_In: TdxDateEdit;
    Label3: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    dx_CusID_Items: TdxDBGridMaskColumn;
    dx_CusID_Supplier: TdxDBGridMaskColumn;
    dx_CusID_Edizm: TdxDBGridMaskColumn;
    dx_CusSumCharge_Items_Value: TdxDBGridMaskColumn;
    dx_CusLastCharge_Items_Price: TdxDBGridMaskColumn;
    dx_CusItems_Name: TdxDBGridMaskColumn;
    dx_CusItems_Articul: TdxDBGridMaskColumn;
    dx_CusItems_Folder: TdxDBGridMaskColumn;
    dx_CusSupplier_Name: TdxDBGridMaskColumn;
    dx_CusEdizm_Name: TdxDBGridMaskColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rashod_Date: TRashod_Date;
  Com_Text, App_Com_Text, Capt:string;
implementation
uses F_Depot, F_Preview, F_Global_Var;
{$R *.DFM}

procedure TRashod_Date.BitBtn1Click(Sender: TObject);
begin
  Name_Rep:='Rashod_Date.frf';
  Depot.frReport1.Preview := Preview.frPreview1;
  Depot.frReport1.Dataset:=Depot.fr_Rashod_Date;
  WPath := ExtractFilePath(ParamStr(0));
  Depot.frReport1.LoadFromFile(WPath +'Report/'+ Name_Rep);
  //Depot_Otchet.frReport.Dictionary.Variables['C']:=''''+Capt+'''';
  Depot.frReport1.Dictionary.Variables['Date1']:=''''+dx_Date_In.Text+'''';
  Depot.frReport1.Dictionary.Variables['Date2']:=''''+dx_Date_Out.Text+'''';

  Preview.frPreview1.PageWidth;
  Depot.frReport1.ShowReport;
  Preview.Show;
end;

procedure TRashod_Date.FormShow(Sender: TObject);
begin
  dx_Date_In.Date:=Date();
  dx_Date_Out.Date:=Date();
  Com_Text:=Depot.Rashod_Date.CommandText;
//  App_Com_Text:=' and Charge_Items_Date>:Date1 and Charge_Items_Date<:Date2 ORder By ID_Supplier';
end;

procedure TRashod_Date.Button1Click(Sender: TObject);
begin
  Depot.Rashod_Date.DisableControls;
  Depot.Rashod_Date.Close;
//  Depot.Rashod_Date.CommandText:=Com_Text+App_Com_Text;

    Depot.Rashod_Date.Parameters[0].DataType:=ftDateTime;
    Depot.Rashod_Date.Parameters[1].DataType:=ftDateTime;
    Depot.Rashod_Date.Parameters[0].Value:=dx_Date_In.Date-1;
    Depot.Rashod_Date.Parameters[1].Value:=dx_Date_Out.Date+1;

  Depot.Rashod_Date.Open;
  Depot.Rashod_Date.EnableControls;
end;

procedure TRashod_Date.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Depot.Rashod_Date.Close;
  Depot.Rashod_Date.CommandText:=Com_Text;
end;

end.
