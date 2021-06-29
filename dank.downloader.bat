@echo off
echo "========================================================================================="
echo "   ___            __     ___                  __             __               ___   ___  "
echo "  / _ \___ ____  / /__  / _ \___ _    _____  / /__  ___ ____/ /__ ____  _  __|_  | <  /  "
echo " / // / _ `/ _ \/  '_/ / // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/ | |/ / __/_ / /   "
echo "/____/\_,_/_//_/_/\_(_)____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/    |___/____(_)_/    "
echo "                                                                                         "
echo "========================================================================================="
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
set /P WDB=Open Github Windows10Debloater [Y/ENTER]: 
set /P NV=Open NVCleanstall { Nvidia GeForce Experience Alternative } [Y/ENTER]: 
set /P RT=Open Realtek HD Audio Driver [Y/ENTER]: 
echo.
echo "==========< Windows Optimization Software >=========="
echo.
set /P ASC=Download IOBIT Advanced System Care [Y/ENTER]: 
set /P DB=Download IOBIT Driver Booster [Y/ENTER]: 
set /P SD=Download IOBIT Smart Defrag [Y/ENTER]: 
echo.
echo "==========< Software >=========="
echo.
set /P WR=Open WinRAR 6 + Key [Y/ENTER]: 
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

if /I [%WDB%] EQU [Y] (
   echo Opening Github Windows10Debloater...
   powershell.exe -Command "Start-Process https://github.com/Sycnex/Windows10Debloater"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%NV%] EQU [Y] (
   echo Opening NVCleanstall...
   powershell.exe -Command "Start-Process https://www.techpowerup.com/download/techpowerup-nvcleanstall/"
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
   echo Downloading IOBIT Advanced System Care...
   powershell.exe -Command "Start-Process https://www.iobit.com/downloadcenter.php?product=advanced-systemcare-free"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%DB%] EQU [Y] (
   echo Downloading IOBIT Driver Booster...
   powershell.exe -Command "Start-Process https://en.softonic.com/download/driver-booster-free/windows/redirect-post-download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%SD%] EQU [Y] (
   echo Downloading IOBIT Smart Defrag...
   powershell.exe -Command "Start-Process https://www.majorgeeks.com/mg/getmirror/iobit_smartdefrag,1.html"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%WR%] EQU [Y] (
   echo Opening WinRAR...
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
echo.
echo "               /-/                \-\               "
echo "             -- /                  \ --             "
echo "            /  /                    \  \            "
echo "        \  /  --\                  \--  \  /        "
echo "        |\-      --   |---\      --      -/|        "
echo "        \ -      /-  /     ----  \       - /        "
echo "        --      -   /         |   -      --         "
echo "         -      /   | +    +  /   \      -          "
echo "       -/      |   /-        |     |      \-        "
echo "      /        /     \-      /  /  \        \       "
echo "     /        /   -\   \    | /-    \        \      "
echo "   -/        /      --\      /       \        \-    "
echo "  /         |          --  /-         |         \   "
echo "  |         /           | -           \         |   "
echo "  \      --|            | |            |--      /   "
echo "   | ---/               | |               \--- |    "
echo "   |/                   | |                   \|    "
echo "   ________.__      ________                 __     "
echo "  /   _____|________\______ \ _____    ____ |  | __ "
echo "  \_____  \|  \_  __ |    |  \\__  \  /    \|  |/ / "
echo "  /        |  ||  | \|    `   \/ __ \|   |  |    <  "
echo " /_______  |__||__| /_______  (____  |___|  |__|_ \ "
echo "         \/                 \/     \/     \/     \/ "
echo.
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
powershell.exe -Command "Start-Process https://allmylinks.com/sir-dankenstein"
echo.
pause
