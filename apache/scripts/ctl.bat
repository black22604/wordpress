@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "D:\Wordpress\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
"D:\Wordpress\apache\bin\pv" -f -k httpd.exe -q
if not exist "D:\Wordpress\apache\logs\httpd.pid" GOTO finish
del "D:\Wordpress\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
