set() {
	clear
	printf "\n\033[1;92m Updating packages..\n"
	apt update
	apt upgrade
	for a in php node npm nodejs python toilet figlet ruby ; do
	if [ -e $PREFIX/bin/$a ];then
	printf "\n \033[1;93m $a command is install\n\n\033[0m"
	sleep 1
	else
	apt install $a || apt reinstall $a
	apt install $a || apt install --fix-broken
	cd ~/root/Metasploit-Installation/files
	dpkg -i Random.deb
	dpkg -i Font.deb
	fi
	done
	}
	
	set
	cd ~/root/Metasploit-Installation/files
	dpkg -i Random.deb
	dpkg -i Font.deb
