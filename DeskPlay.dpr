program DeskPlay;

uses
  Vcl.Forms,
  main in 'main.pas' {frmDeskPlay};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDeskPlay, frmDeskPlay);
  Application.Run;
end.
