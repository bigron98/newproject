unit F_Preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FR_Ctrls, ExtCtrls, FR_View;

type
  TPreview = class(TForm)
    frPreview1: TfrPreview;
    Panel3: TPanel;
    frSpeedButton1: TfrSpeedButton;
    frSpeedButton2: TfrSpeedButton;
    frSpeedButton3: TfrSpeedButton;
    frSpeedButton4: TfrSpeedButton;
    frSpeedButton5: TfrSpeedButton;
    frSpeedButton6: TfrSpeedButton;
    frSpeedButton7: TfrSpeedButton;
    frSpeedButton8: TfrSpeedButton;
    frSpeedButton9: TfrSpeedButton;
    frSpeedButton10: TfrSpeedButton;
    frSpeedButton11: TfrSpeedButton;
    frSpeedButton12: TfrSpeedButton;
    procedure frSpeedButton10Click(Sender: TObject);
    procedure frSpeedButton9Click(Sender: TObject);
    procedure frSpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Preview: TPreview;

implementation
uses F_Depot;


{$R *.DFM}

procedure TPreview.frSpeedButton10Click(Sender: TObject);
begin
  frPreview1.Print;
end;

procedure TPreview.frSpeedButton9Click(Sender: TObject);
begin
  frPreview1.SaveToFile;
end;

procedure TPreview.frSpeedButton11Click(Sender: TObject);
begin
  Depot.frReport1.DesignReport;
end;

end.
