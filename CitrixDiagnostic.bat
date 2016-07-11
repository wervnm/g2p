@echo off
date /t >> %userprofile%\Desktop\Citrix_Diagnostics.txt
@echo Gathering diagnostic info.  This may take a few minutes.
@echo[
@echo off
@echo ---System Summary--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
systeminfo | findstr /r "OS.Name OS.Version System.Name System.Model System.Manufacturer Windows.Directory System.Directory Locale User.Name Time.Zone Serial.Number Mac.address Total.Physical.Memory Available.Physical.Memory" >> %userprofile%\Desktop\Citrix_Diagnostics.txt
@echo[
@echo System Summary complete.  Now retrieving detailed information . . .
@echo[
@echo off
wmic /APPEND:"%userprofile%\Desktop\Citrix_Diagnostics.txt" cpu get Name  >nul 2>nul

@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Video and Display--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" path Win32_videocontroller GET description >nul 2>nul
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" path Win32_videocontroller GET InstalledDisplayDrivers,DriverVersion >nul 2>nul
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" path Win32_videocontroller GET VideoModeDescription >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Logical Drives--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" logicaldisk get Name,Description,FreeSpace,VolumeName >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Network Interface Card--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND:"%userprofile%\Desktop\Citrix_Diagnostics.txt" nic get AdapterType,Name,MACAddress >nul 2>nul
wmic /APPEND:"%userprofile%\Desktop\Citrix_Diagnostics.txt" nicconfig get IPaddress,DefaultIPGateway,IPSubnet,DNSHostName,DNSDomain >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Printers--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" printer get Name,DriverName,PortName,PrintProcessor,PrintJobDataType >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Running Processes--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" process get Name,ExecutablePath >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Installed Applications--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND:"%userprofile%\Desktop\Citrix_Diagnostics.txt" product get Name,Vendor >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Startup Programs--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" startup get caption,command >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---Windows Services--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" service get Name,State,pathname >nul 2>nul
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo ---System Drivers--- >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
@echo[ >> "%userprofile%\Desktop\Citrix_Diagnostics.txt"
wmic /APPEND: "%userprofile%\Desktop\Citrix_Diagnostics.txt" sysdriver get Name,pathname,State >nul 2>nul
@echo[
@echo The diagnostic collection is finished.  The information has been stored in a file named Citrix_Diagnostics.txt that is located on your desktop.
:pause
pause