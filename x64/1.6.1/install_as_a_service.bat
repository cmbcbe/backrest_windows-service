sc stop BackREST
mkdir "C:\Program Files\Backrest"
copy /y %~dp0\*.* "C:\Program Files\Backrest"
"C:\Program Files\Backrest\nssm.exe" install BackREST "C:\Program Files\Backrest\backrest.exe"
"C:\Program Files\Backrest\nssm.exe" set BackREST AppEnvironmentExtra BACKREST_PORT=0.0.0.0:9898
sc start BackREST
rundll32.exe url.dll,FileProtocolHandler http://localhost:9898
