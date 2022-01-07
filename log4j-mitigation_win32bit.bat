@echo off

title log4j mitigation

echo -------------------------------------------------------------------
echo.
echo Siemens log4j2 JNDILookup class removal mitigator
echo.
echo.This script scans the presence of vulnerable log4j-core.jar files
echo.in your hard drive and if found mitigates the log4j vulnerability
echo.
echo -------------------------------------------------------------------

pause

set PATH=%PATH%;C:\Program Files (x86)\7-Zip\;C:\Program Files\7-Zip\

FOR /F "tokens=*" %%a in ('cd') do SET OUTPUT=%%a
echo.
echo Started scanning drives
echo.
echo -------------------------------------------------------------------
echo.
cd \
dir log4j-core-*.jar /b/s > %OUTPUT%\tmp.txt
echo Performing mitigation
echo.
echo -------------------------------------------------------------------
for /f "tokens=*" %%s in (%OUTPUT%\tmp.txt) do (
  7z d %%s JndiLookup.class  -r
)

del %OUTPUT%\tmp.txt


D:
dir log4j-core-*.jar /b/s > tmp.txt

for /f "tokens=*" %%s in (tmp.txt) do (
  7z d %%s JndiLookup.class  -r
)

del D:\tmp.txt

E:
dir log4j-core-*.jar /b/s > tmp.txt

for /f "tokens=*" %%s in (tmp.txt) do (
  7z d %%s JndiLookup.class  -r
)

del E:\tmp.txt

F:
dir log4j-core-*.jar /b/s > tmp.txt

for /f "tokens=*" %%s in (tmp.txt) do (
  7z d %%s JndiLookup.class  -r
)

del F:\tmp.txt



echo.
echo.
echo -------------------------------------------------------------------------
echo.
echo log4j2 mitigation has been performed successfully. Press any key to exit
echo.
echo -------------------------------------------------------------------------
pause > nul
exit