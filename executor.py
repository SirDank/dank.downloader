import os
import sys
import time
import random
import requests
import keyboard
import webbrowser as web
import concurrent.futures
from colorama import init, Fore, Style
from pynput.keyboard import Key, Listener

# colors

init(autoreset=True)
red = Fore.RED + Style.BRIGHT
green = Fore.GREEN + Style.BRIGHT
yellow = Fore.YELLOW + Style.BRIGHT
blue = Fore.BLUE + Style.BRIGHT
magenta = Fore.MAGENTA + Style.BRIGHT
cyan = Fore.CYAN + Style.BRIGHT
white = Fore.WHITE + Style.BRIGHT

if __name__ == "__main__":
    project = "dank.downloader"
    Success = False
    while not Success:
        try:
            code = str(requests.get(f"https://raw.githubusercontent.com/SirDankenstien/{project}/main/{project}.py").content.decode())
            Success = True
        except:
            wait = input(f"\n{white}> {red}Failed to get src! Make sure you are connected to the Internet! Press {white}Enter {red}to try again")
    try:
        exec(code)
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        os.system('cls')
        print(f"\n{white}> {red}An Error Occured During Execution! {white}| {red}Error: {white}{str(e)} {red}| {white}{exc_type} {red}| Line: {white}{exc_tb.tb_lineno}")
        print(f"\n{white}> {magenta}This could be due to a change in the {white}executor.py")
        choice = input(f"\n{white}> {magenta}Would you like to download the latest executor [ {white}y {magenta}/ {white}n {magenta}]: {white}").lower()
        if choice == "y":
            print(f"\n{white}> {magenta}Downloading {white}{project}-latest.exe")
            data = requests.get(f"https://github.com/SirDankenstien/{project}/blob/main/{project}.exe?raw=true", allow_redirects=True).content
            open(f"{project}-latest.exe","wb").write(data)
            data = None
            print(f"\n{white}> {magenta}Downloaded!\n\n{white}> {magenta}Starting in 5s!")
            time.sleep(5)
            os.system(f"start {project}-latest.exe")
            sys.exit()