@echo off
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows NT x86" | findstr "W32X86" >nul
if %errorlevel% neq 0 echo We are sorry but your system has administrator has disabled registry access and so this tool will not work.  Please contact your system administrator for assistance with running this tool & pause > nul & exit
@echo off
@setlocal enableextensions
@cd /d "%~dp0"
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo[ 
    ) else (
        echo !!Error running Installation FixIt Tool!!
        echo --- You need to run this tool as administrator --
        echo  Please close the window, right click on this file, select Run as Administrator
        echo when you run this tool. 
pause > nul & exit
    )

@echo off
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1875 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1875\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1826 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1824\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1775 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1775\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1704 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1704\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1611 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1611\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1470 install log-autoupgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%systemroot%\Temp\G2_1470\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1875 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%Temp%\G2_1875\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1826 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%temp%\G2_1826\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1775 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%Temp%\G2_1775\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1704 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%temp%\G2_1704\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1611 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =======================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%Temp%\G2_1611\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo  1470 install log-user upgrade >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo =============================  >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul
echo[
type "%temp%\G2_1470\GoToMyPC_Installation.log" >> "%userprofile%\Desktop\GoToMyPC_Installer_Log.txt" 2>nul


@echo ****************************************
@echo *   GoToMyPC Installation Fix It Tool  *
@echo *                                      *
@echo * Supports  v9.1 b 1875 or lower       *
@echo ****************************************
@echo ****************************************
@echo This tool deletes GoToMyPC program files
@echo and installation registry keys to fix 
@echo installation problems.  
@echo ****************************************
@echo.
:menu
echo.
echo What would you like to do?
echo.
echo 1. Uninstall GoToMyPC, but do not unregister host (computer remains on the same account)
echo 2. Uninstall GoToMyPC and unregister host (Warning: This is dangerous and permanent)
echo 3. Quit
echo.



set /P C=Enter 1, 2, or 3 : 



if "%C%"=="1" (
	:remainder 
    if %PROCESSOR_ARCHITECTURE% == x86 (
        echo Removing program files for GoToMyPC x86...
net stop spooler
net stop GoToMyPC >nul 2>nul
net stop monblanking >nul 2>nul
taskkill /f /t /IM g2svc.exe >nul 2>nul
taskkill /f /IM g2audioh.exe >nul 2>nul
taskkill /f /IM g2comm.exe >nul 2>nul
taskkill /f /IM g2fileh.exe >nul 2>nul
taskkill /f /IM g2host.exe >nul 2>nul
taskkill /f /IM g2mainh.exe >nul 2>nul
taskkill /f /IM g2pre.exe >nul 2>nul
taskkill /f /IM g2printh.exe >nul 2>nul
taskkill /f /IM g2simpleft.exe >nul 2>nul
taskkill /f /IM g2tray.exe >nul 2>nul
taskkill /f /IM g2vistahelper.exe >nul 2>nul

del "%programfiles%\Citrix\GoToMyPC\g2audioh.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2comm.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2fileh.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2host.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2mainh.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2pre.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2printh.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\G2PrintUPD.txt" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\G2UPDDriver.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\G2PrintUPDUI.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2simpleft.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2svc.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2tray.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2vistahelper.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\g2processfactory.exe" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\gotomon.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\gotomon_x64.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\GoToPrint_Processor.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\PrintWiz_en-us.ini" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\PrintWiz_ja-jp.ini" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\ResourceHost_en_us.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\ResourceHost_ja_jp.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\ResourceHost_en-us.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\ScreenCaptureWin8Dll.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\G2WinLogon.dll" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\x86\" /f /q >nul 2>nul
del "%programfiles%\Citrix\GoToMyPC\" /f /q >nul 2>nul

rem monblanking files
del "%systemroot%\System32\drivers\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\Services\monblanking" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFxApp\Components\{D2C1C66F-9EB2-460D-B902-B6FB3E3F9F46}" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\831FB1509292986F102B3AB7C8451FA1EA13B0F7" /f >nul 2>nul


rem remote printing 
del "%systemroot%\system32\gotomon.dll" /f /q >nul 2>nul
del "%systemroot%\system32\spool\drivers\w32x86\3\G2PrintUPDDriver.dll" /f /q >nul 2>nul
del "%systemroot%\system32\spool\drivers\w32x86\3\G2PrintUPDUI.dll" /f /q >nul 2>nul
del "%systemroot%\system32\spool\drivers\w32x86\3\G2PrintUPD.txt" /f /q >nul 2>nul
del "%systemroot%\system32\spool\prtprocs\w32x86\GoToPrintProcessor.dll" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\GoToMyPC Port" /f  >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows NT x86\Drivers\Version-3\GoToMyPC UPD Driver"  /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows NT x86\Print Processors\GoToMyPC Print Processor" /f >nul 2>nul


echo Removing registry keys for GoToMyPC x86...

rem keys that are common to many builds, so are being included just once. (x86)

reg delete "HKEY_CLASSES_ROOT\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul


rem keys for build 1875
reg delete "HKEY_CLASSES_ROOT\Installer\Features\E0DB7F21D9C3A6840B8EF19013E8AA1D" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\E0DB7F21D9C3A6840B8EF19013E8AA1D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\E0DB7F21D9C3A6840B8EF19013E8AA1D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\E0DB7F21D9C3A6840B8EF19013E8AA1D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\E0DB7F21D9C3A6840B8EF19013E8AA1D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{12F7BD0E-3C9D-486A-B0E8-1F09318EAAD1}" /f >nul 2>nul

rem keys for build 1826
reg delete "HKEY_CLASSES_ROOT\Installer\Features\94A2A726DD429574595213AB35D703AF" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\94A2A726DD429574595213AB35D703AF" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\94A2A726DD429574595213AB35D703AF" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\94A2A726DD429574595213AB35D703AF" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\94A2A726DD429574595213AB35D703AF" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{627A2A49-24DD-4759-9525-31BA537D30FA}" /f >nul 2>nul


rem keys for build 1824
reg delete "HKEY_CLASSES_ROOT\Installer\Products\416608FA54A38E246A9F79C100A57675" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\416608FA54A38E246A9F79C100A57675" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\416608FA54A38E246A9F79C100A57675" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\416608FA54A38E246A9F79C100A57675" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\416608FA54A38E246A9F79C100A57675" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{AF806614-3A45-42E8-A6F9-971C005A6757}" /f >nul 2>nul

rem keys for build 1775
reg delete "HKEY_CLASSES_ROOT\Installer\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{81630FCE-AD54-4E54-A3E7-627887D30D7E}" /f >nul 2>nul

rem keys for build 1752
reg delete "HKEY_CLASSES_ROOT\Installer\Products\6371402A7A303DF43B349A844AC14FCB" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\6371402A7A303DF43B349A844AC14FCB" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\6371402A7A303DF43B349A844AC14FCB" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\6371402A7A303DF43B349A844AC14FCB" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\6371402A7A303DF43B349A844AC14FCB" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A2041736-03A7-4FD3-B343-A948A41CF4BC}" /f >nul 2>nul

rem 1704
reg delete "HKEY_CLASSES_ROOT\Installer\Features\2CD6E0C288FDAE04D9732DCBFF65232D" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\2CD6E0C288FDAE04D9732DCBFF65232D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\2CD6E0C288FDAE04D9732DCBFF65232D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\2CD6E0C288FDAE04D9732DCBFF65232D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\2CD6E0C288FDAE04D9732DCBFF65232D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{2C0E6DC2-DF88-40EA-9D37-D2BCFF5632D2}" /f >nul 2>nul

rem 1611 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\E39F915D65E1E45429CA1925779B40D1" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\E39F915D65E1E45429CA1925779B40D1" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\E39F915D65E1E45429CA1925779B40D1" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\E39F915D65E1E45429CA1925779B40D1" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\E39F915D65E1E45429CA1925779B40D1" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{D519F93E-1E56-454E-92AC-915277B9041D}" /f >nul 2>nul

rem these are the codes for build 1606 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\C0AAE748A39C65F4B9109BB0A7E62E03" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\C0AAE748A39C65F4B9109BB0A7E62E03" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\C0AAE748A39C65F4B9109BB0A7E62E03" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\C0AAE748A39C65F4B9109BB0A7E62E03" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\C0AAE748A39C65F4B9109BB0A7E62E03" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{847EAA0C-C93A-4F56-9B01-B90B7A6EE230}" /f >nul 2>nul

rem 880?
reg delete "HKEY_CLASSES_ROOT\Installer\Features\4FE9A1676193ED948BD6391D9969D27F" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\4FE9A1676193ED948BD6391D9969D27F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\4FE9A1676193ED948BD6391D9969D27F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\4FE9A1676193ED948BD6391D9969D27F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\4FE9A1676193ED948BD6391D9969D27F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{761A9EF4-3916-49DE-B86D-93D199962DF7}" /f >nul 2>nul

rem these are the keys for build 1520
reg delete "HKEY_CLASSES_ROOT\Installer\Features\21A5AF5FFD347414185BD5BFB8B2C360" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\21A5AF5FFD347414185BD5BFB8B2C360" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\21A5AF5FFD347414185BD5BFB8B2C360" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\21A5AF5FFD347414185BD5BFB8B2C360" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\21A5AF5FFD347414185BD5BFB8B2C360" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F5FA5A12-43DF-4147-81B5-5DFB8B2B3C06}" /f >nul 2>nul

rem these are the keys for build 1505
reg delete "HKEY_CLASSES_ROOT\Installer\Features\0A3AF4A4CA8FCB24F95C2C60AD535564" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\0A3AF4A4CA8FCB24F95C2C60AD535564" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\0A3AF4A4CA8FCB24F95C2C60AD535564" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\0A3AF4A4CA8FCB24F95C2C60AD535564" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\0A3AF4A4CA8FCB24F95C2C60AD535564" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4A4FA3A0-F8AC-42BC-9FC5-C206DA355546}" /f >nul 2>nul

