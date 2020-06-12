call config.bat
for /f "delims=" %%a in ('dir /s /b output*.xml') do set "name=%%a"
curl  -H "Authorization:Basic %token%" -H "Content-Type: multipart/form-data" -F "file=@%name%"  -F "info=%jfile%"  "%rootURL%/rest/raven/1.0/import/execution/robot/multipart" 