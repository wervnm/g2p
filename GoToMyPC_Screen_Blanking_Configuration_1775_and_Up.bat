@echo off
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows NT x86" | findstr "W32X86" >nul
if %errorlevel% neq 0 echo We are sorry but your system has administrator has disabled registry access and so this tool will not work.  Please contact your system administrator for assistance with running this tool & pause > nul & exit



net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error running Configuration Tool - You need to run this tool as administrator.  Please close the window, right click on this file, select Run as Administrator when you run this tool. 
pause > nul & exit




)
@echo ********************************************************** >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo GoToMyPC Screen Blanking Configuration Tool run on: >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo %date% >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo %time% >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo. >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo off
@echo.
@echo **********************************************************
@echo Welcome to the GoToMyPC Screen Blanking Configuration Tool
@echo **********************************************************
@echo.
@echo Please wait while we gather some diagnostic information
@echo This will take a few minutes.  While we're waiting let's
@echo do a quick check of what your screen blanking settings are.
@echo.
@echo Here is your current Screen Blanking configuration status:

set value=0
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_check) ELSE (goto x64_check)

:x86_check
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useMonBlankingDriver" | findstr "0x0" >nul 2>nul
If %ERRORLEVEL% == 0 echo You currently have the ScreenBlanking Driver Disabled! & set /A value=%value%+1
If %ERRORLEVEL% == 0 echo *****Screen Blanking Driver Disabled*****  >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useOverlayBlanking" | findstr "0x0" >nul 2>nul
If %ERRORLEVEL% == 0 echo You currently have Hardware Overlay Screen Blanking Disabled! & set /A value=%value%+1 
If %ERRORLEVEL% == 0 echo *****Hardware Overlay Screen Blanking Disabled*****  >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
If %value% == 0 echo[ & echo No changes to Screen Blanking Configuration Settings detected
If %value% == 0 echo[ & echo ***No changes to Screen Blanking Configuration Settings detected*** >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
If %value% == 2 echo[ & echo You have disabled both screen blanking methods.  This will cause the screen blanking feature to fail.  Please change your settings.
goto diagnostic

:x64_check
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useMonBlankingDriver" | findstr "0x0" >nul 2>nul
If %ERRORLEVEL% == 0 echo You currently have the ScreenBlanking Driver Disabled! & set /A value=%value%+1
If %ERRORLEVEL% == 0 echo *****Screen Blanking Driver Disabled*****  >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useOverlayBlanking" | findstr "0x0" >nul 2>nul
If %ERRORLEVEL% == 0 echo You currently have Hardware Overlay Screen Blanking Disabled! & set /A value=%value%+1 
If %ERRORLEVEL% == 0 echo *****Hardware Overlay Screen Blanking Disabled*****  >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
If %value% == 0 echo[ & echo No changes to Screen Blanking Configuration Settings detected
If %value% == 0 echo[ & echo ***No changes to Screen Blanking Configuration Settings detected*** >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
If %value% == 2 echo[ & echo You have disabled both screen blanking methods.  This will cause the screen blanking feature to fail.  Please change your settings.
goto diagnostic



:diagnostic
@echo ----Device Class Registry Information---- >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo off
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{5b45201d-f2f2-4f3b-85bb-30ff1f953599}" /s >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{5b45201d-f2f2-4f3b-85bb-30ff1f953599}" /s >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{e6f07b5f-ee97-4a90-b076-33f57bf4eaa7}" /s >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" 
@echo off
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo ----System Overview---- >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo off
wmic /APPEND: "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" computersystem GET Model,Manufacturer  >nul 2>nul
wmic /APPEND: "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" OS get name >nul 2>nul
@echo off
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo ----Video Card Overview---- >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo off
wmic /APPEND: "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" path Win32_videocontroller GET description  >nul 2>nul
wmic /APPEND: "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" path Win32_videocontroller GET InstalledDisplayDrivers,DriverVersion  >nul 2>nul
wmic /APPEND: "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" path Win32_videocontroller GET VideoModeDescription  >nul 2>nul
@echo off
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo ----Screen Blanking Event Viewer Data---- >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo[ >> "%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt"
@echo off
wmic /APPEND:"%userprofile%\Desktop\GoToMyPC_ScreenBlanking_Diagnostic.txt" ntevent where "sourcename='monblanking' AND LogFile='System'" get Message,InsertionStrings,TimeGenerated >nul 2>nul
@echo.
@echo.
@echo.
@echo Thanks for waiting.  There is a diagnostic file on your desktop called
@echo GoToMyPC_ScreenBlankingDiagnostic.txt.  Please give this file to your
@echo troubleshooting support representative.
goto menu





:menu
echo.
echo *****************************************************
echo      GoToMyPC Screen Blanking Configuration Tool
echo *****************************************************
echo What would you like to do?
echo.
echo 1. Disable Screen Blanking Completely
echo 2. Disable Screen Blanking Driver and use only Hardware Overlay
echo 3. Disable just Hardware Overlay and use only Screen Blanking Driver
echo 4. Use both Screen Blanking and Hardware Overlay (Default setting for GoToMyPC v8.5 or newer)
echo 5. Quit

echo.


set /P C=Enter 1,2,3,4 or 5 :

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
@echo Disabling Screen Blanking for x86 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000000 /f
@echo Both the Screen Blanking Driver and Hardware Overlay Screen Blanking are disabled.  Please note that this means the screen blanking feature won't work!
pause
goto menu

:x64_1
@echo Disabling Screen Blanking for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000000 /f
@echo Both the Screen Blanking Driver and Hardware Overlay Screen Blanking are disabled.  Please note that this means the screen blanking feature won't work!
pause
goto menu

:choice2
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_2) ELSE (goto x64_2)


:x86_2
@echo Disabling Screen Blanking Driver for x86 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000001 /f
@echo The Screen Blanking Driver is disabled.  Hardware Overlay Screen Blanking is still enabled.
pause
goto menu


:x64_2
@echo Disabling Screen Blanking Driver for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000001 /f
@echo The Screen Blanking Driver is disabled.  Hardware Overlay Screen Blanking is still enabled.
pause
goto menu

:choice3
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_3) ELSE (goto x64_3)

:x86_3
@echo Disabling Hardware Overlay Screen Blanking for x86 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000001 /f
@echo Hardware Overlay Screen Blanking is disabled.  The Screen Blanking Driver is still enabled.
pause
goto menu

:x64_3
@echo Disabling Hardware Overlay Screen Blanking for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000001 /f
@echo Hardware Overlay Screen Blanking is disabled.  The Screen Blanking Driver is still enabled.
pause
goto menu

:choice4
if %PROCESSOR_ARCHITECTURE% == x86 (goto x86_4) ELSE (goto x64_4)

:x86_4
@echo Enabling Screen Blanking for x86 . . . 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000001 /f
@echo Both screen blanking methods are enabled.
pause
goto menu

:x64_4
@echo Enabling Screen Blanking for x64 . . .
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useMonBlankingDriver" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "useOverlayBlanking" /t REG_DWORD /d 00000001 /f
@echo Both screen blanking methods are enabled.
pause
goto menu