rem these are the keys for build 1470
reg delete "HKEY_CLASSES_ROOT\Installer\Features\8FA72399EF8A84944BE7748932754F07" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\8FA72399EF8A84944BE7748932754F07" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\8FA72399EF8A84944BE7748932754F07" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\8FA72399EF8A84944BE7748932754F07" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\8FA72399EF8A84944BE7748932754F07" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{99327AF8-A8FE-4948-B47E-47982357F470}" /f >nul 2>nul

rem these are the keys for 1467
reg delete "HKEY_CLASSES_ROOT\Installer\Features\A116C89FD4B0CDC4BBFC224526B75AFA" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\A116C89FD4B0CDC4BBFC224526B75AFA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\A116C89FD4B0CDC4BBFC224526B75AFA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\A116C89FD4B0CDC4BBFC224526B75AFA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\A116C89FD4B0CDC4BBFC224526B75AFA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F98C611A-0B4D-4CDC-BBCF-2254627BA5AF}" /f >nul 2>nul

rem these are the keys for 1427
reg delete "HKEY_CLASSES_ROOT\Installer\Features\9754AEF33ADB07B488FE41803129818E" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\9754AEF33ADB07B488FE41803129818E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\9754AEF33ADB07B488FE41803129818E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\9754AEF33ADB07B488FE41803129818E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\9754AEF33ADB07B488FE41803129818E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{3FEA4579-BDA3-4B70-88EF-1408139218E8}" /f >nul 2>nul

