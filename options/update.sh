#!/bin/bash
# Source Script Arz

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"


#wget https://github.com/${GitUser}/
GitUser="sanusi277"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/${GitUser}/Arzv/main/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/Arzv/main/newversion | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""
echo -e "   ┌─────────────────────────────────────────────────────┐" | lolcat
echo -e "   │                      MENU UPDATE                    │" | lolcat
echo -e "   └─────────────────────────────────────────────────────┘" | lolcat
echo -e "   VERSION NOW >> $Info1"
echo -e "   STATUS UPDATE >> $sts"
echo -e ""
echo -e "   ======================================= " | lolcat   
echo ""
echo -e ""
echo -e "     [1] Check Script Update Now"
echo -e "     [x] Back To Menu"
echo -e ""
echo -e "   \033[0;34m--------------------------------------------------------\033[0m"
echo -e "\e[$line"
read -rp "Please Choose 1 or x : " option2
case $option2 in
1)
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/Arzv/main/newversion | grep $version )
if [ $version = $new_version ]; then
clear
echo ""
echo -e "Script Arz Vpn Store" | lolcat
sleep 1
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update
fi
clear
echo -e "Script Arz Vpn Store" | lolcat
sleep 1
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE-Arz
cd /usr/bin
wget -O update "https://raw.githubusercontent.com/${GitUser}/Arzv/main/options/update.sh"
chmod +x update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/sanusi277/Arzv/main/add-ws.sh"
wget -q -O /usr/bin/add-ssws "https://raw.githubusercontent.com/sanusi277/Arzv/main/add-ssws.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/sanusi277/Arzv/main/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/sanusi277/Arzv/main/add-tr.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/sanusi277/Arzv/main/usernew.sh"
wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/running.sh"
#wget -q -O /usr/bin/cek-trafik "https://raw.githubusercontent.com/arzvpn/Arzv2/main/options/cek-trafik.sh"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/cek-bandwidth.sh"
wget -q -O /usr/bin/limitspeed "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/limitspeed.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu.sh"
wget -q -O /usr/bin/webmin "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/sanusi277/Arzv/main/xp.sh"
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/info.sh"
wget -q -O /usr/bin/infoserv "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/infoserv.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/menu-set.sh"
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/arzvpn/Arzv/main/options/about.sh"
wget -q -O /usr/bin/changepw "https://raw.githubusercontent.com/sanusi277/Arzv/main/options/changepw.sh"
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/sanusi277/Arzv/main/menu/trial.sh"
chmod +x /usr/bin/add-ws
chmod +x /usr/bin/add-ssws
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/limitspeed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
#chmod +x /usr/bin/menu-theme
chmod +x /usr/bin/info
chmod +x /usr/bin/infoserv
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/about
chmod +x /usr/bin/changepw
chmod +x /usr/bin/trial
wget -q https://raw.githubusercontent.com/sanusi277/Arzv/main/backup/set-br.sh && chmod +x set-br.sh && ./set-br.sh
clear

echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/Arzv/main/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script Arz For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "------------------------------------------" | lolcat
echo -e "          Done Update Script Arz          " | lolcat
echo -e "------------------------------------------" | lolcat
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac
