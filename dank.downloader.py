import os
import sys
import time
import random
import requests
import keyboard
import webbrowser as web
import concurrent.futures
from packaging import version
from colorama import init, Fore, Style
from pynput.keyboard import Key, Listener
keyboard.press('f11')

try:
    #filepath = os.path.dirname(__file__) # as .py
    filepath = os.path.dirname(sys.argv[0]) # as .exe
    os.chdir(filepath)
except:
    pass

# colors

init(autoreset=True)
red = Fore.RED + Style.BRIGHT
green = Fore.GREEN + Style.BRIGHT
yellow = Fore.YELLOW + Style.BRIGHT
blue = Fore.BLUE + Style.BRIGHT
magenta = Fore.MAGENTA + Style.BRIGHT
cyan = Fore.CYAN + Style.BRIGHT
white = Fore.WHITE + Style.BRIGHT

banner_ascii = '''
 _____              _       _____                    _                 _                ________
(____ \            | |     (____ \                  | |               | |              (_______/
 _   \ \ ____ ____ | |  _   _   \ \ ___  _ _ _ ____ | | ___   ____  _ | | ____  ____      ____  
| |   | / _  |  _ \| | / ) | |   | / _ \| | | |  _ \| |/ _ \ / _  |/ || |/ _  )/ ___)    (___ \ 
| |__/ ( ( | | | | | |< ( _| |__/ / |_| | | | | | | | | |_| ( ( | ( (_| ( (/ /| |       _____) )
|_____/ \_||_|_| |_|_| \_|_)_____/ \___/ \____|_| |_|_|\___/ \_||_|\____|\____)_|      (______/ 
'''

# randomized banner color

bad_colors = ['BLACK', 'WHITE', 'LIGHTBLACK_EX', 'LIGHTWHITE_EX', 'RESET']
codes = vars(Fore)
colors = [codes[color] for color in codes if color not in bad_colors]
colored_chars = [random.choice(colors) + char for char in banner_ascii]
banner_colored = ''.join(colored_chars).splitlines()

# constants

def aligner(to_print):

    width = os.get_terminal_size().columns
    no_colors = to_print.replace(f"{white}","").replace(f"{magenta}","").replace(f"{red}","")
    aligned = no_colors.center(width).replace(f"{no_colors}",f"{to_print}")
    return aligned

def banner():

    width = os.get_terminal_size().columns
    banner_lines = banner_ascii.splitlines()
    for i in range(len(banner_lines)):
        banner_lines[i] = banner_lines[i].center(width).replace(banner_lines[i],banner_colored[i])
    banner_aligned = ''.join(banner_lines)
    return banner_aligned

def controls(): # ↑ ↓

    to_print = f"{white}/\ {magenta}and {white}\/ {magenta}arrow keys to navigate{white}, [{magenta}space{white}] {magenta}to select{white}, [{magenta}backspace{white}] {magenta}to go back and {white}[{magenta}esc{white}] {magenta}to exit"
    return aligner(to_print)

def selected():
    
    to_print = f"{magenta}Selected{white}: "
    for software in selected_software:
        if software != "":
            to_print += f"{magenta}{software}{white}, "
    return aligner(to_print)

# categories

def category_printer():

    to_print = f"\n\n{banner()}\n\n\n\n{controls()}\n\n\n\n{selected()}\n\n"
    os.system('cls')
    sys.stdout.write(to_print)

    for i in range(selector_max):

        to_print = f"{white}{categories[i]}"
        if i == selector:
            to_print = f"{magenta}> {to_print} {magenta}<"
        print(aligner(to_print) + "\n\n")

# softwares

def software_printer():

    to_print = f"\n\n{banner()}\n\n\n\n{controls()}\n\n\n\n{selected()}\n\n"
    os.system('cls')
    sys.stdout.write(to_print)

    global software
    global selector_max

    if current_category == "Windows Essentials":
        software = ["Microsoft Activation Scripts", "Win10 MediaCreationTool", "Github Win10 Debloat Scripts", "NVCleanstall { Nvidia GeForce Experience Alternative }", "Realtek HD Audio Driver"]

    elif current_category == "Windows Optimization":
        software = ["IOBIT Advanced System Care", "IOBIT Driver Booster", "IOBIT Uninstaller", "IOBIT Software Updater"]
    
    elif current_category == "Software":
        software = [
            "Avast",
            "Battle.net", 
            "Discord", 
            "Figma", 
            "Firefox", 
            "Github Desktop", 
            "Google Chrome", 
            "Java 8", 
            "MegaSync", 
            "MinGW", 
            "Minecraft", 
            "Netflix", 
            "Notepad++", 
            "Python", 
            "QBittorrent", 
            "Sandboxie", 
            "Spotify", 
            "Steam", 
            "TeamViewer", 
            "Telegram", 
            "Tor", 
            "VNC Viewer", 
            "Virtualbox", 
            "Visual Studio Code", 
            "Vmware", 
            "WinRAR 6 + Key", 
            "WinSCP", 
        ]

    elif current_category == "Dankware":
        software = ["dank.resourcepack", "dank.serverbuilder", "spiral-knights-modpack"]

    selector_max = len(software)

    for i in range(selector_max):

        to_print = f"{white}{software[i]}"
        if f"{software[i]}" in selected_software:
            to_print = f"{magenta}[ {to_print} {magenta}]"
        if i == selector:
            to_print = f"{magenta}> {to_print} {magenta}<"
        
        if not current_category == "Software":
            sys.stdout.write(aligner(to_print) + "\n\n")
        else:
            sys.stdout.write(aligner(to_print))

# prepare lists to_download_urls and to_download_filesnames