rem these are the keys for b 1337
reg delete "HKEY_CLASSES_ROOT\Installer\Features\2076BAF5018259C4890478C6D2D6215A" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\2076BAF5018259C4890478C6D2D6215A" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\2076BAF5018259C4890478C6D2D6215A" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\2076BAF5018259C4890478C6D2D6215A" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\2076BAF5018259C4890478C6D2D6215A" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5FAB6702-2810-4C95-9840-876C2D6D12A5}" /f >nul 2>nul

rem these are the keys for 1201
reg delete "HKEY_CLASSES_ROOT\Installer\Features\B8681275E6635F647BA277E1F1767EAD" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\B8681275E6635F647BA277E1F1767EAD" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\B8681275E6635F647BA277E1F1767EAD" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\B8681275E6635F647BA277E1F1767EAD" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\B8681275E6635F647BA277E1F1767EAD" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5721868B-366E-46F5-B72A-771E1F67E7DA}" /f >nul 2>nul

rem these are the keys for 1143
reg delete "HKEY_CLASSES_ROOT\Installer\Features\13D0E11F2BF4B64418FD5F2022B5B01E" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\13D0E11F2BF4B64418FD5F2022B5B01E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\13D0E11F2BF4B64418FD5F2022B5B01E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\13D0E11F2BF4B64418FD5F2022B5B01E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\13D0E11F2BF4B64418FD5F2022B5B01E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F11E0D31-4FB2-446B-81DF-F502225B0BE1}" /f >nul 2>nul

