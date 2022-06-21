command -v npm &>/dev/null && return
	pprint "Installing Nodejs and Npm..  "
	curl -fssL https://deb.nodesource.com/setup_17.x | sudo -E bash - &>nodelog.txt &&
	sudo apt install nodejs -y &>>nodelog.txt &&
	sudo npm i -g npm &>>nodelog.txt &&
	pprint "SUCCESS!\n" "cgreen" || (pprint "FAIL.\n" "cred"; exit 1)
