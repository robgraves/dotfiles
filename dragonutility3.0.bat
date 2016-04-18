@echo off
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
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:begin
color 0b
title Dragon utility
echo                  ``  `.                    
echo                   .:syhho-..o   `                 
echo               .+ymNhyyo/`  ++  `+  ..::`          
echo            .+dNMNdhhh+//oyhdm+.s-    /syo`        
echo          :hNMMmhdddh-+shmdhhmNoh-     +osm+       
echo        /dMMMmhdmdNo`osmdo-:+mMdmy     /:yoNh.     
echo      -dMMMNyhNddN/ +ymNd+/.:shmhm/    :-:hoNm:    
echo      /MMMd/.hmdM/ :+.mdds+//. .smy    :: yhoMN+   
echo    .omMMh-  yhMd .+ ::+Ndy/+:  `.-    :- .msyMMo  
echo   `dmNNs.  `hhMh /: ``syNdh+/:        o.  sNomMMo 
echo   +NmNs.   `dhMN``+:-.o`ddho+//      .s   :MhsMM: 
echo  +MMMy.    .dmmMy` .-/yys/o+-.:-o+//oso.  oMN+NMs 
echo .NMMm-     `dMhNMy.   `h//-o--:+dmNNNmdd:`mds:yMN:
echo sMMM+`      hNh+syho:-+h/o+/s+/ymMMMMMMh+s+`  /MNo
echo mMMd.       so`   `-+ss+od:``+s+ydmmNMmh+-    :My`
echo MMMo`       -.   `-/s:.-s+-`+ss: ``./my+`     :M+ 
echo NMM/        `.`-odmho os/// ho`     `/-`      +M- 
echo hMN-        `+hNMmhsy.ms:+o -d.    `.`        yN` 
echo +MN-       /dMNmdoy/h`mh.-+./m.   ``          my  
echo `NM:      oMMmh+` sNo+md+: `/:`              :M-  
echo  +Ms     .MMdh.   `hhdoo:                    hh   
echo   hd-    .MMys  ``:dmy/:                    :m.   
echo   `do     yMmd::oyo:d-                     `d:    
echo    .h/     /hNNmd-`yM. ``.-///:`          `y:     
echo     `s:      .hmyhhmmyso+/-``syd.        `o.      
echo      /-   `:my`  .::`      /yNm`       `-        
echo       `   /yy.            .oso`          
@echo off
title Dragon Cleanup  
:menu
echo --------------------------------------------------------------------------------
echo Dragon utility
echo --------------------------------------------------------------------------------
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Update windows
echo [6] Internet Reset
echo [7] Stop\Start Print spooler
echo [8] Check Disk
echo [9] Computer Info
echo [10] Computer Product key
echo [11] Windows 10 updater fix
echo [12] Ping 
echo [13] Computers in a specified workgroup
echo [14] Computers Network drives
echo [15] Network shares in a specified workgroup pc
echo [16] Rearm computer
echo [17] Activate defualt admin account
echo [18] Exit
echo.
set /p op=Run: 
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto 5
if %op%==6 goto 6
if %op%==7 goto 7
if %op%==8 goto 8
if %op%==9 goto 9
if %op%==10 goto 10
if %op%==11 goto 11
if %op%==12 goto 12
if %op%==13 goto 13
if %op%==14 goto 14
if %op%==15 goto 15
if %op%==16 goto 16
if %op%==17 goto 17
if %op%==18 goto exit

goto error
:1
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:2
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
::Internet Explorer
REM Cookies:
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
::Firefox
taskkill /im "firefox.exe"
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"
for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
::Google Chrome
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:3
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Cleaning Select What you want to Remove
%windir%\system32\cleanmgr.exe
echo  Done 
cls
goto menu
:4
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Choose drive you want to Defragment
%windir%\system32\dfrgui.exe
goto menu
:5
echo --------------------------------------------------------------------------------
echo Update Windows
echo --------------------------------------------------------------------------------
echo. 
echo Updating Windows
cd %windir%\system32\
wuapp.exe
wuauclt.exe /updatenow
echo Downloading and Installing updates now
timeout 9000
echo Please Restart Windows When Ready 
timeout 10
cd C:\Windows\System32
echo.
pause
goto menu
:6
echo --------------------------------------------------------------------------------
echo Internet Reset
echo --------------------------------------------------------------------------------
echo.
echo Reseting now
IPCONFIG /release
IPCONFIG /renew
IPCONFIG /flushdns
IPCONFIG /registerdns
netsh winsock reset catalog
netsh int ip reset
echo Reset Done Please Restart
echo.
pause
goto menu
:7
echo --------------------------------------------------------------------------------
echo Print spooler
echo --------------------------------------------------------------------------------
echo.
echo Reseting now
cd c:\windows\system32
NET stop spooler
NET start spooler
echo  Done 
echo.
cls
goto menu
:8
echo --------------------------------------------------------------------------------
echo Check Disk
echo --------------------------------------------------------------------------------
echo.
echo y |chkdsk.exe C: /f
shutdown.exe /r /t 30
echo.
goto menu
:9
echo --------------------------------------------------------------------------------
echo Computer Info
echo --------------------------------------------------------------------------------
echo.
echo Checking computer
@echo off
if %os%==Windows_NT goto WINNT
goto NOCON