rem rem these are the keys for 1104
reg delete "HKEY_CLASSES_ROOT\Installer\Features\70501735F3240CD438207D0B2088C707" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\70501735F3240CD438207D0B2088C707" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\70501735F3240CD438207D0B2088C707" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\70501735F3240CD438207D0B2088C707" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\70501735F3240CD438207D0B2088C707" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{53710507-423F-4DC0-8302-D7B002887C70}" /f >nul 2>nul

rem these are the keys for 943
reg delete "HKEY_CLASSES_ROOT\Installer\Features\CC60AE47DFE9D014884BBCA5DBB27E58" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\CC60AE47DFE9D014884BBCA5DBB27E58" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\CC60AE47DFE9D014884BBCA5DBB27E58" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\CC60AE47DFE9D014884BBCA5DBB27E58" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\CC60AE47DFE9D014884BBCA5DBB27E58" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{74EA06CC-9EFD-410D-88B4-CB5ABD2BE785}" /f >nul 2>nul

rem these are the keys for 830 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\D1BD3232738FE4B4CB3E850046D11F80" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\D1BD3232738FE4B4CB3E850046D11F80" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\D1BD3232738FE4B4CB3E850046D11F80" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\D1BD3232738FE4B4CB3E850046D11F80" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\D1BD3232738FE4B4CB3E850046D11F80" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{2323DB1D-F837-4B4E-BCE3-5800641DF108}" /f >nul 2>nul

rem these are the keys for 814
reg delete "HKEY_CLASSES_ROOT\Installer\Features\EAF6920DAC67BA248B59BBE39C8EF340" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\EAF6920DAC67BA248B59BBE39C8EF340" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\EAF6920DAC67BA248B59BBE39C8EF340" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\EAF6920DAC67BA248B59BBE39C8EF340" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\EAF6920DAC67BA248B59BBE39C8EF340" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{D0296FAE-76CA-42AB-B895-BB3EC9E83F04}" /f >nul 2>nul


rem these are the keys for 731
reg delete "HKEY_CLASSES_ROOT\Installer\Features\4823ED239504FED4498F649869DEBB3D" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\4823ED239504FED4498F649869DEBB3D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\4823ED239504FED4498F649869DEBB3D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\4823ED239504FED4498F649869DEBB3D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\4823ED239504FED4498F649869DEBB3D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{32DE3284-4059-4DEF-94F8-468996EDBBD3}" /f >nul 2>nul

rem these are the keys for 672
reg delete "HKEY_CLASSES_ROOT\Installer\Features\880E92FA2BE22B34AB3AD9E28B0CA424" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\880E92FA2BE22B34AB3AD9E28B0CA424" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\880E92FA2BE22B34AB3AD9E28B0CA424" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\880E92FA2BE22B34AB3AD9E28B0CA424" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\880E92FA2BE22B34AB3AD9E28B0CA424" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{AF29E088-2EB2-43B2-BAA3-9D2EB8C04A42}" /f >nul 2>nul

rem these are the keys for 671
reg delete "HKEY_CLASSES_ROOT\Installer\Features\51B5F5AD5B775BB4FA3299ED575F08F4" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\51B5F5AD5B775BB4FA3299ED575F08F4" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\51B5F5AD5B775BB4FA3299ED575F08F4" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\51B5F5AD5B775BB4FA3299ED575F08F4" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\51B5F5AD5B775BB4FA3299ED575F08F4" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{DA5F5B15-77B5-4BB5-AF23-99DE75F5804F}" /f >nul 2>nul

rem these are the keys for 670
reg delete "HKEY_CLASSES_ROOT\Installer\Features\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4C43BE9A-C247-465E-BC2D-5C1EC32972CA}" /f >nul 2>nul

rem these are the keys for 636
reg delete "HKEY_CLASSES_ROOT\Installer\Features\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{D3749CF7-6362-44CC-8613-B85F4576E0F1}" /f >nul 2>nul
		ping 1.1.1.1 >nul 2>nul
echo Deleting GoToMyPC temporary installer files
echo.
del %systemroot%\Temp\G2_*.exe >nul 2>nul
del %systemroot%\Temp\G2_*.tmp >nul 2>nul
echo.
net start spooler
		ping 1.1.1.1 >nul 2>nul
