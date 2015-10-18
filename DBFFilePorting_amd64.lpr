program DBFFilePorting_amd64;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, sdflaz, pl_zeosdbocomp, dbflaz, about
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='FAST DBFFilePorting';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

