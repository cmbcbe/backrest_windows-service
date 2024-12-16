sc stop BackREST
mkdir "C:\Program Files\Backrest"
mkdir "C:\Windows\System32\config\systemprofile\AppData\Roaming\backrest\data\rotatinglogs"
copy /y %~dp0\*.* "C:\Program Files\Backrest"
"C:\Program Files\Backrest\nssm.exe" install BackREST "C:\Program Files\Backrest\backrest.exe"
"C:\Program Files\Backrest\nssm.exe" set BackREST AppEnvironmentExtra BACKREST_PORT=0.0.0.0:9898
sc start BackREST
rundll32.exe url.dll,FileProtocolHandler http://localhost:9898