def prepare_downloads(software):

    if software == "Avast":
        to_download_urls.append("https://www.avast.com/en-in/download-thank-you.php?product=FAV-ONLINE&locale=en-in&direct=1")
        to_download_filenames.append("avast_free_antivirus_setup_online.exe")

    elif software == "Microsoft Activation Scripts":
        to_download_urls.append("https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS_1.4/All-In-One-Version/MAS_1.4_AIO_CRC32_9A7B5B05.cmd")
        to_download_filenames.append("MAS_1.4_AIO_CRC32_9A7B5B05.cmd")

    elif software == "Win10 MediaCreationTool":
        to_download_urls.append("https://go.microsoft.com/fwlink/?LinkId=691209")
        to_download_filenames.append("MediaCreationTool.exe")

    elif software == "Github Win10 Debloat Scripts":
        to_open_urls.append("https://github.com/search?o=desc&q=debloat&s=stars&type=Repositories")

    elif software == "NVCleanstall { Nvidia GeForce Experience Alternative }": # CHANGES
        to_open_urls.append("https://www.techpowerup.com/download/techpowerup-nvcleanstall/")

    elif software == "Realtek HD Audio Driver":
        to_download_urls.append("https://realtek-download.com/wp-content/uploads/2017/08/0009-64bit_Win7_Win8_Win81_Win10_R282.exe")
        to_download_filenames.append("0009-64bit_Win7_Win8_Win81_Win10_R282.exe")

    elif software == "IOBIT Advanced System Care":
        to_download_urls.append("https://cdn.iobit.com/dl/advanced-systemcare-setup.exe")
        to_download_filenames.append("advanced-systemcare-setup.exe")

    elif software == "IOBIT Driver Booster":
        to_download_urls.append("https://cdn.iobit.com/dl/driver_booster_setup.exe")
        to_download_filenames.append("driver_booster_setup.exe")

    elif software == "IOBIT Uninstaller":
        to_download_urls.append("https://cdn.iobit.com/dl/iobituninstaller.exe")
        to_download_filenames.append("iobituninstaller.exe")

    elif software == "IOBIT Software Updater":
        to_download_urls.append("https://cdn.iobit.com/dl/iobit-software-updater-setup.exe")
        to_download_filenames.append("iobit-software-updater-setup.exe")

    elif software == "Battle.net": # downloads folder
        to_open_urls.append("https://us.battle.net/download/getInstaller?os=win&installer=Battle.net-Setup.exe")

    elif software == "Discord":
        to_download_urls.append("https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86")
        to_download_filenames.append("DiscordSetup.exe")

    elif software == "Figma":
        to_download_urls.append("https://desktop.figma.com/win/FigmaSetup.exe")
        to_download_filenames.append("FigmaSetup.exe")

    elif software == "Firefox":
        to_download_urls.append("https://download.mozilla.org/?product=firefox-stub")
        to_download_filenames.append("Firefox Installer.exe")

    elif software == "Github Desktop":
        to_download_urls.append("https://central.github.com/deployments/desktop/desktop/latest/win32")
        to_download_filenames.append("GithubDesktopSetup-x64.exe")

    elif software == "Google Chrome":
        to_download_urls.append("http://dl.google.com/chrome/install/375.126/chrome_installer.exe")
        to_download_filenames.append("ChromeSetup.exe")

    elif software == "Java 8":

        headers = {
            "Host": "api.adoptium.net",
            "Connection": "keep-alive",
            "Cache-Control": "max-age=0",
            "Upgrade-Insecure-Requests": "1",
            "User-Agent": random_ua,
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
            "Sec-Fetch-Site": "none",
            "Sec-Fetch-Mode": "navigate",
            "Sec-Fetch-User": "?1",
            "Sec-Fetch-Dest": "document",
            "Accept-Encoding": "gzip, deflate, br",
            "Accept-Language": "en-US,en;q=0.9",
            "X-Requested-With": "XMLHttpRequest"
        }

        response = requests.get("https://api.adoptium.net/v3/assets/feature_releases/8/ga?architecture=x64&heap_size=normal&image_type=jdk&jvm_impl=hotspot&os=windows&page=0&page_size=10&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse", headers=headers).json()

        installer_url = str(response[0]["binaries"][0]["installer"]["link"])
        installer_filename = installer_url.split("/")[-1]

        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "MegaSync":
        to_download_urls.append("https://mega.nz/MEGAsyncSetup64.exe")
        to_download_filenames.append("MEGAsyncSetup64.exe")

    elif software == "MinGW":
        to_download_urls.append("https://udomain.dl.sourceforge.net/project/mingw/Installer/mingw-get-setup.exe")
        to_download_filenames.append("mingw-get-setup.exe")

    elif software == "Minecraft":
        to_download_urls.append("https://launcher.mojang.com/download/MinecraftInstaller.msi")
        to_download_filenames.append("MinecraftInstaller.msi")

    elif software == "Netflix":
        to_open_urls.append("https://www.microsoft.com/en-us/p/netflix/9wzdncrfj3tj")

    elif software == "Notepad++":

        response = str(requests.get("https://api.github.com/repos/notepad-plus-plus/notepad-plus-plus/releases").content.decode().replace(",","\n")).splitlines()
        for line in response:
            if "browser_download_url" in line and "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/" in line and "x64" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "Python":
        
        response = str(requests.get("https://www.python.org/downloads/windows/").content.decode()).splitlines()
        for line in response:
            if "Windows installer (64-bit)" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "QBittorrent": # downloads folder

        response = str(requests.get("https://www.fosshub.com/qBittorrent.html").content.decode()).splitlines()
        for line in response:
            if "x64_setup.exe" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = split
                        break
                break
        to_open_urls.append(installer_url)

    elif software == "Sandboxie":

        response = str(requests.get("https://api.github.com/repos/sandboxie-plus/Sandboxie/releases").content.decode().replace(",","\n")).splitlines()
        for line in response:
            if "browser_download_url" in line and "https://github.com/sandboxie-plus/Sandboxie/releases/download/" in line and "Plus" in line and "x64" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "Spotify":
        to_open_urls.append("https://www.microsoft.com/en-us/p/spotify-music/9ncbcszsjrsb")

    elif software == "Steam":
        to_download_urls.append("https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe")
        to_download_filenames.append("SteamSetup.exe")

    elif software == "TeamViewer":
        to_download_urls.append("https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe")
        to_download_filenames.append("TeamViewer_Setup_x64.exe")

    elif software == "Telegram":
        to_open_urls.append("https://www.microsoft.com/en-us/p/telegram-desktop/9nztwsqntd0s")

    elif software == "Tor":

        response = requests.get("https://www.torproject.org/download/").content.decode().splitlines()
        for line in response:
            if "exe" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = "https://www.torproject.org" + split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "VNC Viewer":

        response = requests.get("https://www.realvnc.com/en/connect/download/viewer/windows/").content.decode().splitlines()
        for line in response:
            if "download" in line and "exe" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = "https://www.realvnc.com" + split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "Virtualbox":

        response = requests.get("https://www.virtualbox.org/wiki/Downloads").content.decode().splitlines()
        for line in response:
            if "exe" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

        for line in response:
            if "vbox-extpack" in line:
                line = line.split('"')
                for split in line:
                    if "vbox-extpack" in split:
                        installer_url = split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)

    elif software == "Visual Studio Code":
        to_download_urls.append("https://code.visualstudio.com/sha/download?build=stable&os=win32-x64")
        to_download_filenames.append("VSCodeSetup-x64.exe")

    elif software == "Vmware":
        to_download_urls.append("https://www.vmware.com/go/getplayer-win")
        to_download_filenames.append("VMware-player.exe")

    elif software == "WinRAR 6 + Key":
        to_open_urls.append("https://mega.nz/file/RHoHSCzR#rBA_3nbaFCFHbJZFMTol8zHGIkqqO-IjhyeoEU-UW1A")

    elif software == "WinSCP":
        response = requests.get("https://winscp.net/eng/download.php").content.decode().splitlines()
        for line in response:
            if "exe" in line:
                line = line.split('"')
                for split in line:
                    if "exe" in split:
                        installer_url = "https://winscp.net" + split
                        break
                break
        installer_filename = installer_url.split("/")[-1]
        to_download_urls.append(installer_url)
        to_download_filenames.append(installer_filename)
    
    elif software == "dank.resourcepack":
        to_download_urls.append("https://www.dropbox.com/s/izwq13i2c43thwk/dank.resourcepack.zip?dl=1")
        to_download_filenames.append("dank.resourcepack.zip")

    elif software == "dank.serverbuilder":
        to_download_urls.append("https://github.com/SirDankenstien/dank.serverbuilder/blob/main/dank.serverbuilder.exe?raw=true")
        to_download_filenames.append("dank.serverbuilder.exe")

    elif software == "spiral-knights-modpack":
        to_open_urls.append("https://github.com/SirDankenstien/Spiral-Knights-Modpack")

