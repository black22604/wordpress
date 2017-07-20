@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Wordpress\hypersonic\scripts\ctl.bat (start /MIN /B D:\Wordpress\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Wordpress\ingres\scripts\ctl.bat (start /MIN /B D:\Wordpress\ingres\scripts\ctl.bat START)
if exist D:\Wordpress\mysql\scripts\ctl.bat (start /MIN /B D:\Wordpress\mysql\scripts\ctl.bat START)
if exist D:\Wordpress\postgresql\scripts\ctl.bat (start /MIN /B D:\Wordpress\postgresql\scripts\ctl.bat START)
if exist D:\Wordpress\apache\scripts\ctl.bat (start /MIN /B D:\Wordpress\apache\scripts\ctl.bat START)
if exist D:\Wordpress\openoffice\scripts\ctl.bat (start /MIN /B D:\Wordpress\openoffice\scripts\ctl.bat START)
if exist D:\Wordpress\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Wordpress\apache-tomcat\scripts\ctl.bat START)
if exist D:\Wordpress\resin\scripts\ctl.bat (start /MIN /B D:\Wordpress\resin\scripts\ctl.bat START)
if exist D:\Wordpress\jboss\scripts\ctl.bat (start /MIN /B D:\Wordpress\jboss\scripts\ctl.bat START)
if exist D:\Wordpress\jetty\scripts\ctl.bat (start /MIN /B D:\Wordpress\jetty\scripts\ctl.bat START)
if exist D:\Wordpress\subversion\scripts\ctl.bat (start /MIN /B D:\Wordpress\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Wordpress\lucene\scripts\ctl.bat (start /MIN /B D:\Wordpress\lucene\scripts\ctl.bat START)
if exist D:\Wordpress\third_application\scripts\ctl.bat (start /MIN /B D:\Wordpress\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Wordpress\third_application\scripts\ctl.bat (start /MIN /B D:\Wordpress\third_application\scripts\ctl.bat STOP)
if exist D:\Wordpress\lucene\scripts\ctl.bat (start /MIN /B D:\Wordpress\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Wordpress\subversion\scripts\ctl.bat (start /MIN /B D:\Wordpress\subversion\scripts\ctl.bat STOP)
if exist D:\Wordpress\jetty\scripts\ctl.bat (start /MIN /B D:\Wordpress\jetty\scripts\ctl.bat STOP)
if exist D:\Wordpress\hypersonic\scripts\ctl.bat (start /MIN /B D:\Wordpress\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Wordpress\jboss\scripts\ctl.bat (start /MIN /B D:\Wordpress\jboss\scripts\ctl.bat STOP)
if exist D:\Wordpress\resin\scripts\ctl.bat (start /MIN /B D:\Wordpress\resin\scripts\ctl.bat STOP)
if exist D:\Wordpress\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Wordpress\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Wordpress\openoffice\scripts\ctl.bat (start /MIN /B D:\Wordpress\openoffice\scripts\ctl.bat STOP)
if exist D:\Wordpress\apache\scripts\ctl.bat (start /MIN /B D:\Wordpress\apache\scripts\ctl.bat STOP)
if exist D:\Wordpress\ingres\scripts\ctl.bat (start /MIN /B D:\Wordpress\ingres\scripts\ctl.bat STOP)
if exist D:\Wordpress\mysql\scripts\ctl.bat (start /MIN /B D:\Wordpress\mysql\scripts\ctl.bat STOP)
if exist D:\Wordpress\postgresql\scripts\ctl.bat (start /MIN /B D:\Wordpress\postgresql\scripts\ctl.bat STOP)

:end

