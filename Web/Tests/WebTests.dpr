program WebTests;


{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  SvTesting.DUnit,
  RESTClientTest in 'RESTClientTest.pas',
  REST.Client in '..\REST.Client.pas',
  HTTPClientInterface in '..\HTTPClientInterface.pas',
  HTTPClientFactory in '..\HTTPClientFactory.pas',
  HTTP.Attributes in '..\HTTP.Attributes.pas',
  REST.Method in '..\REST.Method.pas';

{$R *.RES}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    TSvGUITestRunner.RunRegisteredTests;

end.
