@echo off

echo Stopping SignPro
PING localhost -n 3 >NUL
TASKKILL /F /IM signpro.exe
PING localhost -n 3 >NUL

echo Stopping print spooler.
PING localhost -n 3 >NUL
echo.
net stop spooler

echo deleting temp files.
PING localhost -n 3 >NUL
echo.
del %windir%\system32\spool\printers\*.* /q
PING localhost -n 3 >NUL

echo Starting print spooler.
PING localhost -n 3 >NUL
echo.
net start spooler
echo.

echo Starting Signpro
PING localhost -n 3 >NUL
cd C:\SignPro* && start "" signpro.exe >NUL
echo Done!
PING localhost -n 6 >NUL





