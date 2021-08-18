#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL PPTP | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e "         \e[1;31m\e[1;31m═[\e[mPPTP Menu\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e " 1\e[1;33m)\e[m  Create Account PPTP"
echo -e " 2\e[1;33m)\e[m  Delete PPTP Account"
echo -e " 3\e[1;33m)\e[m  Check User Login PPTP"
echo -e " 4\e[1;33m)\e[m  Renew PPTP Account"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  pptp
echo -e ""
case "$pptp" in
1)
add-pptp
;;
2)
del-pptp
;;
3)
cek-pptp
;;
4)
renew-pptp
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac


