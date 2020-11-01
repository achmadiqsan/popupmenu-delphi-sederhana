program popupmenu;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
