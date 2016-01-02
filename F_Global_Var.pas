unit F_Global_Var;

interface
uses Sysutils, DB, dxTL, dxDBCtrl, dxCntner, dxDBTL, ADOdb;

var
    WPath, SPath, SConnect:string;
    F:TextFile;
    Style_Var, Rep_Var, Name_Rep:string;
    
  Now_Number, Now_Record, Now_ID, CurrentID , Parent_ID: integer;
  Now_Key, Number_Next, Number_Prior : integer;
  Now_Activ, Now_Activ_Children, recq, Can_Append, vis : boolean;
  SavePlace: TBookmark;
  NextValue, PrevValue : integer;
  ADO_Now: TADODataSet;

  Now_Day: TDateTime;
  Now_Session, Now_Table: integer;
  Can_Requery: boolean;

  Name_Drag:string;
  Drag_Items_ID:integer;
  Drag_Items_Name:string;
  Drag_Items_Articul:string;
  Drag_Items_Price:double;
  Drag_ID_Edizm:integer;
  Drag_ID_Supplier:integer;
  Drag_ID_Parent:integer;
  Drop_ID_Parent:integer;
  Drag_Level:integer;
  Drag_Items_Folder:string;
  Drag_Items_Level:integer;
      
  ID_Parent:integer;
  ID_Supplier:integer;
  i:integer;
  Folder_Name:string;
  Count_Item:double;

      Login_ID:integer;
      Login_Name:string;
      Login_Password:string;
      Login_Right:boolean;

 sss:string;
 ID_Seach:integer;
 ID_Seach_1:integer;
implementation


end.
 