call config.bat
for /f "delims=" %%a in ('C:\Users\DEII\.jenkins\workspace\Demo_Proj\Robot_Xray /s /b output*.xml') do set "name=%%a"
curl -H "Content-Type: multipart/form-data" -u "sp.testing2018":"sptesting2" -F "file=@%name%" "%rootURL%/rest/raven/1.0/import/execution/robot/?testExecKey=%teIssue%"