# downloader

def file_downloader(url, name):

    try:
        data = requests.get(url, allow_redirects=True, headers=headers).content
        open(name,"wb").write(data)
        data = ""
        sys.stdout.write(aligner(f"{magenta}> {white}{name} {magenta}<") + "\n\n")
    except:
        sys.stdout.write(aligner(f"{red}[ {name} ]") + "\n\n")

# start of download phase

def download_phase():

    to_print = f"\n\n{banner()}\n\n\n\n{controls()}\n\n\n\n{aligner(f'{magenta}[ {white}Preparing Downloads {magenta}]')}"
    os.system('cls')
    sys.stdout.write(to_print)

    start_time = time.time()

    futures = []
    executor = concurrent.futures.ThreadPoolExecutor(max_workers=100)
    for software in selected_software:
        futures.append(executor.submit(prepare_downloads, software))
    for future in concurrent.futures.as_completed(futures):
        try:
            future.result()
        except:
            pass
    futures.clear()

    time_taken = ( time.time() - start_time )
    sys.stdout.write("\n\n" + aligner(f"{magenta}[ {white}Done in {{0:.2f}}s {magenta}]").format(time_taken))
    sys.stdout.write("\n\n" + aligner(f"{magenta}[ {white}Starting Multiple Downloads {magenta}]") + "\n\n")
    start_time = time.time()

    try:
        os.mkdir("dank.downloader")
    except:
        pass
    os.chdir("dank.downloader")

    executor = concurrent.futures.ThreadPoolExecutor(max_workers=2)
    for i in range(len(to_download_urls)):
        futures.append(executor.submit(file_downloader, to_download_urls[i], to_download_filenames[i]))
    for future in concurrent.futures.as_completed(futures):
        try:
            future.result()
        except:
            pass
    futures.clear()

    time_taken = int( time.time() - start_time )
    sys.stdout.write( "\n\n" + aligner(f"{magenta}[ {white}Finished All Downloads in {time_taken}s {magenta}]"))
    sys.stdout.write( "\n\n" + aligner(f"{magenta}[ {white}Opening Tabs in 5s {magenta}]"))
    time.sleep(5)

    to_open_urls.append("https://allmylinks.com/sir-dankenstein")
    for url in to_open_urls:
        time.sleep(0.5)
        web.open_new_tab(url)

    sys.stdout.write( "\n\n" + aligner(f"{magenta}[ {white}Tasks Complete! {magenta}]"))
    time.sleep(5)
    os.system('cls')
    os.system(f"explorer.exe \"dank.downloader\"")
    sys.exit()