echo GoToMyPC program files, registry keys and installer files have been successfully removed. 
echo If you are troubleshooting with tech support, please give your rep the 'GoToMyPC_Installer_Log' file from your desktop.
echo Otherwise, please feel free to delete the 'GoToMyPC_Installer_Log' file.
		ping 1.1.1.1 >nul 2>nul
		ping 1.1.1.1 >nul 2>nul
goto pause 

 ) else (
		echo.
        echo Running Fix It Tool for x64...
echo.
echo.
echo Cleaning up program files for GoToMyPC x64 . . .
@echo off
net stop spooler
net stop GoToMyPC >nul 2>nul
net stop monblanking >nul 2>nul
taskkill /f /t /IM g2svc.exe >nul 2>nul
taskkill /f /IM g2audioh.exe >nul 2>nul
taskkill /f /IM g2comm.exe >nul 2>nul
taskkill /f /IM g2fileh.exe >nul 2>nul
taskkill /f /IM g2host.exe >nul 2>nul
taskkill /f /IM g2mainh.exe >nul 2>nul
taskkill /f /IM g2pre.exe >nul 2>nul
taskkill /f /IM g2printh.exe >nul 2>nul
taskkill /f /IM g2simpleft.exe >nul 2>nul
taskkill /f /IM g2tray.exe >nul 2>nul
taskkill /f /IM g2vistahelper.exe >nul 2>nul

del "%programfiles(x86)%\Citrix\GoToMyPC\g2audioh.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2comm.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2fileh.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2host.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2mainh.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2pre.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2printh.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\G2PrintUPD.txt" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\G2UPDDriver_x64.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\G2PrintUPDUI_x64.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2simpleft.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2svc.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2tray.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2vistahelper.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\g2processfactory.exe" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\gotomon.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\gotomon_x64.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\GoToPrint_Processor_x64.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\PrintWiz_en-us.ini" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\PrintWiz_ja-jp.ini" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\ResourceHost_en_us.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\ResourceHost_ja_jp.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\ResourceHost_en-us.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\ScreenCaptureWin8Dll.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\G2WinLogon_x64.dll" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\x64\" /f /q >nul 2>nul
del "%programfiles(x86)%\Citrix\GoToMyPC\" /f /q >nul 2>nul

 rem monblanking files
del "%systemroot%\System32\drivers\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\Services\monblanking" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.sys" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71\monblanking.inf" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_24DF15B418F8C3AC00711F5F9C8508E9A2722F71" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_08936B884C1597DB0C203D5078AF62A9120400EF\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_43F3B225C7BFA923CBBCF35F53F3776208A7DF33" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_6E3A3170AAC437510498DE375A122F88C27DEA7C\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_B7ADDEFD6D09122B2EF5469798E8BF2CF428E2FD" /f >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.cat" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.inf" /f /q >nul 2>nul
del "%systemroot%\System32\DRVSTORE\monblankin_40D8ED7C325E49643F6E501769B801E39B7B017F\monblanking.sys" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFx\DriverStore\monblankin_3B30C2FD879DCEE48DE624C3A64DB9657C378C14" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFxApp\Components\{B8931D88-38B5-4921-BDFD-4C81C4CA2768}" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DIFxApp\Components\{00FDD036-F0F8-4999-B7C4-0568A39ED2B6}" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\831FB1509292986F102B3AB7C8451FA1EA13B0F7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\1DDB4A6E49CF5EAED4A0629D104ACFC2CC28EFED" /f >nul 2>nul

rem remote printing components
del "%systemroot%\system32\gotomon_x64.dll" /f /q >nul 2>nul
del "%systemroot%\System32\spool\drivers\x64\3\G2PrintUPDDriver_x64.dll" /f /q >nul 2>nul
del "%systemroot%\System32\spool\drivers\x64\3\G2PrintUPDUI_x64.dll" /f /q >nul 2>nul
del "%systemroot%\System32\spool\drivers\x64\3\G2PrintUPD.txt" /f /q >nul 2>nul
del "%systemroot%\System32\spool\prtprocs\x64\GoToPrintProcessor_x64.dll" /f /q >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\GoToMyPC Port" >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows x64\Drivers\Version-3\GoToMyPC UPD Driver"  >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows x64\Print Processors\GoToMyPC Print Processor"  >nul 2>nul


echo Cleaning up registry keys for GoToMyPC x64 . . .

rem the following  lines are common to multiple builds, so are included just once, for efficiency (x64)
reg delete "HKEY_CLASSES_ROOT\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul


rem keys for b1875
reg delete "HKEY_CLASSES_ROOT\Installer\Features\252521373375D304291B02BB90E1F2E8" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\252521373375D304291B02BB90E1F2E8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\252521373375D304291B02BB90E1F2E8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\252521373375D304291B02BB90E1F2E8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\252521373375D304291B02BB90E1F2E8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{73125252-5733-403D-92B1-20BB091E2F8E}" /f >nul 2>nul

rem keys for b1826 x64
reg delete "HKEY_CLASSES_ROOT\Installer\Products\E471BB54B49857041BD2CDE8D59D8906" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\E471BB54B49857041BD2CDE8D59D8906" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\E471BB54B49857041BD2CDE8D59D8906" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\E471BB54B49857041BD2CDE8D59D8906" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\E471BB54B49857041BD2CDE8D59D8906" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{45BB174E-894B-4075-B12D-DC8E5DD99860}" /f >nul 2>nul

rem these are the keys for build 1824
reg delete "HKEY_CLASSES_ROOT\Installer\Features\E85D1FA6A57DDA5409540D2239390A02" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\E85D1FA6A57DDA5409540D2239390A02" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\E85D1FA6A57DDA5409540D2239390A02" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\E85D1FA6A57DDA5409540D2239390A02" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\E85D1FA6A57DDA5409540D2239390A02" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6AF1D58E-D75A-45AD-9045-D0229393A020}" /f >nul 2>nul

