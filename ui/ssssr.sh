#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL SSR | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e "           \e[1;31m\e[1;31m═[\e[mShadowsocksR Menu\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e " 1\e[1;33m)\e[m  Create SSR Account"
echo -e " 2\e[1;33m)\e[m  Deleting SSR Account"
echo -e " 3\e[1;33m)\e[m  Renew SSR Account Active"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-3 or x] :  "  ssssr
echo -e ""
case $ssssr in
1)
add-ssr
;;
2)
del-ssr
;;
3)
renew-ssr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
