@echo off
@echo off
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo Error running Configuration Tool - You need to run this tool as administrator.  Please close the window, right click on this file, select Run as Administrator when you run this tool. 
pause > nul & exit

)

:mainmenu

echo.
echo *******************************************************
echo ********GoToMyPC Preferences Configuration Tool********
echo *******************************************************
@echo[
echo We are going to run through the preferences one by one and ask you which preferences you want to enable.  This will take some time.  Please pay careful attention to each choice.	
echo What would you like to do?
@echo[
echo 1.  Run the tool
echo 2.  Quit

set /P C=Enter 1 or 2:

if "%C%"=="1" (
goto:choice0

 )
    ) else ( 


if "%C%"=="2" (
goto:exit

  ) else (

            cls
            goto mainmenu
        )
    )

REM *************************************
:choice0
echo Windows Registry Editor Version 5.00 >> %userprofile%\Desktop\GoToMyPC_Preferences.reg
echo[ >> %userprofile%\Desktop\GoToMyPC_Preferences.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\Preferences] >> %userprofile%\Desktop\GoToMyPC_Preferences.reg

echo[ >> %userprofile%\Desktop\GoToMyPC_Preferences.reg

set value=0x00000000
goto:choice1
@echo[
@echo[
@echo[

:choice1
echo[
echo[
echo Lock host keyboard and mouse?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00010000
goto:choice2
 )
    ) else ( 
		goto:choice2
		)
	)

REM *************************************
	
:choice2
@echo[
@echo[
@echo[
echo Blank out host computer screen?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00020000
goto:choice3
 )
    ) else ( 
		goto:choice3
		)
	)
	
REM *************************************
	
:choice3
@echo[
@echo[
@echo[
echo Lock host computer on connect and disconnect?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00040000
goto:choice4
 )
    ) else ( 
		goto:choice4
		)
	)
	
REM *************************************
	
:choice4
@echo[
@echo[
@echo[
echo Automatically adjust the resolution of the host to match the client?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00002000
goto:choice5
 )
    ) else ( 
		goto:choice5
		)
	)	

REM *************************************
	
:choice5
@echo[
@echo[
@echo[
echo Disable sleep mode on the host computer?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00080000
goto:choice6
 )
    ) else ( 
		goto:choice6
		)
	)	

REM *************************************
	
:choice5
@echo[
@echo[
@echo[
echo Disable sleep mode on the host computer?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00080000
goto:choice6
 )
    ) else ( 
		goto:choice6
		)
	)	

REM *************************************
	
:choice6
@echo[
@echo[
@echo[
echo Show host computer cursor?
echo 1.  Yes
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00000040
goto:choice7
 )
    ) else ( 
		goto:choice7
		)
	)	

REM *************************************
	
:choice7
@echo[
@echo[
@echo[
echo When you connect to your computer sessions will start in...
echo 1.  Full screen
echo 2.  Window (Default)

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00000100
goto:choice8
 )
    ) else ( 
		goto:choice8
		)
	)	
	
REM *************************************
	
:choice8
@echo[
@echo[
@echo[
echo When you connect to your computer, you will see it in...
echo 1.  Actual Size
echo 2.  Scale-to-fit (Default)

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00000200
goto:choice9
 )
    ) else ( 
		goto:choice9
		)
	)	

REM *************************************
	
:choice9
@echo[
@echo[
@echo[
echo Copy and paste between computers (shared clipboard)?
echo 1.  Yes (Default)
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00000080
goto:choice10
 )
    ) else ( 
		goto:choice10
		)
	)	

REM *************************************
	
:choice10
@echo[
@echo[
@echo[
echo Pass Windows Keys to host computer? (Alt+Tab, Windows key)
echo 1.  Yes (Default)
echo 2.  No

set /P C=Enter 1 or 2:

if "%C%"=="1" (
set /A value= %value% + 0x00100000
goto:choice11
 )
    ) else ( 
		goto:choice11
		)
	)

	
REM *************************************
	
:choice11
@echo[
@echo[
@echo[
echo How would you like to handle updates? (Alt+Tab, Windows key)
echo 1.  Automatically install updates (Default)
echo 2.  Ask me to install updates

set /P C=Enter 1 or 2:

if "%C%"=="1" (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\Preferences" /v "userSeamlessUpdates" /d "enable" /f
echo "userSeamlessUpdates"="enable" >> %userprofile%\Desktop\GoToMyPC_Preferences.reg
goto:choice12
 )
    ) else ( 
		reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\Preferences" /v "userSeamlessUpdates" /d "disable" /f >nul 2>nul
		echo "userSeamlessUpdates"="disable" >> %userprofile%\Desktop\GoToMyPC_Preferences.reg
		goto:choice12
		)
	)

	
REM *************************************
	
:choice12
@echo[
@echo[
@echo[
set /p timeout=Please enter the new value for the timout in minutes - timeout:
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\Preferences" /t REG_DWORD /v "currentITO" /d "%timeout%" /f

goto:fin

:fin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC\Preferences" /v "prefFlags" /t REG_DWORD /d "%value%" /f


echo "prefFlags"=dword:%value% >> %userprofile%\Desktop\GoToMyPC_Preferences.reg

:exit
@echo %value%
@echo quitting
pause