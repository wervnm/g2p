@echo off

TITLE .:. LogMeIn Diagnostic Information .:.

REM Set log file path
SET logFile=%userprofile%\Desktop\LogMeIn_Diagnostics.txt

date /t >> %logFile%
@echo Gathering diagnostic info.  This may take a few minutes.
@echo[
@echo off
@echo ---System Summary--- >> "%logFile%"
@echo[ >> "%logFile%"
systeminfo | findstr /r "OS.Name OS.Version System.Name System.Model System.Manufacturer Windows.Directory System.Directory Locale User.Name Time.Zone Serial.Number Mac.address Total.Physical.Memory Available.Physical.Memory" >> %logFile%
@echo[
@echo System Summary complete.  Now retrieving detailed information . . .
@echo[
@echo off
wmic /APPEND:"%logFile%" cpu get Name  >nul 2>nul

@echo[ >> "%logFile%"
@echo ---Video and Display--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" path Win32_videocontroller GET description >nul 2>nul
wmic /APPEND: "%logFile%" path Win32_videocontroller GET InstalledDisplayDrivers,DriverVersion >nul 2>nul
wmic /APPEND: "%logFile%" path Win32_videocontroller GET VideoModeDescription >nul 2>nul
@echo[ >> "%logFile%"
@echo[ >> "%logFile%"
@echo ---Logical Drives--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" logicaldisk get Name,Description,FreeSpace,VolumeName >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Network Interface Card--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND:"%logFile%" nic get AdapterType,Name,MACAddress >nul 2>nul
wmic /APPEND:"%logFile%" nicconfig get IPaddress,DefaultIPGateway,IPSubnet,DNSHostName,DNSDomain >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Printers--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" printer get Name,DriverName,PortName,PrintProcessor,PrintJobDataType >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Running Processes--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" process get Name,ExecutablePath >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Installed Applications--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND:"%logFile%" product get Name,Vendor >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Startup Programs--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" startup get caption,command >nul 2>nul
@echo[ >> "%logFile%"
@echo ---Windows Services--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" service get Name,State,pathname >nul 2>nul
@echo[ >> "%logFile%"
@echo ---System Drivers--- >> "%logFile%"
@echo[ >> "%logFile%"
wmic /APPEND: "%logFile%" sysdriver get Name,pathname,State >nul 2>nul
@echo[
@echo The diagnostic collection is finished.  The information has been stored in a file named LogMeIn_Diagnostics.txt that is located on your desktop.
:pause
pause
