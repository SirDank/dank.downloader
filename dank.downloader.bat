@echo off
echo "======================================================================================"
echo "  _____              _      _____                      _                 _            "
echo " |  __ \            | |    |  __ \                    | |               | |           "
echo " | |  | | __ _ _ __ | | __ | |  | | _____      ___ __ | | ___   __ _  __| | ___ _ __  "
echo " | |  | |/ _` | '_ \| |/ / | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` |/ _ \ '__| "
echo " | |__| | (_| | | | |   < _| |__| | (_) \ V  V /| | | | | (_) | (_| | (_| |  __/ |    "
echo " |_____/ \__,_|_| |_|_|\_(_)_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|\___|_|    "
echo "                                                                                      "
echo "======================================================================================"
echo.

echo Helps you download essential Windows 10, 64-Bit Programs :P ( well atleast for me )
timeout /t 2 /nobreak > NUL
md C:\DankDownloads
set directory=C:\DankDownloads\

echo.
set /P WA=Download Win10 Activator [Y/N]: 
set /P MCT=Download Win10 MediaCreationTool [Y/N]: 
set /P SS=Open Win10 Sophia-Script [ Debloater ] [Y/N]: 
set /P NV=Open Nvidia GeForce Experience [Y/N]: 
set /P RT=Open Realtek HD Audio Driver [Y/N]: 
set /P ASC=Download IOBIT Advanced System Care [Y/N]: 
set /P DB=Open IOBIT Driver Booster [Y/N]: 
set /P SD=Open IOBIT Smart Defrag [Y/N]: 
set /P WR=Download WinRAR 6 + Key [Y/N]: 
set /P GC=Download Google Chrome [Y/N]: 
set /P FF=Download Firefox [Y/N]: 
set /P TR=Open Tor [Y/N]: 
set /P ST=Download Steam [Y/N]: 
set /P MC=Download Minecraft [Y/N]: 
echo.

set downloadurl=https://download1510.mediafire.com/nsvrpmq8jmng/6hthkteolw7frhw/start.txt
set downloadpath=C:\DankDownloads\start.txt
echo Downloading temp file start.txt - deleted upon completion
powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description start.txt -TransferType Download"
timeout /t 1 /nobreak > NUL
echo Done!
echo.

if /I [%WA%] EQU [Y] (
   set downloadurl=https://download944.mediafire.com/scfdlkiaqaig/2sdp6xh7ijahhd4/Win10-Activator.zip
   set downloadpath=C:\DankDownloads\Win10-Activator.zip
   echo Downloading Win10 Activator...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description Win10-Activator -TransferType Download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%MCT%] EQU [Y] (
   echo Downloading Win10 MediaCreationTool...
   powershell.exe -Command "Start-Process https://go.microsoft.com/fwlink/?LinkId=691209"
   timeout /t 1 /nobreak > NUL
   echo Done! - Located in your downloads folder!
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
   set downloadurl=https://www.iobit.com/downloadcenter.php?product=advanced-systemcare-free
   set downloadpath=C:\DankDownloads\advanced-systemcare-setup.exe
   echo Downloading IOBIT Advanced System Care...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description Advanced-System-Care -TransferType Download"
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
   set downloadurl=https://download1327.mediafire.com/l9vnhrf6q2eg/picglyo9f87xvgo/WinRAR+6.zip
   set downloadpath=C:\DankDownloads\WinRAR 6.zip
   echo Downloading WinRAR...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description WinRAR -TransferType Download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%GC%] EQU [Y] (
   set downloadurl=http://dl.google.com/chrome/install/375.126/chrome_installer.exe
   set downloadpath=C:\DankDownloads\chrome_installer.exe
   echo Downloading Chrome...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description GoogleChrome -TransferType Download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%FF%] EQU [Y] (
   set downloadurl=https://download.mozilla.org/?product=firefox-stub
   set downloadpath=C:\DankDownloads\Firefox Installer.exe
   echo Downloading Firefox...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description Firefox -TransferType Download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%TR%] EQU [Y] (
   echo Opening Tor Website...
   powershell.exe -Command "Start-Process https://www.torproject.org/download/"
   echo Done!
   echo.
)

if /I [%ST%] EQU [Y] (
   set downloadurl=https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
   set downloadpath=C:\DankDownloads\SteamSetup.exe
   echo Downloading Steam...
   powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description Steam -TransferType Download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%MC%] EQU [Y] (
   echo Downloading Minecraft...
   powershell.exe -Command "Start-Process https://launcher.mojang.com/download/MinecraftInstaller.msi"
   timeout /t 1 /nobreak > NUL
   echo Done! - Located in your downloads folder!
   echo.
)

set downloadurl=https://download1510.mediafire.com/1lhvtfx52ydg/j1uh05fi27zzy9a/end.txt
set downloadpath=C:\DankDownloads\end.txt
echo Downloading temp file end.txt - deleted upon completion
powershell.exe -Command "Start-BitsTransfer -Source '%downloadurl%' -Destination '%downloadpath%' -Description start.txt -TransferType Download"
timeout /t 1 /nobreak > NUL
echo Done!

echo Cleaning Temp Files...
del C:\DankDownloads\start.txt
del C:\DankDownloads\end.txt
echo Done!
echo.

echo Files Downloaded At C:\DankDownloads or in your downloads folder!
echo sir.dank was here x)
timeout /t 3 /nobreak > NUL
echo.
pause
