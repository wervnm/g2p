@echo off
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error running Configuration Tool - You need to run this tool as administrator.  Please close the window, right click on this file, select Run as Administrator when you run this tool. 
pause > nul & exit

)

:menu
echo.
echo ******GoToMyPC Advanced Configuration Tool******
echo What would you like to do?
echo.
echo 1. Repair GoToMyPC Service Registry Information
echo 2. Skip Connection test on startup
echo 3. Unload Screen Blanking Driver on Startup (this only lasts until GoToMyPC is upgraded)
echo 4. Reload Screen Blanking Driver on Startup (undo option 3)
echo 5. Remove GoToMyPC Connection Settings (Host/Client)
echo 6. Unregister GoToMyPC on this computer (Warning: This is dangerous and permanent)
echo 7. Remove GoToMyPC Manual Printer setting (Client)
echo 8. Quit

echo.

set /P C=Enter 1,2,3,4,5,6,7, or 8 :

echo.

if "%C%"=="1" (
goto:choice1
        
   )
    ) else ( 

if "%C%"=="2" (
goto:choice2
    
   )
    ) else ( 

if "%C%"=="3" (
goto:choice3
    
   )
    ) else ( 

if "%C%"=="4" (
goto:choice4

  )
    ) else ( 


if "%C%"=="5" (
goto:choice5

  )
    ) else ( 


if "%C%"=="6" (
goto:choice6


  )
    ) else ( 

if "%C%"=="7" (
goto:choice7


  )
    ) else ( 

if "%C%"=="8" (
exit


   )     

       ) else (

            cls
            goto menu
        )
    )


:choice1
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_1) ELSE (goto x64_1)

:x86_1
@echo Repairing GoToMyPC Service Registry information for x86 . . . 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "DependOnService" /t REG_MULTI_SZ /d "RpcSs" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Description" "Citrix GoToMyPC provides remote access to this PC from any Web browser." /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "DisplayName" /d "GoToMyPC" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ErrorControl" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ImagePath" /t REG_EXPAND_SZ /d "\"C:\Program Files\Citrix\GoToMyPC\g2svc.exe\" "\"Start=service\"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ObjectName" /d "LocalSystem" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Type" /t REG_DWORD /d "16" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC\Security" /v "Security" /t REG_BINARY /d "01001480a8000000b4000000140000003000000002001c000100000002801400ff010f000101000000000001000000000200780005000000
@echo GoToMyPC Service Information Repaired in the Registry
pause
goto menu

:x64_1
@echo Repairing GoToMyPC Service Registry information for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "DependOnService" /t REG_MULTI_SZ /d "RpcSs" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Description" "Citrix GoToMyPC provides remote access to this PC from any Web browser." /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "DisplayName" /d "GoToMyPC" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ErrorControl" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ImagePath" /t REG_EXPAND_SZ /d "\"C:\Program Files (x86)\Citrix\GoToMyPC\g2svc.exe\" "\"Start=service\"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "ObjectName" /d "LocalSystem" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "Type" /t REG_DWORD /d "16" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC" /v "WOW64" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GoToMyPC\Security" /v "Security" /t REG_BINARY /d "01001480a8000000b4000000140000003000000002001c000100000002801400ff010f000101000000000001000000000200780005000000
@echo GoToMyPC Service Information Repaired in the Registry
pause
goto menu


:choice2
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_2) ELSE (goto x64_2)

:x86_2
@echo Configuring GoToMyPC to skip connection test for x86 . . . 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "ConnectionTestOk" /d "true" /f
pause
goto menu

:x64_2
@echo Configuring GoToMyPC to skip connection test for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "ConnectionTestOk" /d "true" /f
pause
goto menu

:choice3
@echo Configuring Screen Blanking Driver to not load at system startup . . .
sc config "monblanking" start= disabled
sc stop "monblanking"
pause
goto menu


:choice4
@echo Configuring Screen Blanking Driver to load at system startup . . .
sc config "monblanking" start= auto
sc start "monblanking"
pause
goto menu



:choice5
reg delete "HKEY_CURRENT_USER\Software\Citrix\GoToMyPC\ConnectionInfo" /f
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_5) ELSE (goto x64_5)


:x86_5
@echo Deleting GoToMyPC connection info for x86 . . .
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC\ConnectionInfo" /f
pause
goto menu

:x64_5
@echo Deleting GoToMyPC connection info for x64 . . .
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\ConnectionInfo" /f
pause
goto menu

:choice6
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_6) ELSE (goto x64_6)

:x86_6
@echo Deleting GoToMyPC Host Registration Information for x86 . . .
net stop GoToMyPC
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "machinekey"
net start GoToMyPC
pause
goto menu

:x64_6
@echo Deleting GoToMyPC Host Registration Information for x64 . . .
net stop GoToMyPC
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "machinekey"
net start GoToMyPC
pause
goto menu


:choice7
reg delete "HKEY_CURRENT_USER\Software\Citrix\GoToMyPC\RemotePrinting" /f

pause
goto menu