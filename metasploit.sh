fol() {
	cd ~/root/Metasploit-Installation/javascript
	}
	folp() {
		cd ~/root/Metasploit-Installation/php
		}
		folpy() {
			cd ~/root/Metasploit-Installation/python
			}
			folba() {
				cd ~/root/Metasploit-Installation/bash
				}
				folfi() {
					cd ~/root/Metasploit-Installation/files
					}
					meta() {
						cd ~/root/Metasploit-Installation/bash
						printf "\n\033[1;92m Please wait ..\n"
						bash meta.sh
						}
						about() {
							cd ~/root/Metasploit-Installation/javascript
							node about.js
							}
					banner() {
						clear
						fol
						node banner.js
						folp
						php detail.php
						}
						menu () {
							banner
							folpy
							python menu.py
							echo -e -n "\033[1;92m Metasploit\033[1;96m >>\033[0m "
							read ab
							case $ab in
							1)meta ;;
							2)about ;;
							3)exit ;;
							*)menu ;;
							esac
							}
							menu
		
