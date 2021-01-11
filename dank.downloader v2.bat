@echo off
echo "=================================================================================================="
echo "  _____              _      _____                      _                 _                  ___   "
echo " |  __ \            | |    |  __ \                    | |               | |                |__ \  "
echo " | |  | | __ _ _ __ | | __ | |  | | _____      ___ __ | | ___   __ _  __| | ___ _ __  __   __ ) | "
echo " | |  | |/ _` | '_ \| |/ / | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` |/ _ \ '__| \ \ / // /  "
echo " | |__| | (_| | | | |   < _| |__| | (_) \ V  V /| | | | | (_) | (_| | (_| |  __/ |     \ V // /_  "
echo " |_____/ \__,_|_| |_|_|\_(_)_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|\___|_|      \_/|____| "
echo "                                                                                                  "
echo "=================================================================================================="
echo.

echo Helps you download essential Windows 10, 64-Bit Programs :P ( well atleast for me )
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
echo.

echo "==========< Essential Windows Stuff >=========="
echo.
set /P WA=Download Win10 Activator [Y/ENTER]: 
set /P MCT=Download Win10 MediaCreationTool [Y/ENTER]: 
set /P SS=Open Win10 Sophia-Script [ Debloater ] [Y/ENTER]: 
set /P NV=Open Nvidia GeForce Experience [Y/ENTER]: 
set /P RT=Open Realtek HD Audio Driver [Y/ENTER]: 
echo.
echo "==========< Windows Optimization Software >=========="
echo.
set /P ASC=Open IOBIT Advanced System Care [Y/ENTER]: 
set /P DB=Open IOBIT Driver Booster [Y/ENTER]: 
set /P SD=Open IOBIT Smart Defrag [Y/ENTER]: 
echo.
echo "==========< Software >=========="
echo.
set /P WR=Download WinRAR 6 + Key [Y/ENTER]: 
set /P GC=Download Google Chrome [Y/ENTER]: 
set /P FF=Download Firefox [Y/ENTER]: 
set /P TR=Open Tor [Y/ENTER]: 
set /P ST=Download Steam [Y/ENTER]: 
set /P MC=Download Minecraft [Y/ENTER]: 
set /P TV=Download TeamViewer [Y/ENTER]: 
set /P SB=Open Sandboxie [Y/ENTER]: 
echo.

echo "==========< Downloading >=========="
echo.
if /I [%WA%] EQU [Y] (
   echo Downloading Win10 Activator...
   powershell.exe -Command "Start-Process https://www.mediafire.com/file/2sdp6xh7ijahhd4/Win10-Activator.zip/file"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%MCT%] EQU [Y] (
   echo Downloading Win10 MediaCreationTool...
   powershell.exe -Command "Start-Process https://go.microsoft.com/fwlink/?LinkId=691209"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%SS%] EQU [Y] (
   echo Opening Github Sophia-Script...
   powershell.exe -Command "Start-Process https://github.com/farag2/Windows-10-Sophia-Script/releases"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%NV%] EQU [Y] (
   echo Opening Nvidia GeForce Experience...
   powershell.exe -Command "Start-Process https://www.nvidia.com/en-us/geforce/drivers/"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%RT%] EQU [Y] (
   echo Opening Realtek HD Audio Driver...
   powershell.exe -Command "Start-Process https://realtek-download.com/download-hd/"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%ASC%] EQU [Y] (
   echo Open IOBIT Advanced System Care...
   powershell.exe -Command "Start-Process https://www.iobit.com/downloadcenter.php?product=advanced-systemcare-free"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%DB%] EQU [Y] (
   echo Opening IOBIT Driver Booster...
   powershell.exe -Command "Start-Process https://www.iobit.com/downloadcenter.php?product=driver-booster-free"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%SD%] EQU [Y] (
   echo Opening IOBIT Smart Defrag...
   powershell.exe -Command "Start-Process https://www.majorgeeks.com/files/details/iobit_smartdefrag.html"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%WR%] EQU [Y] (
   echo Downloading WinRAR...
   powershell.exe -Command "Start-Process https://www.mediafire.com/file/picglyo9f87xvgo/WinRAR_6.zip/file"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%GC%] EQU [Y] (
   echo Downloading Chrome...
   powershell.exe -Command "Start-Process http://dl.google.com/chrome/install/375.126/chrome_installer.exe"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%FF%] EQU [Y] (
   echo Downloading Firefox...
   powershell.exe -Command "Start-Process https://download.mozilla.org/?product=firefox-stub"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%TR%] EQU [Y] (
   echo Opening Tor Website...
   powershell.exe -Command "Start-Process https://www.torproject.org/download/"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%ST%] EQU [Y] (
   echo Downloading Steam...
   powershell.exe -Command "Start-Process https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%MC%] EQU [Y] (
   echo Downloading Minecraft...
   powershell.exe -Command "Start-Process https://launcher.mojang.com/download/MinecraftInstaller.msi"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%TV%] EQU [Y] (
   echo Downloading TeamViewer...
   powershell.exe -Command "Start-Process https://download.teamviewer.com/download/TeamViewer_Setup.exe"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%SB%] EQU [Y] (
   echo Opening Sandboxie...
   powershell.exe -Command "Start-Process https://github.com/sandboxie-plus/Sandboxie/releases"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

echo "==========< Downloaded! >=========="
echo.
echo Downloaded Files located in your Downloads Folder xD
echo sir.dank was here x)
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
color 09
color 0b
color 0c
color 0d
color 0e
color 0a
echo.
echo "==========< 69 >=========="
powershell.exe -Command "Start-Process https://linktr.ee/sir.dankenstein"
echo.
pause
