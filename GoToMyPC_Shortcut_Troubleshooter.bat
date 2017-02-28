@echo off
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error running shortcut troubleshooting tool - You need to run this tool as administrator.  Please close the window, right click on this file, select Run as Administrator when you run this tool. 
pause > nul & exit

    )


@echo Running the Shortcut Troubleshooter
@echo off
ver | find "5.1" > nul
if %ERRORLEVEL% == 0 goto :ver_xp
goto ver_vistaup


:ver_xp
taskklill /im g2quick.exe >nul 2>nul
mkdir "%userprofile%\Local Settings\Application Data\Citrix" >nul 2>nul
mkdir "%userprofile%\Local Settings\Application Data\Citrix\GoToMyPC" >nul 2>nul
cacls "%userprofile%\Local Settings\Application Data\Citrix" /t /e /g Everyone:f >nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Citrix\GoToMyPC_Viewer" /f >nul 2>nul
goto end


:ver_vistaup
@echo off
taskklill /im g2quick.exe >nul 2>nul
del "%userprofile%\AppData\Local\Citrix\GoToMyPC\*.exe"
mkdir %userprofile%\AppData\Local\Citrix >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToMyPC >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\GoToMyPC" >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToMyPC /t /e /g Everyone:f >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\GoToMyPC /delete >nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Citrix\GoToMyPC_Viewer" /f >nul 2>nul




:end
@echo.
@echo.
@echo.
@echo The troubleshooting tool has finished. Please try and create the desktop shortcut again.  If it does not work, consider creating a web shortuct.  If you have any GoToMyPC desktop shortcuts remaining please delete them as they will no longer work after running this tool.
pause
