@echo off

CLS
ECHO This utility will attempt to resolve permission problems with the Citrix Opener/Launcher.
PAUSE

ECHO Creating directories.
mkdir %temp%\G2_635
mkdir %temp%\G2_943
mkdir %temp%\G2_1104
mkdir %temp%\G2_1201
mkdir %temp%\G2_1337
mkdir %temp%\G2_1427
mkdir %temp%\G2_1470
mkdir %temp%\G2_1520
mkdir %temp%\G2_1606
mkdir %temp%\G2_1611
mkdir %temp%\G2_1704
mkdir %temp%\G2_1752
mkdir %temp%\G2_1775
mkdir %temp%\G2_1824
mkdir %temp%\G2_1826
mkdir %temp%\G2_1875
mkdir %temp%\G2_1930
mkdir %temp%\G2_1943
mkdir %temp%\G2_2014
mkdir %temp%\Citrix
mkdir %temp%\CitrixLogs
mkdir %temp%\GoToAssist
mkdir "%temp%\GoToAssist Corporate"
mkdir "%temp%\GoToAssist Remote Support Customer"
mkdir %userprofile%\AppData\Local\Citrix
mkdir %userprofile%\AppData\Local\Citrix\GoToMyPC
mkdir %userprofile%\AppData\Local\Citrix\GoToMeeting
mkdir %userprofile%\AppData\Local\Citrix\GoToAssist
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer"
mkdir "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert"
mkdir %userprofile%\AppData\Local\Citrix\Launcher
mkdir %userprofile%\AppData\Local\Citrix\Plugins
ECHO Done.

ECHO Restoring ownership.
takeown /f %temp%\G2_635
takeown /f %temp%\G2_943
takeown /f %temp%\G2_1104
takeown /f %temp%\G2_1201
takeown /f %temp%\G2_1337
takeown /f %temp%\G2_1427
takeown /f %temp%\G2_1470
takeown /f %temp%\G2_1520
takeown /f %temp%\G2_1606
takeown /f %temp%\G2_1611
takeown /f %temp%\G2_1704
takeown /f %temp%\G2_1752
takeown /f %temp%\G2_1775
takeown /f %temp%\G2_1824
takeown /f %temp%\G2_1826
takeown /f %temp%\G2_1875
takeown /f %temp%\G2_1930
takeown /f %temp%\G2_1943
takeown /f %temp%\G2_2014
takeown /f %temp%\Citrix
takeown /f %temp%\CitrixLogs
takeown /f %temp%\GoToAssist
takeown /f "%temp%\GoToAssist Corporate"
takeown /f "%temp%\GoToAssist Remote Support Customer"
takeown /f %userprofile%\AppData\Local\Citrix
takeown /f %userprofile%\AppData\Local\Citrix\GoToMyPC
takeown /f %userprofile%\AppData\Local\Citrix\GoToMeeting
takeown /f %userprofile%\AppData\Local\Citrix\GoToAssist
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer"
takeown /f "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert"
takeown /f %userprofile%\AppData\Local\Citrix\Launcher
takeown /f %userprofile%\AppData\Local\Citrix\Plugins
ECHO Done.

ECHO Fixing permissions.
cacls %temp%\G2_635 /t /e /g Everyone:f
cacls %temp%\G2_943 /t /e /g Everyone:f
cacls %temp%\G2_1104 /t /e /g Everyone:f
cacls %temp%\G2_1201 /t /e /g Everyone:f
cacls %temp%\G2_1337 /t /e /g Everyone:f
cacls %temp%\G2_1427 /t /e /g Everyone:f
cacls %temp%\G2_1470 /t /e /g Everyone:f
cacls %temp%\G2_1520 /t /e /g Everyone:f
cacls %temp%\G2_1606 /t /e /g Everyone:f
cacls %temp%\G2_1611 /t /e /g Everyone:f
cacls %temp%\G2_1704 /t /e /g Everyone:f
cacls %temp%\G2_1752 /t /e /g Everyone:f
cacls %temp%\G2_1775 /t /e /g Everyone:f
cacls %temp%\G2_1825 /t /e /g Everyone:f
cacls %temp%\G2_1826 /t /e /g Everyone:f
cacls %temp%\G2_1875 /t /e /g Everyone:f
cacls %temp%\G2_1930 /t /e /g Everyone:f
cacls %temp%\G2_1943 /t /e /g Everyone:f
cacls %temp%\G2_2014 /t /e /g Everyone:f
cacls %temp%\Citrix /t /e /g Everyone:f
cacls %temp%\CitrixLogs /t /e /g Everyone:f
cacls %temp%\GoToAssist /t /e /g Everyone:f
cacls "%temp%\GoToAssist Corporate" /t /e /g Everyone:f
cacls "%temp%\GoToAssist Remote Support Customer" /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix\GoToMyPC /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix\GoToMeeting /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix\GoToAssist /t /e /g Everyone:f
cacls "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" /t /e /g Everyone:f
cacls "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix\Launcher /t /e /g Everyone:f
cacls %userprofile%\AppData\Local\Citrix\Plugins /t /e /g Everyone:f
ECHO Done.

ECHO Removing erroneous shares.
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
net share %temp%\G2_1930 /delete >nul 2>nul
net share %temp%\G2_1943 /delete >nul 2>nul
net share %temp%\G2_2014 /delete >nul 2>nul
net share %temp%\Citrix  /delete >nul 2>nul
net share %temp%\CitrixLogs /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\GoToMyPC /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\GoToMeeting /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\GoToAssist /delete >nul 2>nul
net share "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Customer" /delete >nul 2>nul
net share "%userprofile%\AppData\Local\Citrix\GoToAssist Remote Support Expert" /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\Launcher /delete >nul 2>nul
net share %userprofile%\AppData\Local\Citrix\Plugins /delete >nul 2>nul
net share users /delete >nul 2>nul
ECHO Done.

ECHO Script complete.
ECHO Please close this window and retry.
ECHO You may need to re-run this script as administrator.
PAUSE
