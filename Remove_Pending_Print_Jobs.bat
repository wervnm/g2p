@echo off
@setlocal enableextensions
@cd /d "%~dp0"
net session >nul 2>nul
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error Clearing out stuck print jobs - You need to run this tool as administrator.  Please close the window, right click on this file, select Run as Administrator & pause > nul & exit

)

:menu
echo.
echo What would you like to do?
echo.
echo 1. Clear out pending or stuck print jobs (Careful, all pending print jobs will be permanently deleted)
echo 2. Quit
echo.

set /P C=Enter 1 or 2 : 

if "%C%"=="1" (
@echo[
@echo[
        echo Deleting stuck print jobs...
@echo[
@echo[
@echo off
net stop spooler >nul 2>nul
del %systemroot%\system32\spool\printers\*.shd >nul 2>nul
del %systemroot%\system32\spool\printers\*.tmp >nul 2>nul
del %systemroot%\system32\spool\printers\*.spl >nul 2>nul
net start spooler >nul 2>nul

echo All stuck print jobs have been purged.  Please try printing again.


   ) else ( 
        if "%C%"=="2" (
            echo quitting...
        ) else (
            cls
            goto menu
        )
    )
)
goto pause

:pause
pause