rem these are the codes for build 1775
reg delete "HKEY_CLASSES_ROOT\Installer\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\ECF0361845DA45E43A7E2687783DD0E7" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{81630FCE-AD54-4E54-A3E7-627887D30D7E}" /f >nul 2>nul

rem these are the codes for build 1752
reg delete "HKEY_CLASSES_ROOT\Installer\Products\671ACD1DA06285A4B8BB381456D39C8E" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Features\671ACD1DA06285A4B8BB381456D39C8E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\671ACD1DA06285A4B8BB381456D39C8E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\671ACD1DA06285A4B8BB381456D39C8E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\671ACD1DA06285A4B8BB381456D39C8E" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{D1DCA176-260A-4A58-8BBB-8341653DC9E8}" /f >nul 2>nul

rem these are the codes for build 1704
reg delete "HKEY_CLASSES_ROOT\Installer\Features\B9F1A99B4519F314CBD66625444C7C36" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\B9F1A99B4519F314CBD66625444C7C36" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\B9F1A99B4519F314CBD66625444C7C36" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\B9F1A99B4519F314CBD66625444C7C36" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\B9F1A99B4519F314CBD66625444C7C36" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B99A1F9B-9154-413F-BC6D-665244C4C763}" /f >nul 2>nul

rem tehse are the codes for build 1611
reg delete "HKEY_CLASSES_ROOT\Installer\Features\C5CAF8DE9F42B6F4F9A9103006DB1A2D" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\C5CAF8DE9F42B6F4F9A9103006DB1A2D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\C5CAF8DE9F42B6F4F9A9103006DB1A2D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\C5CAF8DE9F42B6F4F9A9103006DB1A2D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\C5CAF8DE9F42B6F4F9A9103006DB1A2D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{ED8FAC5C-24F9-4F6B-9F9A-010360BDA1D2}" /f >nul 2>nul

rem these are the codes for 1606
reg delete "HKEY_CLASSES_ROOT\Installer\Features\FB0A38B23EF5FDA4DA6849528D94FACE" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\FB0A38B23EF5FDA4DA6849528D94FACE" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\FB0A38B23EF5FDA4DA6849528D94FACE" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\FB0A38B23EF5FDA4DA6849528D94FACE" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\FB0A38B23EF5FDA4DA6849528D94FACE" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{2B83A0BF-5FE3-4ADF-AD86-9425D849AFEC}" /f >nul 2>nul

rem these are the keys for 1520
reg delete "HKEY_CLASSES_ROOT\Installer\Features\541074F872EA1E1418C5A2D40DB38BEA" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\541074F872EA1E1418C5A2D40DB38BEA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\541074F872EA1E1418C5A2D40DB38BEA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\541074F872EA1E1418C5A2D40DB38BEA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\541074F872EA1E1418C5A2D40DB38BEA" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8F470145-AE27-41E1-815C-2A4DD03BB8AE}" /f >nul 2>nul

