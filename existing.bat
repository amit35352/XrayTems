call config.bat
set usr="a1"
if usr=="a1" cd C:\Users\DEII\.jenkins\workspace\Demo_Proj\Robot_Xray\batches
if usr=="a2" cd C:\Users\DEII\.jenkins\workspace\Demo_Proj\Robot_Xray
for /f "delims=" %%a in ('dir /s /b output*.xml') do set "name=%%a"
curl -H "Content-Type: multipart/form-data" -u "sp.testing2018":"sptesting2" -F "file=@%name%" "%rootURL%/rest/raven/1.0/import/execution/robot/?testExecKey=%teIssue%"
