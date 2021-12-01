unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  PasLibVlcPlayerUnit, Vcl.Menus;

type
  TfrmDeskPlay = class(TForm)
    PasLibVlcPlayer1: TPasLibVlcPlayer;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Salir1: TMenuItem;
    NewURL1: TMenuItem;
    Sound1: TMenuItem;
    N1: TMenuItem;
    ransparentcurrentwindow1: TMenuItem;
    N101: TMenuItem;
    N501: TMenuItem;
    N751: TMenuItem;
    N1001: TMenuItem;
    NoTransparente1: TMenuItem;
    Desconectar1: TMenuItem;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure NewURL1Click(Sender: TObject);
    procedure Sound1Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N751Click(Sender: TObject);
    procedure N1001Click(Sender: TObject);
    procedure NoTransparente1Click(Sender: TObject);
    procedure Desconectar1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetAlphaLevel(level: Byte);
  public
    { Public declarations }
  end;

var
  frmDeskPlay: TfrmDeskPlay;

function GetShellWindow:HWND;stdcall;
  external user32 Name 'GetShellWindow';

implementation

uses
  PasLibVlcClassUnit;

{$R *.dfm}

procedure TfrmDeskPlay.Desconectar1Click(Sender: TObject);
begin
  var d := GetShellWindow; // progman
  var re: Integer;
  SendMessageTimeout(d, $052C,$D,1,SMTO_NORMAL, 1000, @re);
end;

function hijos(hijo: HWND; lst: TStringList): BOOL; export; stdcall;
var
  clase: array[0..255] of Char;
begin
  GetClassName(hijo, clase, 255);
//  if clase = 'WorkerW' then
  begin
    lst.Add(clase);//IntToStr(hijo));
  end;
  Result := True;
end;

procedure TfrmDeskPlay.FormCreate(Sender: TObject);
var
  lista: TStringList;
  clase: array[0..255] of Char;
  vWnd: HWND;
  r: TRect;
begin
  lista := TStringList.Create;
  try
    vWnd := GetWindow(GetDesktopWindow, GW_CHILD);
    while vWnd <> 0 do
    begin

      GetClassName(vWnd, clase, 255);
      if clase = 'WorkerW' then
      begin
        var esteNo := FindWindowEx(vWnd, 0, 'SHELLDLL_DefView', nil);
        Winapi.Windows.GetWindowRect(vWnd, r);
        if IsWindowVisible(vWnd) and (esteNo = 0)
        and ((Screen.DesktopRect.Width <= r.Width) and (Screen.DesktopRect.Height <= r.Height))
        then
        begin
          ListBox1.Items.Add(clase + ' : 0x' + IntToHex(vWnd));

          Winapi.Windows.SetParent(Handle, vWnd);
          BoundsRect := r;
          PasLibVlcPlayer1.PlayYoutube('https://www.youtube.com/watch?v=-imG6CNF9kI');

          SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_TRANSPARENT);

          Break;
        end;
      end;
      vWnd := GetWindow(vWnd, GW_HWNDNEXT);
    end;
    //var progman := FindWindow(, nil);//GetShellWindow; // progman
//    if progman > 0 then
//    begin
//      EnumChildWindows($10063c, @hijos, LParam(lista));
//      ListBox1.Items := lista;
//
//      var padre := Winapi.Windows.GetParent($10063c);
//      if padre > 0 then
//      begin
//        GetClassName(padre, clase, 255);
//        ListBox1.Items.Add('Padre : ' + clase);
//      end;

//      var workerw := FindWindowEx(d, 0, 'WorkerW', nil);
//      if workerw > 0 then
//      begin
//        var workerw2
//        Winapi.Windows.SetParent(Handle, $f0606);
//        var r:TRect;
//        GetWindowRect(d, r);
//        BoundsRect := r;
//      end;
//    end;
//    PasLibVlcPlayer1.PlayYoutube('https://www.youtube.com/watch?v=-imG6CNF9kI');
//
//    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_TRANSPARENT);
//
//    var re: Integer;
//    SendMessageTimeout(d, $052C,$D,1,SMTO_NORMAL, 1000, @re);
  finally
    lista.Free;
  end;
end;

procedure TfrmDeskPlay.N1001Click(Sender: TObject);
begin
  SetAlphaLevel(TMenuItem(Sender).Tag);
end;

procedure TfrmDeskPlay.N101Click(Sender: TObject);
begin
  SetAlphaLevel((Sender as TMenuItem).Tag);
end;

procedure TfrmDeskPlay.N501Click(Sender: TObject);
begin
  SetAlphaLevel(TMenuItem(Sender).Tag);
end;

procedure TfrmDeskPlay.N751Click(Sender: TObject);
begin
  SetAlphaLevel(TMenuItem(Sender).Tag);
end;

procedure TfrmDeskPlay.NewURL1Click(Sender: TObject);
var
  url: string;
begin
  if InputQuery('','Pegar URL de Youtube', url) then
    PasLibVlcPlayer1.PlayYoutube(url);
end;

procedure TfrmDeskPlay.NoTransparente1Click(Sender: TObject);
begin
  SetAlphaLevel(255);
end;

procedure TfrmDeskPlay.Salir1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDeskPlay.SetAlphaLevel(level: Byte);
begin
  var w := GetForegroundWindow;
  if w > 0 then
  begin
    var ex := GetWindowLong(w, GWL_EXSTYLE);
    if ex and WS_EX_LAYERED <> WS_EX_LAYERED then
      SetWindowLong(w, GWL_EXSTYLE, ex or WS_EX_LAYERED);
    SetLayeredWindowAttributes(w, 0, level, LWA_ALPHA);
  end;
end;

procedure TfrmDeskPlay.Sound1Click(Sender: TObject);
begin
  Sound1.Checked := not Sound1.Checked;


    PasLibVlcPlayer1.SetAudioMute(not Sound1.Checked);
end;

end.