# keypress listener

def on_press(key):
    pass

def on_release(key):

    global selector
    global selector_max
    global current_category
    global selected_software

    if key == Key.up:
        if selector > 0:
            selector -= 1
    elif key == Key.down:
        if selector < selector_max-1:
            selector +=1

    elif key == Key.space:

        if current_category == "":
            if selector == 0:
                current_category = "Windows Essentials"
            elif selector == 1:
                current_category = "Windows Optimization"
            elif selector == 2:
                current_category = "Software"
            elif selector == 3:
                current_category = "Dankware"
            elif selector == 4:
                current_category = "Download"
            selector = 0
        
        else:
            if software[selector] in selected_software:
                selected_software.remove(software[selector])
            else:
                selected_software.append(software[selector])
    
    elif key == Key.backspace:
        current_category = ""
        selector = 0
        selector_max = len(categories)

    elif key == Key.esc:
        os.system('cls')
        sys.exit()

    elif key == Key.enter:
        return False

    if current_category == "":
        category_printer()
    elif current_category != "Download":
        software_printer()
    else:
        download_phase()

# updater

project = "dank.downloader"
current_version = 3.1

try:
    os.remove(f"{project}.exe")
except:
    pass

Success = False
while not Success:
    try:
        latest_version = requests.get(f"https://raw.githubusercontent.com/SirDankenstien/{project}/main/version.txt").content.decode()
        if "Not Found" in str(latest_version):
            latest_version = 0
        else:
            latest_version = float(latest_version)
        Success = True
    except:
        wait = input( "\n\n" + aligner(f"{red}Failed to check for an update! Make sure you are connected to the Internet! Press {white}Enter {red}to try again"))

if version.parse(str(latest_version)) > version.parse(str(current_version)):

    to_print = f"\n\n{banner()}\n\n\n\n{aligner(f'{magenta}[ {white}Version : {current_version} {magenta}]')}"
    os.system('cls')
    sys.stdout.write(to_print)

    choice = str(input( "\n\n" + aligner(f"{white}Update Found{magenta}: {white}{latest_version}") + "\n\n" + aligner(f"{white}Download latest version? {magenta}[ {white}y {magenta}/ {white}n {magenta}]{white}: "))).lower()
    if choice == "y":
        print( "\n\n" + aligner(f"{magenta}[ {white}Downloading {project}-latest.exe {magenta}]"))
        data = requests.get(f"https://github.com/SirDankenstien/{project}/blob/main/{project}.exe?raw=true", allow_redirects=True).content
        open(f"{project}-latest.exe","wb").write(data)
        data = None
        print( "\n\n" + aligner(f"{white}Downloaded!") + "\n\n" + aligner(f"{white}Terminating in 5s!"))
        time.sleep(5)
        sys.exit()

#elif latest_version == current_version:
#    print(f"\n{white}> {magenta}Latest Version!")
#else:
#    print(f"\n{white}> {magenta}Development Version!")

# variables

categories = ["Windows Essentials", "Windows Optimization", "Software", "Dankware", "Start Download"]
selector = 0
selector_max = len(categories)
current_category = ""
software = []
selected_software = []

to_download_filenames = []
to_download_urls = []
to_open_urls = []

random_ua = str(random.choice(list(set(requests.get("https://raw.githubusercontent.com/DavidWittman/requests-random-user-agent/master/requests_random_user_agent/useragents.txt").content.decode().splitlines()))))

headers = {
    "Connection": "keep-alive",
    "sec-ch-ua-mobile": "?0",
    "sec-ch-ua-platform": "Windows",
    "Upgrade-Insecure-Requests": "1",
    "Cache-Control": "max-age=0",
    "Upgrade-Insecure-Requests": "1",
    "User-Agent": random_ua,
    "Sec-Fetch-Site": "none",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-User": "?1",
    "Sec-Fetch-Dest": "document",
    "Accept-Encoding": "gzip, deflate, br",
    "Accept-Language": "en-US,en;q=0.9",
    "X-Requested-With": "XMLHttpRequest"
}

category_printer()

# Collect events until released

with Listener(on_press=on_press,on_release=on_release) as listener:
    listener.join()