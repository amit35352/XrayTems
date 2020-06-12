call config.bat
curl -D- -H "Content-Type:application/json" -u "sp.testing2018":"sptesting2" -X PUT --data "%jupdate%" "%rootURL%/rest/api/2/issue/%teIssue%"

