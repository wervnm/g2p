@echo Gathering Screen Blanking Diagnostic Data.  This may take a few minutes . . .
@echo off
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
@echo[
@echo[
@echo We have finished gathering diagnostic data.  The information is stored in a file named GoToMyPC_ScreenBlanking_Diagnostic.txt and it is located on your desktop
:pause
pause