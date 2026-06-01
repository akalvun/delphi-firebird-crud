program CatalogDemo;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Products Catalog';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