:WINNT
echo .Using a Windows NT based system
echo ..%computername%

REM set variables
set system=
set manufacturer=
set model=
set serialnumber=
set osname=
set sp=
setlocal ENABLEDELAYEDEXPANSION
set "volume=C:"
set totalMem=
set availableMem=
set usedMem=

echo Getting data [Computer: %computername%]...
echo Please Wait....

REM Get Computer Name
FOR /F "tokens=2 delims='='" %%A in ('wmic OS Get csname /value') do SET system=%%A

REM Get Computer Manufacturer
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Manufacturer /value') do SET manufacturer=%%A

REM Get Computer Model
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Model /value') do SET model=%%A

REM Get Computer Serial Number
FOR /F "tokens=2 delims='='" %%A in ('wmic Bios Get SerialNumber /value') do SET serialnumber=%%A

REM Get Computer OS
FOR /F "tokens=2 delims='='" %%A in ('wmic os get Name /value') do SET osname=%%A
FOR /F "tokens=1 delims='|'" %%A in ("%osname%") do SET osname=%%A

REM Get Computer OS SP
FOR /F "tokens=2 delims='='" %%A in ('wmic os get ServicePackMajorVersion /value') do SET sp=%%A

REM Get Memory
FOR /F "tokens=4" %%a in ('systeminfo ^| findstr Physical') do if defined totalMem (set availableMem=%%a) else (set totalMem=%%a)
set totalMem=%totalMem:,=%
set availableMem=%availableMem:,=%
set /a usedMem=totalMem-availableMem

FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree %volume%') DO (
    SET "diskfree=!disktotal!"
    SET "disktotal=!diskavail!"
    SET "diskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%disktotal% %diskavail%") DO SET "disktotal=%%i"& SET "diskavail=%%j"

echo done!

echo --------------------------------------------
echo System Name: %system%
echo Manufacturer: %manufacturer%
echo Model: %model%
echo Serial Number: %serialnumber%
echo Operating System: %osname%
echo C:\ Total: %disktotal:~0,-9% GB
echo C:\ Avail: %diskavail:~0,-9% GB
echo Total Memory: %totalMem%
echo Used  Memory: %usedMem%
echo CPU:
wmic cpu get name
echo Service Pack: %sp%
echo --------------------------------------------
getmac
ipconfig | findstr IPv4 
ipconfig | findstr IPv6
REM Generate file
SET file="%~dp0%computername%.txt"
echo -------------------------------------------- >> %file%
echo Details For: %system% >> %file%
echo Manufacturer: %manufacturer% >> %file%
echo Model: %model% >> %file%
echo Serial Number: %serialnumber% >> %file%
echo Operating System: %osname% >> %file%
echo C:\ Total: %disktotal:~0,-9% GB >> %file%
echo C:\ Avail: %diskavail:~0,-9% GB >> %file%
echo Total Memory: %totalMem% >> %file%
echo Used  Memory: %usedMem% >> %file%
echo Computer Processor: %processor_architecture% >> %file%
echo Service Pack: %sp% >> %file%
ipconfig /all | find "Physical Address" >> %file%
getmac /FO list | find "Physical Address" >> %file%
ipconfig | find "IPv4 Address" >> %file%
ipconfig | find "Link-local IPv6 Address" >> %file%
echo -------------------------------------------- >> %file%

goto END

:NOCON
echo Error...Invalid Operating System...
echo Error...No actions were made...
goto END

:END
goto menu
:10
echo --------------------------------------------------------------------------------
echo Computer Product Key
echo --------------------------------------------------------------------------------
echo.
echo Getting info
%windir%\system32\cmd.exe /c "slmgr.vbs /dlv"
goto menu
:11
echo --------------------------------------------------------------------------------
echo Windows 10 updater Fix
echo.
echo Please hit Y when asked.
echo --------------------------------------------------------------------------------
echo.
net stop wuauserv
net stop bits
cd  C:\Windows\SoftwareDistribution
del *.*
net start bits
net start wuauserv
echo.
pause
goto menu
:12
echo --------------------------------------------------------------------------------
echo Pings what IP you enter
echo --------------------------------------------------------------------------------
echo.
set /p target=
ping %target%
echo.
echo.
pause
goto menu
:13
echo --------------------------------------------------------------------------------
echo Computers in a specified workgroup
echo.
echo Please enter workgroup name
echo --------------------------------------------------------------------------------
echo.
SET /P workgroup=
net view /domain:%workgroup%
pause
goto menu
:14
echo --------------------------------------------------------------------------------
echo Computers Network drives
echo --------------------------------------------------------------------------------
echo.
net share
pause
goto menu
:15
echo --------------------------------------------------------------------------------
echo Computers Network drives in specified workgroup pc
echo.
echo If there is no shares it will fail, or if it can not be detected.
echo --------------------------------------------------------------------------------
echo.
SET /P pc=
net view \\%pc%
pause
goto menu
cls
:16
echo --------------------------------------------------------------------------------
echo Rearm computer
echo --------------------------------------------------------------------------------
echo.
slmgr /rearm
cls
goto menu
echo --------------------------------------------------------------------------------
echo Activate Defualt Admin Account
echo --------------------------------------------------------------------------------
echo.
net user administrator /active:yes
net user administrator password
:exit
ping 127.0.0.1 >nul
exit