rem these are the keys for 1470
reg delete "HKEY_CLASSES_ROOT\Installer\Features\CEF19E191FA954F448A1877BFB34F4F8" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\CEF19E191FA954F448A1877BFB34F4F8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\CEF19E191FA954F448A1877BFB34F4F8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\CEF19E191FA954F448A1877BFB34F4F8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\CEF19E191FA954F448A1877BFB34F4F8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{91E91FEC-9AF1-4F45-841A-78B7BF434F8F}" /f >nul 2>nul

rem these are the keys for 1467
reg delete "HKEY_CLASSES_ROOT\Installer\Features\F2EBBA239B2076442985B32348C632DC" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\F2EBBA239B2076442985B32348C632DC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\F2EBBA239B2076442985B32348C632DC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\F2EBBA239B2076442985B32348C632DC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\F2EBBA239B2076442985B32348C632DC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{32ABBE2F-02B9-4467-9258-3B32846C23CD}" /f >nul 2>nul

rem tehse are the keys for 1427
reg delete "HKEY_CLASSES_ROOT\Installer\Features\35834094BFAE62248B958746C889AA67" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\35834094BFAE62248B958746C889AA67" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\35834094BFAE62248B958746C889AA67" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\35834094BFAE62248B958746C889AA67" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\35834094BFAE62248B958746C889AA67" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{49043853-EAFB-4226-B859-78648C98AA76}" /f >nul 2>nul

rem these are the keys for 1337
reg delete "HKEY_CLASSES_ROOT\Installer\Features\0CACB0627FB82E04291CB701F61D11B6" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\0CACB0627FB82E04291CB701F61D11B6" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\0CACB0627FB82E04291CB701F61D11B6" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\0CACB0627FB82E04291CB701F61D11B6" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\0CACB0627FB82E04291CB701F61D11B6" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{260BCAC0-8BF7-40E2-92C1-7B106FD1116B}" /f >nul 2>nul

rem these are the keys for 1201
reg delete "HKEY_CLASSES_ROOT\Installer\Features\D4600D1E6BC166048868CB2855746EF2" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\D4600D1E6BC166048868CB2855746EF2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\D4600D1E6BC166048868CB2855746EF2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\D4600D1E6BC166048868CB2855746EF2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\D4600D1E6BC166048868CB2855746EF2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{E1D0064D-1CB6-4066-8886-BC825547E62F}" /f >nul 2>nul


rem these are the keys for 1143
reg delete "HKEY_CLASSES_ROOT\Installer\Features\7BE6937C06A86E944BA13A3C4A018CD2" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\7BE6937C06A86E944BA13A3C4A018CD2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\7BE6937C06A86E944BA13A3C4A018CD2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7BE6937C06A86E944BA13A3C4A018CD2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\7BE6937C06A86E944BA13A3C4A018CD2" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{C7396EB7-8A60-49E6-B41A-A3C3A410C82D}" /f >nul 2>nul


rem these are the keys for 1104
reg delete "HKEY_CLASSES_ROOT\Installer\Features\427AC731CEE134E4E9E3F0BAA0631762" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\427AC731CEE134E4E9E3F0BAA0631762" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\427AC731CEE134E4E9E3F0BAA0631762" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\427AC731CEE134E4E9E3F0BAA0631762" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\427AC731CEE134E4E9E3F0BAA0631762" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{137CA724-1EEC-4E43-9E3E-0FAB0A367126}" /f >nul 2>nul

rem these are the keys for 943
reg delete "HKEY_CLASSES_ROOT\Installer\Features\CFA95711B44C88C4EAAF326578BF8CF8" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\CFA95711B44C88C4EAAF326578BF8CF8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\CFA95711B44C88C4EAAF326578BF8CF8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\CFA95711B44C88C4EAAF326578BF8CF8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\CFA95711B44C88C4EAAF326578BF8CF8" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{11759AFC-C44B-4C88-AEFA-235687FBC88F}" /f >nul 2>nul

