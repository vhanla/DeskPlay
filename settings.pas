unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UWP.ListButton,
  Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.StdCtrls, rkView;

type
  TfrmSettings = class(TForm)
    CardPanel1: TCardPanel;
    Card1: TCard;
    SplitView1: TSplitView;
    UWPListButton1: TUWPListButton;
    Card2: TCard;
    UWPListButton2: TUWPListButton;
    UWPListButton3: TUWPListButton;
    Card3: TCard;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    rkView1: TrkView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

{$R *.dfm}

end.
