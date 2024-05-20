program Sortting;

uses
  Vcl.Forms,
  Sort in 'Sort.pas' {frmSort};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSort, frmSort);
  Application.Run;
end.
