@echo off
@setlocal enableextensions
@cd /d "%~dp0"

net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error running the Troubleshooter - You need to run this tool as administrator.  After you close the window, right click on this file, select Run as Administrator. 
pause > nul & exit

    )

:menu
echo *********Citrix_Online_Launcher_Troubleshooter*********
echo.
echo What would you like to do?
echo.
echo 1. Run fix for errors 12029 and 12031 - Clear Temporary Internet Files and Reset to Default Internet Control Panel Settings
echo.
echo 2. Run fix for error 2006 and error Cannot be started at this time - Fix Citrix Folder Permissions and disable sharing on Citrix folders
echo.
echo 3. Run fix for restrictions preventing Citrix Launcher from being opened
echo.
echo 4. Try all fixes - Use this if you are not sure
echo.
echo 5. Quit
echo.

Set /P C=Enter 1, 2, 3, 4, or 5 :

echo.

if "%c%"=="1" (
@echo Clearing Temporary Internet files . . .
@echo off
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 23035
echo.
@echo We were able to remove temporary internet files successfully.  You will soon see a pop up asking you to Reset Internet Explorer Settings.  Click Reset when prompted to finish this process.
ping 1.1.1.1 > nul 2>nul
@echo off
echo.
RunDll32.exe InetCpl.cpl,ResetIEtoDefaults
xcopy "%temp%\CitrixLogs\Downloaderapp.log" "%userprofile%\Desktop\" /y >nul 2>nul
echo The tool has finished.  Please collect the log file: Downloaderapp.log on the desktop and have it reviewed.
echo NOTE: If you still see error 12029 after running this tool then make sure that the Citrix Online launcher is not blocked by a network or software firewall.
echo.
echo Press any key to close this window
pause > nul & exit
    )

) else (
    if "%C%"=="2" (
@echo Adjusting Citrix folder permissions . . .
@echo off
mkdir %temp%\G2_635 >nul 2>nul
mkdir %temp%\G2_943 >nul 2>nul
mkdir %temp%\G2_1104 >nul 2>nul
mkdir %temp%\G2_1201 >nul 2>nul
mkdir %temp%\G2_1337 >nul 2>nul
mkdir %temp%\G2_1427 >nul 2>nul
mkdir %temp%\G2_1470 >nul 2>nul
mkdir %temp%\G2_1520 >nul 2>nul
mkdir %temp%\G2_1606 >nul 2>nul
mkdir %temp%\G2_1611 >nul 2>nul
mkdir %temp%\G2_1704 >nul 2>nul
mkdir %temp%\G2_1752 >nul 2>nul
mkdir %temp%\G2_1775 >nul 2>nul
mkdir %temp%\G2_1824 >nul 2>nul
mkdir %temp%\G2_1826 >nul 2>nul
mkdir %temp%\G2_1875 >nul 2>nul
mkdir %temp%\Citrix >nul 2>nul
mkdir %temp%\CitrixLogs >nul 2>nul
mkdir %temp%\GoToAssist >nul 2>nul
mkdir "%temp%\GoToAssist Corporate" >nul 2>nul
mkdir "%temp%\GoToAssist Remote Support Customer" >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToMyPC >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToMeeting >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToAssist >nul 2>nul
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" >nul 2>nul
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\Launcher >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\Plugins >nul 2>nul
takeown /f %temp%\G2_635 >nul 2>nul
takeown /f %temp%\G2_943 >nul 2>nul
takeown /f %temp%\G2_1104 >nul 2>nul
takeown /f %temp%\G2_1201 >nul 2>nul
takeown /f %temp%\G2_1337 >nul 2>nul
takeown /f %temp%\G2_1427 >nul 2>nul
takeown /f %temp%\G2_1470 >nul 2>nul
takeown /f %temp%\G2_1520 >nul 2>nul
takeown /f %temp%\G2_1606 >nul 2>nul
takeown /f %temp%\G2_1611 >nul 2>nul
takeown /f %temp%\G2_1704 >nul 2>nul
takeown /f %temp%\G2_1752 >nul 2>nul
takeown /f %temp%\G2_1775 >nul 2>nul
takeown /f %temp%\G2_1824 >nul 2>nul
takeown /f %temp%\G2_1826 >nul 2>nul
takeown /f %temp%\G2_1875 >nul 2>nul
takeown /f %temp%\Citrix >nul 2>nul
takeown /f %temp%\CitrixLogs >nul 2>nul
takeown /f %temp%\GoToAssist >nul 2>nul
takeown /f "%temp%\GoToAssist Corporate" >nul 2>nul
takeown /f "%temp%\GoToAssist Remote Support Customer" >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToMyPC >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToMeeting >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToAssist >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\Launcher" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\Plugins" >nul 2>nul
cacls "%temp%\G2_635" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_943" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1104" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1201" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1337" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1427" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1470" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1520" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1606" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1611" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1704" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1752" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1775" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1724" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1726" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1875" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\Citrix" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\CitrixLogs" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist Corporate" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist Remote Support Customer" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToMyPC /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToMeeting /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToAssist /t /e /g Everyone:f >nul 2>nul
cacls "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\Launcher /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\Plugins /t /e /g Everyone:f >nul 2>nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
net share %temp%\G2_635 /delete >nul 2>nul
net share %temp%\G2_636 /delete >nul 2>nul
net share %temp%\G2_943 /delete >nul 2>nul
net share %temp%\G2_1104 /delete >nul 2>nul
net share %temp%\G2_1201 /delete >nul 2>nul
net share %temp%\G2_1337 /delete >nul 2>nul
net share %temp%\G2_1470 /delete >nul 2>nul
net share %temp%\G2_1606 /delete >nul 2>nul
net share %temp%\G2_1611 /delete >nul 2>nul
net share %temp%\G2_1704 /delete >nul 2>nul
net share %temp%\G2_1752 /delete >nul 2>nul
net share %temp%\G2_1775 /delete >nul 2>nul
net share %temp%\G2_1824 /delete >nul 2>nul
net share %temp%\G2_1826 /delete >nul 2>nul
net share %temp%\G2_1875 /delete >nul 2>nul
net share %temp%\CitrixLogs /delete >nul 2>nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Permissions on the folders have been adjusted.
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
xcopy "%temp%\CitrixLogs\Downloaderapp.log" "%userprofile%\Desktop\" /y >nul 2>nul
echo The tool has finished.  Please collect the log file: Downloaderapp.log on the desktop and have it reviewed.  Press any key to close this window
pause >nul 2>nul & exit

 )

) else (
    if "%C%"=="3" (
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
xcopy "%temp%\CitrixLogs\Downloaderapp.log" "%userprofile%\Desktop\" /y >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\citrixonline.com" /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\citrixonline.com\download" /t REG_DWORD /v "https" /d "00000002" /f >nul 2>nul
echo The tool has finished.  You must close any open browser windows before attempting to start a session again in order for these changes to take effect.  Please collect the log file: Downloaderapp.log on the desktop and have it reviewed.
echo.
echo  Press any key to close this window
pause > nul & exit

    )
) else (
    if "%C%"=="4" (
reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /s >> "%temp%\CitrixLogs\Downloaderapp.log"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\citrixonline.com" /f >nul 2>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\citrixonline.com\download" /t REG_DWORD /v "https" /d "00000002" /f >nul 2>nul
xcopy "%temp%\CitrixLogs\Downloaderapp.log" "%userprofile%\Desktop\" /y >nul 2>nul
@echo Repairing Citrix Folder Permissions . . .
@echo off
mkdir %temp%\G2_635 >nul 2>nul
mkdir %temp%\G2_943 >nul 2>nul
mkdir %temp%\G2_1104 >nul 2>nul
mkdir %temp%\G2_1201 >nul 2>nul
mkdir %temp%\G2_1337 >nul 2>nul
mkdir %temp%\G2_1427 >nul 2>nul
mkdir %temp%\G2_1470 >nul 2>nul
mkdir %temp%\G2_1520 >nul 2>nul
mkdir %temp%\G2_1606 >nul 2>nul
mkdir %temp%\G2_1611 >nul 2>nul
mkdir %temp%\G2_1704 >nul 2>nul
mkdir %temp%\G2_1752 >nul 2>nul
mkdir %temp%\G2_1775 >nul 2>nul
mkdir %temp%\G2_1824 >nul 2>nul
mkdir %temp%\G2_1826 >nul 2>nul
mkdir %temp%\G2_1875 >nul 2>nul
mkdir %temp%\Citrix >nul 2>nul
mkdir %temp%\CitrixLogs >nul 2>nul
mkdir %temp%\GoToAssist >nul 2>nul
mkdir "%temp%\GoToAssist Corporate" >nul 2>nul
mkdir "%temp%\GoToAssist Remote Support Customer" >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToMyPC >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToMeeting >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\GoToAssist >nul 2>nul
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" >nul 2>nul
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\Launcher >nul 2>nul
mkdir %userprofile%\AppData\Local\Citrix\Plugins >nul 2>nul
takeown /f %temp%\G2_635 >nul 2>nul
takeown /f %temp%\G2_943 >nul 2>nul
takeown /f %temp%\G2_1104 >nul 2>nul
takeown /f %temp%\G2_1201 >nul 2>nul
takeown /f %temp%\G2_1337 >nul 2>nul
takeown /f %temp%\G2_1427 >nul 2>nul
takeown /f %temp%\G2_1470 >nul 2>nul
takeown /f %temp%\G2_1520 >nul 2>nul
takeown /f %temp%\G2_1606 >nul 2>nul
takeown /f %temp%\G2_1611 >nul 2>nul
takeown /f %temp%\G2_1704 >nul 2>nul
takeown /f %temp%\G2_1752 >nul 2>nul
takeown /f %temp%\G2_1775 >nul 2>nul
takeown /f %temp%\G2_1824 >nul 2>nul
takeown /f %temp%\G2_1826 >nul 2>nul
takeown /f %temp%\G2_1875 >nul 2>nul
takeown /f %temp%\Citrix >nul 2>nul
takeown /f %temp%\CitrixLogs >nul 2>nul
takeown /f %temp%\GoToAssist >nul 2>nul
takeown /f "%temp%\GoToAssist Corporate" >nul 2>nul
takeown /f "%temp%\GoToAssist Remote Support Customer" >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToMyPC >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToMeeting >nul 2>nul
takeown /f %userprofile%\AppData\Local\Citrix\GoToAssist >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\Launcher" >nul 2>nul
takeown /f "%userprofile%\AppData\Local\Citrix\Plugins" >nul 2>nul
cacls "%temp%\G2_635" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_943" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1104" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1201" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1337" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1427" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1470" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1520" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1606" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1611" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1704" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1752" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1775" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1824" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1826" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\G2_1875" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\Citrix" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\CitrixLogs" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist Corporate" /t /e /g Everyone:f >nul 2>nul
cacls "%temp%\GoToAssist Remote Support Customer" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToMyPC /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToMeeting /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToAssist /t /e /g Everyone:f >nul 2>nul
cacls "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\Launcher /t /e /g Everyone:f >nul 2>nul
cacls %userprofile%\AppData\Local\Citrix\Plugins /t /e /g Everyone:f >nul 2>nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
net share %temp%\G2_635 /delete >nul 2>nul
net share %temp%\G2_636 /delete >nul 2>nul
net share %temp%\G2_943 /delete >nul 2>nul
net share %temp%\G2_1104 /delete >nul 2>nul
net share %temp%\G2_1201 /delete >nul 2>nul
net share %temp%\G2_1337 /delete >nul 2>nul
net share %temp%\G2_1470 /delete >nul 2>nul
net share %temp%\G2_1606 /delete >nul 2>nul
net share %temp%\G2_1611 /delete >nul 2>nul
net share %temp%\G2_1704 /delete >nul 2>nul
net share %temp%\G2_1752 /delete >nul 2>nul
net share %temp%\G2_1775 /delete >nul 2>nul
net share %temp%\G2_1824 /delete >nul 2>nul
net share %temp%\G2_1826 /delete >nul 2>nul
net share %temp%\G2_1875 /delete >nul 2>nul
net share %temp%\CitrixLogs /delete >nul 2>nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Permissions on the folders have been adjusted.
echo.
echo.
@echo Clearing Temporary Internet files . . .
@echo off
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 23035
echo.
@echo We were able to remove temporary internet files successfully.  You will soon see a pop up asking you to Reset Internet Explorer Settings.  Click Reset when prompted to finish this process.  
ping 1.1.1.1 > nul 2>nul
ping 1.1.1.1 > nul 2>nul
@echo off
echo.
RunDll32.exe InetCpl.cpl,ResetIEtoDefaults
echo The tool has finished.  You must close any open browser windows in order for these changes to take effect.  Please collect the log file: Downloaderapp.log on the desktop and have it reviewed.  Press any key to close this window
pause >nul 2>nul & exit


 )
    ) else ( 
        if "%C%"=="5" (
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