rem these are the keys for 880
reg delete "HKEY_CLASSES_ROOT\Installer\Features\751F8B6161A41EB42B408579994434E3" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\751F8B6161A41EB42B408579994434E3" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\751F8B6161A41EB42B408579994434E3" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\751F8B6161A41EB42B408579994434E3" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\751F8B6161A41EB42B408579994434E3" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{16B8F157-4A16-4BE1-B204-58979944433E}" /f >nul 2>nul

rem these are the keys for 830
reg delete "HKEY_CLASSES_ROOT\Installer\Features\0B02B53660FEF804DB27B803C84711C5" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\0B02B53660FEF804DB27B803C84711C5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\0B02B53660FEF804DB27B803C84711C5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\0B02B53660FEF804DB27B803C84711C5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\0B02B53660FEF804DB27B803C84711C5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{635B20B0-EF06-408F-BD72-8B308C74115C}" /f >nul 2>nul

rem these are the keys for 814 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\A81065AC6704DF842A9C4A3EAC814058" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\A81065AC6704DF842A9C4A3EAC814058" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\A81065AC6704DF842A9C4A3EAC814058" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\A81065AC6704DF842A9C4A3EAC814058" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\A81065AC6704DF842A9C4A3EAC814058" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{CA56018A-4076-48FD-A2C9-A4E3CA180485}" /f >nul 2>nul

rem these are the keys for 731 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\3D132F173F394B746843B569E830E883" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\3D132F173F394B746843B569E830E883" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\3D132F173F394B746843B569E830E883" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\3D132F173F394B746843B569E830E883" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\3D132F173F394B746843B569E830E883" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{71F231D3-93F3-47B4-8634-5B968E038E38}" /f >nul 2>nul

rem these are the keys for 672 
reg delete "HKEY_CLASSES_ROOT\Installer\Features\B1F676DC3DE6A7B4E9C997B134CD310D" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\B1F676DC3DE6A7B4E9C997B134CD310D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\B1F676DC3DE6A7B4E9C997B134CD310D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\B1F676DC3DE6A7B4E9C997B134CD310D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\B1F676DC3DE6A7B4E9C997B134CD310D" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{CD676F1B-6ED3-4B7A-9E9C-791B43DC13D0}" /f >nul 2>nul

rem these are the keys for 671
reg delete "HKEY_CLASSES_ROOT\Installer\Features\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\A9EB34C4742CE564CBD2C5E13C9227AC" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4C43BE9A-C247-465E-BC2D-5C1EC32972CA}" /f >nul 2>nul

rem these are the keys for 670
reg delete "HKEY_CLASSES_ROOT\Installer\Features\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_CLASSES_ROOT\Installer\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UpgradeCodes\4D35A00D0B0B10944BA78997B4E04FE5" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\7FC9473D2636CC4468318BF554670E1F" /f >nul 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{D3749CF7-6362-44CC-8613-B85F4576E0F1}" /f >nul 2>nul

ping 1.1.1.1 >nul 2>nul
echo Deleting GoToMyPC temporary installer files
echo.
del %systemroot%\Temp\G2_*.exe >nul 2>nul
del %systemroot%\Temp\G2_*.tmp >nul 2>nul
net start spooler
		ping 1.1.1.1 >nul 2>nul
echo GoToMyPC program files, registry keys and installer files have been successfully removed. 
echo If you are troubleshooting with tech support, please give your rep the 'GoToMyPC_Installer_Log' file from your desktop.
echo Otherwise, please feel free to delete the 'GoToMyPC_Installer_Log' file.
		ping 1.1.1.1 >nul 2>nul
		ping 1.1.1.1 >nul 2>nul
goto pause 


    )
    ) else ( 
        if "%C%"=="2" (    
		
		if %PROCESSOR_ARCHITECTURE% == x86 (
        echo Deleting GoToMyPC Host Registration Information for x86 . . .
		echo.
		net stop GoToMyPC >nul 2>nul
		reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Citrix\GoToMyPC" /v "machinekey" /f >nul 2>nul
		ping 1.1.1.1 >nul 2>nul

		goto remainder

 ) else (

		@echo Deleting GoToMyPC Host Registration Information for x64 . . .
		echo.
		net stop GoToMyPC
		reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Citrix\GoToMyPC" /v "machinekey" /f >nul 2>nul
		ping 1.1.1.1 >nul 2>nul
		goto remainder 

  )
    ) else ( 
        if "%C%"=="3" (
            echo quitting...
        ) else (
            cls
            goto menu
        )
    )
)
goto:pause
:pause
