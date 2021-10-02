@echo off
echo "========================================================================================="
echo "     ___            __     ___                  __             __          ___    ___    "
echo "    / _ \___ ____  / /__  / _ \___ _    _____  / /__  ___ ____/ /__ ____  |_  |  |_  |   "
echo "   / // / _ `/ _ \/  '_/ / // / _ \ |/|/ / _ \/ / _ \/ _ `/ _  / -_) __/ / __/_ / __/    "
echo "  /____/\_,_/_//_/_/\_(_)____/\___/__,__/_//_/_/\___/\_,_/\_,_/\__/_/   /____(_)____/    "
echo "                                                                                         "
echo "========================================================================================="
echo.

color 09
color 0a
color 0b
color 0c
color 0e
color 0d
color 09
color 0a
color 0b
color 0c
color 0e
color 0d
color 09
color 0a
color 0b
color 0c
color 0e
color 0d

echo "==========< Essential Windows Stuff >=========="
echo.
set /P MAS=Open Microsoft Activation Scripts [Y/ENTER]: 
set /P MCT=Download Win10 MediaCreationTool [Y/ENTER]: 
set /P WDB=Open Github Win10 Debloat Scripts [Y/ENTER]: 
set /P NV=Open NVCleanstall { Nvidia GeForce Experience Alternative } [Y/ENTER]: 
set /P RT=Open Realtek HD Audio Driver [Y/ENTER]: 
echo.
echo "==========< Windows Optimization Software >=========="
echo.
set /P ASC=Download IOBIT Advanced System Care [Y/ENTER]: 
set /P DB=Download IOBIT Driver Booster [Y/ENTER]: 
set /P SD=Download IOBIT Smart Defrag [Y/ENTER]: 
set /P UN=Download IOBIT Uninstaller [Y/ENTER]: 
set /P SU=Download IOBIT Software Updater [Y/ENTER]: 
echo.
echo "==========< Software >=========="
echo.
set /P WR=Open WinRAR 6 + Key [Y/ENTER]: 
set /P NP=Open Notepad++ [Y/ENTER]: 
set /P GC=Download Google Chrome [Y/ENTER]: 
set /P FF=Download Firefox [Y/ENTER]: 
set /P TR=Open Tor [Y/ENTER]: 
set /P ST=Download Steam [Y/ENTER]: 
set /P DISC=Download Discord [Y/ENTER]: 
set /P MC=Download Minecraft [Y/ENTER]: 
set /P BN=Download Battle.net [Y/ENTER]: 
set /P TV=Download TeamViewer [Y/ENTER]: 
set /P MS=Open MegaSync [Y/ENTER]: 
set /P SB=Open Sandboxie [Y/ENTER]: 
set /P VB=Open Virtualbox [Y/ENTER]: 
set /P QB=Download QBittorrent [Y/ENTER]: 
set /P VSC=Download Visual Studio Code [Y/ENTER]: 
set /P GH=Download Github Desktop [Y/ENTER]: 
set /P PY=Open Python [Y/ENTER]: 
set /P JV=Open Java [Y/ENTER]: 
echo.

echo "==========< Starting [ Essential Windows Stuff ] >=========="
echo.

if /I [%MAS%] EQU [Y] (
   echo Downloading Win10 Activator...
   powershell.exe -Command "Start-Process https://github.com/massgravel/Microsoft-Activation-Scripts/releases"
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
   echo Opening Github Windows10 Debloat Scripts...
   powershell.exe -Command "Start-Process https://github.com/search?o=desc&q=debloat&s=stars&type=Repositories"
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

echo "==========< Starting [ Windows Optimization Software ] >=========="
echo.

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

if /I [%UN%] EQU [Y] (
   echo Downloading IOBIT Uninstaller...
   powershell.exe -Command "Start-Process https://www.iobit.com/downloadcenter.php?product=advanced-uninstaller"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%SU%] EQU [Y] (
   echo Downloading IOBIT Software Updater...
   powershell.exe -Command "Start-Process https://www.iobit.com/downloadcenter.php?product=software-updater"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

echo "==========< Starting [ Software ] >=========="
echo.

if /I [%WR%] EQU [Y] (
   echo Opening WinRAR...
   powershell.exe -Command "Start-Process https://mega.nz/file/RHoHSCzR#rBA_3nbaFCFHbJZFMTol8zHGIkqqO-IjhyeoEU-UW1A"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%NP%] EQU [Y] (
   echo Opening Notepad++...
   powershell.exe -Command "Start-Process https://notepad-plus-plus.org/downloads/"
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
   echo Opening Tor...
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

if /I [%DISC%] EQU [Y] (
   echo Downloading Discord...
   powershell.exe -Command "Start-Process https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86"
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

if /I [%BN%] EQU [Y] (
   echo Downloading Battle.net...
   powershell.exe -Command "Start-Process https://www.blizzard.com/download/confirmation?platform=windows&locale=en_US&product=bnetdesk"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%TV%] EQU [Y] (
   echo Downloading TeamViewer...
   powershell.exe -Command "Start-Process https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%MS%] EQU [Y] (
   echo Opening MegaSync...
   powershell.exe -Command "Start-Process https://mega.nz/sync"
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

if /I [%VB%] EQU [Y] (
   echo Opening Virtualbox...
   powershell.exe -Command "Start-Process https://www.virtualbox.org/wiki/Downloads"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%QB%] EQU [Y] (
   echo Downloading QBittorrent...
   powershell.exe -Command "Start-Process https://sourceforge.net/projects/qbittorrent/files/latest/download"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%VSC%] EQU [Y] (
   echo Downloading Visual Studio Code...
   powershell.exe -Command "Start-Process https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%GH%] EQU [Y] (
   echo Downloading Github Desktop...
   powershell.exe -Command "Start-Process https://central.github.com/deployments/desktop/desktop/latest/win32"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%PY%] EQU [Y] (
   echo Opening Python...
   powershell.exe -Command "Start-Process https://www.python.org/downloads/"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

if /I [%JV%] EQU [Y] (
   echo Opening Java...
   powershell.exe -Command "Start-Process https://www.java.com/en/download/"
   timeout /t 1 /nobreak > NUL
   echo Done!
   echo.
)

echo "==========< Complete >=========="
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
color 0a
color 0b
color 0c
color 0e
color 0d
color 09
color 0a
color 0b
color 0c
color 0e
color 0d
color 09
color 0a
color 0b
color 0c
color 0e
color 0d
echo "==========< 69 >=========="
powershell.exe -Command "Start-Process https://allmylinks.com/sir-dankenstein"
echo.
pause
