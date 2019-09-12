#!/bin/sh
Key="gamepl" #Ключ


# Вы скачали скрипт с сайта hos7.ru
# Спасибо!
# Подписывайтесь на нас в VK:
# 


# Патчим директории
install="/var/hos7.ru"		#	Папка куда будет установлен сайт
host="ftp://ih1560707_gamepl:scriptgates@193.124.176.46"			#	Путь к серверу
Directory="files"						#	Папка в корне сайта
serverPatch="srv"						#	Папка в которой находится ZIP и SQL
gamesPath="gms"							#	Папка в которой находятся сервера игр
# Define Path
ScriptGates_SRV="$host/$Key/$Directory/$serverPatch"
ScriptGates_GMS="$host/$Key/$Directory/$gamesPath"
# Большие файлы с прямыми ссылками на другой сервак:
ScriptGates_Counter_Strike_CSGO="https://scriptgates.ru/gamepl/?/csgo.zip"      # 8.45 GB
ScriptGates_Left_4_Dead_2="https://scriptgates.ru/gamepl/?/l4d2.zip"            # 4.42 GB
ScriptGates_Team_Fortress_2="https://scriptgates.ru/gamepl/?/tf2.zip"           # 3.54 GB
# Define Game Servers
#ScriptGates_Counter_Strike_CSGO="$ScriptGates_GMS/csgo.zip"            		# 8.45 GB
#ScriptGates_Left_4_Dead_2="$ScriptGates_GMS/l4d2.zip"                  		# 4.42 GB
#ScriptGates_Team_Fortress_2="$ScriptGates_GMS/tf2.zip"                 		# 3.54 GB
ScriptGates_Garrys_Mod="$ScriptGates_GMS/gm.zip"                       			# 2.23 GB
ScriptGates_Counter_Strike_Source="$ScriptGates_GMS/css.zip"           			# 1.12 GB
ScriptGates_Day_Of_Defeat_Source="$ScriptGates_GMS/dods.zip"           			# 798.7 MB
ScriptGates_Counter_Strike_v34="$ScriptGates_GMS/cssold.zip"           			# 615.3 MB
ScriptGates_Counter_Strike="$ScriptGates_GMS/cs.zip"                    		# 397.7 MB
ScriptGates_Half_Life_Deathmatch="$ScriptGates_GMS/hldm.zip"            		# 305.1 MB

ScriptGates_RUST="$ScriptGates_GMS/rust.zip"
ScriptGates_Killing_Floor="$ScriptGates_GMS/kf.zip"	# ?
ScriptGates_GTA_RenderWare="$ScriptGates_GMS/rwmp.zip"
ScriptGates_Gostown6_Multiplayer="$ScriptGates_GMS/g6mp.zip"
ScriptGates_GTA_Criminal_Russia="$ScriptGates_GMS/crmp.zip"
ScriptGates_GTA_Multi_Theft_Auto="$ScriptGates_GMS/mta.zip"
ScriptGates_GTA_Vice_Multiplayer="$ScriptGates_GMS/vmp.zip"
ScriptGates_GTA_San_Andreas_037="$ScriptGates_GMS/samp037.zip"
ScriptGates_GTA_Alien_City_Anderius="$ScriptGates_GMS/anmp.zip"
ScriptGates_MC="$ScriptGates_GMS/mc/craftbukkit-1.13.2.jar"
ScriptGates_GTA_San_Andreas_03DL="$ScriptGates_GMS/samp03dl.zip"
# Define Server Files 
ScriptGates_ZIP="https://github.com/GamePLru/GamePL/archive/master.zip"
ScriptGates_SQL="https://raw.githubusercontent.com/GamePLru/GamePL/master/gamepl.sql"
#Оригинальные ссылки на нужные файлы
ScriptGates_SteamCMD="http://media.steampowered.com/client/steamcmd_linux.tar.gz"
ScriptGates_IONCube="http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip"
ScriptGates_DOTDEB="http://www.dotdeb.org/dotdeb.gpg"
#Если не работает одна из ссылок, используем локальное зеркало:
#ScriptGates_SteamCMD="$ScriptGates_GMS/steamcmd_linux.tar.gz"
#ScriptGates_IONCube="$ScriptGates_SRV/ioncube_loaders_lin_x86-64.zip"
#ScriptGates_DOTDEB="$ScriptGates_SRV/dotdeb.gpg"

Infon() {
	printf "\033[1;32m$@\033[0m"
}
Info()
{
	Infon "$@\n"
}
Error()
{
	printf "\033[1;31m$@\033[0m\n"
}
Error_n()
{
	Error "- - - $@"
}
Error_s()
{
	Error "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_s()
{
	Info "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_n()
{
	Info "- - - $@"
}
log_t()
{
	log_s
	Info "- - - $@"
	log_s
}
lines()
{
	Info "${yellow}• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • "
}
lines1()
{
	Info "${red}• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • "
}
wow()
{
	lines1
	lines
}
wow1()
{
	lines
	lines1
}
infomenu()
{
	Info "${yellow} • • • • • • | ${red}Добро пожаловать, в установочное меню GamePL ${BLUE}v.8.5${yellow} | • • • • • • "
}
log_tt()
{
	Info "• —————————————————————————— ${red}$@${green} ——————————————————————————— • "
}
log_tt1()
{
	Info "• ——————————————— ${red}$@${green} ————————————————— •"
}
RED=$(tput setaf 1)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
white=$(tput setaf 7)
reset=$(tput sgr0)
toend=$(tput hpa $(tput cols))$(tput cub 6)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
LIME_YELLOW=$(tput setaf 190)
CYAN=$(tput setaf 6)

install_gamepl()
{
	Info "Здравствуйте, данный скрипт установит ${red}GamePL ${BLUE}v.8.5${green} полностью автоматически за Вас!"
	read -p "Пожалуйста, введите ${red}домен ${green}или ${red}IP${green}:${yellow}" DOMAIN
	log_t "• Начинаем установку ${red}GamePL ${BLUE}v.8.5${green} •"
	log_t "• Обновляем пакеты •"
	apt-get update
	log_t "• Устанавливаем пакеты! •"
	apt-get install -y apt-utils
	apt-get install -y pwgen
	apt-get install -y dialog
	MYPASS=$(pwgen -cns -1 20)
	MYPASS2=$(pwgen -cns -1 20)
	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then
		log_t "• Добавляем репозиторий •"
		echo "deb http://packages.dotdeb.org wheezy-php55 all">"/etc/apt/sources.list.d/dotdeb.list"
		echo "deb-src http://packages.dotdeb.org wheezy-php55 all">>"/etc/apt/sources.list.d/dotdeb.list"
		wget $ScriptGates_DOTDEB
		apt-key add dotdeb.gpg
		rm dotdeb.gpg
		log_t "• Обновляем пакеты •"
		apt-get update
	fi
	log_t "• Обновляем пакеты •"
	apt-get upgrade -y
	echo mysql-server mysql-server/root_password select "$MYPASS" | debconf-set-selections
	echo mysql-server mysql-server/root_password_again select "$MYPASS" | debconf-set-selections
	log_t "Install packages"
	apt-get install -y apache2 php5 php5-dev cron unzip sudo php5-curl php5-memcache php5-json memcached mysql-server libapache2-mod-php5
	if [ "$OS" = "" ]; then
		apt-get install -y php5-ssh2
	else
		apt-get install -y  libssh2-php
	fi
	echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/admin-user string root" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/admin-pass password $MYPASS" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/app-pass password $MYPASS" |debconf-set-selections
	echo "phpmyadmin phpmyadmin/app-password-confirm password $MYPASS" | debconf-set-selections
	echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections
	apt-get install -y phpmyadmin
	STRING=$(apache2 -v | grep Apache/2.4)
	if [ "$STRING" = "" ]; then
		FILE='/etc/apache2/conf.d/gamepl'
		echo "<VirtualHost *:80>">$FILE
		echo "ServerName $DOMAIN">>$FILE
		echo "DocumentRoot $install">>$FILE
		echo "<Directory $install/>">>$FILE
		echo "Options Indexes FollowSymLinks MultiViews">>$FILE
		echo "AllowOverride All">>$FILE
		echo "Order allow,deny">>$FILE
		echo "allow from all">>$FILE
		echo "</Directory>">>$FILE
		echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		echo "LogLevel warn">>$FILE
		echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		echo "</VirtualHost>">>$FILE
	else
		FILE='/etc/apache2/conf-enabled/gamepl.conf'
		cd /etc/apache2/sites-available
		sed -i "/Listen 80/d" *
		cd ~
		echo "Listen 80">$FILE
		echo "<VirtualHost *:80>">$FILE
		echo "ServerName $DOMAIN">>$FILE
		echo "DocumentRoot $install">>$FILE
		echo "<Directory $install/>">>$FILE
		echo "AllowOverride All">>$FILE
		echo "Require all granted">>$FILE
		echo "</Directory>">>$FILE
		echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		echo "LogLevel warn">>$FILE
		echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		echo "</VirtualHost>">>$FILE
	fi
	log_t "• Включаем модуль Apache2 •"
	a2enmod rewrite
	a2enmod php5
	log_t "Устанавливаем Ioncube"
	wget $ScriptGates_IONCube
	unzip ioncube_loaders_lin_x86-64.zip
	cp ioncube/ioncube_loader_lin_5.5.so /usr/lib/php5/20121212/ioncube_loader_lin_5.5.so
	rm -R ioncube*
	echo "zend_extension=ioncube_loader_lin_5.5.so">>"/etc/php5/apache2/php.ini"
	echo "zend_extension=ioncube_loader_lin_5.5.so">>"/etc/php5/cli/php.ini"
	(crontab -l ; echo "*/1 * * * * cd $install/;php5 cron.php") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -
	chown root:crontab /var/spool/cron/crontabs/root
	log_t "• Перезагружаем крон! •"
	service cron restart
	service apache2 restart
	log_t "• • Началась установка ${red}GamePL ${BLUE}v.8.5 Update ${green} в каталог ${red}$install${green} • •"
	cd ~
	mkdir $install/
	cd $install/
	rm index.html
	wget $ScriptGates_ZIP
	unzip master.zip
	rm -rf master.zip
	cd GamePL-master
	mv * $install/
	cd ~
	wget $ScriptGates_SQL
	sed -i 's/host/'$DOMAIN'/g' $install/data/conf.ini
	sed -i 's/passwd/'$MYPASS'/g' $install/data/conf.ini
	mysql -uroot -p$MYPASS -e "CREATE DATABASE gamepl;"
	mysql -uroot -p$MYPASS gamepl < gamepl.sql
	rm -rf gamepl.sql
	chown -R www-data:www-data $install/
	chmod -R 770 $install/
	echo "Europe/Moscow" > /etc/timezone
	dpkg-reconfigure tzdata -f noninteractive
    sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
    sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
	apt-get update
	service apache2 restart
	service mysql restart
	log_t "• • Завершаем установку панели ${red}GamePL ${BLUE}v.8.5 ${green}• •"
	    log_s
		log_n "Панель управления ${red}GamePL ${BLUE}v.8.5 ${green}установлена!"
		log_n ""
		log_n "Данные для входа в ${red}phpMyAdmin${green} и ${red}MySQL${green}:"
		log_n "${red}Логин${green}: ${yellow}root"
		log_n "${red}Пароль${green}: ${yellow}$MYPASS"
		log_n ""
		log_n "${red}Войти в панель управления GamePL ${BLUE}v.8.5${green}: ${yellow}http://$DOMAIN"
		log_n "${red}Войти в phpMyAdmin${green}: ${yellow}http://$DOMAIN/phpmyadmin"
		log_n ""
		log_n "${red}Данные для входа в панель управления админом${green}:"
		log_n "${red}Логин${green}: ${yellow}admin@scriptgates.ru"
		log_n "${red}Пароль${green}: ${yellow}scriptgates"
		log_n "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
		log_n "${red}Обязательно смените email и пароль после авторизации!"
		log_n "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
		log_n ""
		log_n "${yellow}Скопируйте все данные и сохраните в файле .txt"
		log_s
	Info
	log_t "• Добро пожаловать в установочное меню ${red}GamePL${BLUE} v.8.5${green} ✔ •"
	Info "1  -  Настроить машину под игры ✔"
	Info "2  -  Установить игры на машину ✔"
	Info "0  -  Выход ✔"
	Info
	read -p "Пожалуйста, введите номер меню:" case
	case $case in
		1) configure_box;;   
		2) install_games;;
		0) exit;;
	esac
}
install_mineallversion()
{
	clear
	Info
	log_t "Список доступных версий"
	Info "- 1  - 1.12.1"
	Info "- 2  - 1.12"
	Info "- 3  - 1.11.2"
	Info "- 4  - 1.11.1"
	Info "- 5  - 1.11"
	Info "- 6  - 1.10.2"
	Info "- 7  - 1.10"
	Info "- 8  - 1.9.4"
	Info "- 9  - 1.9.2"
	Info "- 10  - 1.9"
	Info "- 11  - 1.8.8"
	Info "- 12  - 1.8.7"
	Info "- 13  - 1.8.6"
	Info "- 14  - 1.8.5"
	Info "- 15  - 1.8.4"
	Info "- 16  - 1.8.3"
	Info "- 17  - 1.8"
	Info "- 18  - 1.7.10"
	Info "- 19  - 1.7.9"
	Info "- 20  - 1.7.8"
	Info "- 21  - 1.7.5"
	Info "- 22  - 1.7.2"
	Info "- 23  - 1.6.4"
	Info "- 24  - 1.6.2"
	Info "- 25  - 1.6.1"
	Info "- 26  - 1.5.2"
	Info "- 27  - 1.5.1"
	Info "- 28  - 1.5"
	Info "- 29  - 1.4.7"
	Info "- 30  - 1.4.6"
	Info "- 31  - 1.4.5"
	Info "- 32  - 1.4.2"
	Info "- 33  - 1.3.2"
	Info "- 34  - 1.3.1"
	Info "- 35  - 1.2.5"
	Info "- 36  - 1.2.4"
	Info "- 37  - 1.2.3"
	Info "- 38  - 1.2.2"
	Info "- 39  - 1.1"
	Info "- 40  - 1.0.0"
	Info "- ${red}41  - ${yellow}1.13.2 [/host/servers/mcLAST/]"
	Info "- 0  -  Назад"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1)
			mkdir /host/servers/mine1121/
			cd /host/servers/mine1121/
			wget $ScriptGates_GMS/mc/craftbukkit-1.12.1.jar
			install_games
		;;
		2)
			mkdir /host/servers/mine112/
			cd /host/servers/mine112/
			wget $ScriptGates_GMS/mc/craftbukkit-1.12.jar
			install_games
		;;
		3)
			mkdir /host/servers/mine1112/
			cd /host/servers/mine1112/
			wget $ScriptGates_GMS/mc/craftbukkit-1.11.2.jar
			install_games
		;;
		4)
			mkdir /host/servers/mine1111/
			cd /host/servers/mine1111/
			wget $ScriptGates_GMS/mc/craftbukkit-1.11.1.jar
			install_games
		;;
		5)
			mkdir /host/servers/mine111/
			cd /host/servers/mine111/
			wget $ScriptGates_GMS/mc/craftbukkit-1.11.jar
			install_games
		;;
		6)
			mkdir /host/servers/mine1102/
			cd /host/servers/mine1102/
			wget $ScriptGates_GMS/mc/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		7)
			mkdir /host/servers/mine110/
			cd /host/servers/mine110/
			wget $ScriptGates_GMS/mc/craftbukkit-1.10-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		8)
			mkdir /host/servers/mine194/
			cd /host/servers/mine194/
			wget $ScriptGates_GMS/mc/craftbukkit-1.9.4-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		9)
			mkdir /host/servers/mine192/
			cd /host/servers/mine192/
			wget $ScriptGates_GMS/mc/craftbukkit-1.9.2-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		10)
			mkdir /host/servers/mine19/
			cd /host/servers/mine19/
			wget $ScriptGates_GMS/mc/craftbukkit-1.9-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		11)
			mkdir /host/servers/mine188/
			cd /host/servers/mine188/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		12)
			mkdir /host/servers/mine187/
			cd /host/servers/mine187/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.7-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		13)
			mkdir /host/servers/mine186/
			cd /host/servers/mine186/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.6-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		14)
			mkdir /host/servers/mine185/
			cd /host/servers/mine185/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.5-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		15)
			mkdir /host/servers/mine184/
			cd /host/servers/mine184/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.4-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		16)
			mkdir /host/servers/mine183/
			cd /host/servers/mine183/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8.3-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		17)
			mkdir /host/servers/mine18/
			cd /host/servers/mine18/
			wget $ScriptGates_GMS/mc/craftbukkit-1.8-R0.1-SNAPSHOT-latest.jar
			install_games
		;;
		18)
			mkdir /host/servers/mine1710/
			cd /host/servers/mine1710/
			wget $ScriptGates_GMS/mc/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar
			install_games
		;;
		19)
			mkdir /host/servers/mine179/
			cd /host/servers/mine179/
			wget $ScriptGates_GMS/mc/craftbukkit-1.7.9-R0.2-SNAPSHOT.jar
			install_games
		;;
		20)
			mkdir /host/servers/mine178/
			cd /host/servers/mine178/
			wget $ScriptGates_GMS/mc/craftbukkit-1.7.8-R0.1-SNAPSHOT.jar
			install_games
		;;
		21)
			mkdir /host/servers/mine175/
			cd /host/servers/mine175/
			wget $ScriptGates_GMS/mc/craftbukkit-1.7.5-R0.1-20140402.020013-12.jar
			install_games
		;;
		22)
			mkdir /host/servers/mine172/
			cd /host/servers/mine172/
			wget $ScriptGates_GMS/mc/craftbukkit-1.7.2-R0.4-20140216.012104-3.jar
			install_games
		;;
		23)
			mkdir /host/servers/mine164/
			cd /host/servers/mine164/
			wget $ScriptGates_GMS/mc/craftbukkit-1.6.4-R2.0.jar
			install_games
		;;
		24)
			mkdir /host/servers/mine162/
			cd /host/servers/mine162/
			wget $ScriptGates_GMS/mc/craftbukkit-1.6.2-R0.1-SNAPSHOT.jar
			install_games
		;;
		25)
			mkdir /host/servers/mine161/
			cd /host/servers/mine161/
			wget $ScriptGates_GMS/mc/craftbukkit-1.6.1-R0.1-SNAPSHOT.jar
			install_games
		;;
		26)
			mkdir /host/servers/mine152/
			cd /host/servers/mine152/
			wget $ScriptGates_GMS/mc/craftbukkit-1.5.2-R1.0.jar
			install_games
		;;
		27)
			mkdir /host/servers/mine151/
			cd /host/servers/mine151/
			wget $ScriptGates_GMS/mc/craftbukkit-1.5.1-R0.2-SNAPSHOT.jar
			install_games
		;;
		28)
			mkdir /host/servers/mine15/
			cd /host/servers/mine15/
			wget $ScriptGates_GMS/mc/craftbukkit-1.5-R0.1-20130317.180842-21.jar
			install_games
		;;
		29)
			mkdir /host/servers/mine147/
			cd /host/servers/mine147/
			wget $ScriptGates_GMS/mc/craftbukkit-1.4.7-R1.1-SNAPSHOT.jar
			install_games
		;;
		30)
			mkdir /host/servers/mine146/
			cd /host/servers/mine146/
			wget $ScriptGates_GMS/mc/craftbukkit-1.4.6-R0.4-SNAPSHOT.jar
			install_games
		;;
		31)
			mkdir /host/servers/mine145/
			cd /host/servers/mine145/
			wget $ScriptGates_GMS/mc/craftbukkit-1.4.5-R1.1-SNAPSHOT.jar
			install_games
		;;
		32)
			mkdir /host/servers/mine142/
			cd /host/servers/mine142/
			wget $ScriptGates_GMS/mc/craftbukkit-1.4.2-R0.3-SNAPSHOT.jar
			install_games
		;;
		33)
			mkdir /host/servers/mine132/
			cd /host/servers/mine132/
			wget $ScriptGates_GMS/mc/craftbukkit-1.3.2-R2.1-SNAPSHOT.jar
			install_games
		;;
		34)
			mkdir /host/servers/mine131/
			cd /host/servers/mine131/
			wget $ScriptGates_GMS/mc/craftbukkit-1.3.1-R2.1-SNAPSHOT.jar
			install_games
		;;
		35)
			mkdir /host/servers/mine125/
			cd /host/servers/mine125/
			wget $ScriptGates_GMS/mc/craftbukkit-1.2.5-R5.1-SNAPSHOT.jar
			install_games
		;;
		36)
			mkdir /host/servers/mine124/
			cd /host/servers/mine124/
			wget $ScriptGates_GMS/mc/craftbukkit-1.2.4-R1.1-SNAPSHOT.jar
			install_games
		;;
		37)
			mkdir /host/servers/mine123/
			cd /host/servers/mine123/
			wget $ScriptGates_GMS/mc/craftbukkit-1.2.3-R0.3-SNAPSHOT.jar
			install_games
		;;
		38)
			mkdir /host/servers/mine122/
			cd /host/servers/mine122/
			wget $ScriptGates_GMS/mc/craftbukkit-1.2.2-R0.1-SNAPSHOT.jar
			install_games
		;;
		39)
			mkdir /host/servers/mine11/
			cd /host/servers/mine11/
			wget $ScriptGates_GMS/mc/craftbukkit-1.1-R5-SNAPSHOT.jar
			install_games
		;;
		40)
			mkdir /host/servers/mine100/
			cd /host/servers/mine100/
			wget $ScriptGates_GMS/mc/craftbukkit-1.0.0-SNAPSHOT.jar
			install_games
		;;
        41)
			mkdir /host/servers/mcLAST/
			cd /host/servers/mcLAST/
			wget $ScriptGates_MC
			install_games
		;;
		0)
		install_games
		;;
	esac
}
install_games()
{
	upd
	clear
	Info
	wow
	log_t "Список доступных игр"
	Info "- ${red}1${green}  -  ♦ Установить ${red}SteamCMD${green}[${red}На новой машине обязательно!${green}]"
	Info "- ${red}2${green}  -  ♦ Counter-Strike: 1.6 Build REHLDS"
	Info "- ${red}3${green}  -  ♦ Counter-Strike: Source"
	Info "- ${red}4${green}  -  ♦ Counter-Strike: Source v34"
	Info "- ${red}5${green}  -  ♦ Counter-Strike: GO"
	Info "- ${red}6${green}  -  ♦ Half-Life: Deathmatch"
	Info "- ${red}7${green}  -  ♦ Day of Defeat: Source"
	Info "- ${red}8${green}  -  ♦ Team Fortress 2"
	Info "- ${red}9${green}  -  ♦ Garry's Mod"
	Info "- ${red}10${green} -  ♦ Left 4 Dead 2"
	Info "- ${red}11${green} -  ♦ MineCraft [Все версии]"
	Info "- ${red}12${green} -  ♦ Killing Floor"
	Info "- ${red}13${green} -  ♦ GTA: Multi Theft Auto [v.1.5.6]"
	Info "- ${red}14${green} -  ♦ GTA: San Andreas Multiplayer [v.0.3.7]"
	Info "- ${red}15${green} -  ♦ GTA: Criminal Russia MP [v.0.3.e]"
	Info "- ${red}16${green} -  ♦ GTA: RenderWare Multiplayer"
	Info "- ${red}17${green} -  ♦ GTA: Anderius Multiplayer"
	Info "- ${red}18${green} -  ♦ GTA: Gostown6 Multiplayer"
	Info "- ${red}19${green} -  ♦ GTA: Vice Multiplayer"
	Info "- ${red}20${green} -  ♦ Rust"
	Info "- ${red}21${green} -  ♦ GTA: San Andreas Multiplayer [v.0.3dL]"
	Info "- ${red}0${green}  -  ♦ В главное меню <<<"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) 
			mkdir -p /host/
			mkdir -p /host/servers
			mkdir -p /host/servers/cmd
			cd /host/servers/cmd/
			#wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
			wget $ScriptGates_SteamCMD
			tar xvzf steamcmd_linux.tar.gz
			rm steamcmd_linux.tar.gz
			install_games
		;;   
		2)
			apt-get install -y zip unzip
			mkdir /host/servers/cs/
			cd /host/servers/cs/
			wget $ScriptGates_Counter_Strike
			unzip cs.zip
			rm cs.zip
			install_games
		;;
		3)
			apt-get install -y zip unzip
			mkdir /host/servers/css/
			cd /host/servers/css/
			wget $ScriptGates_Counter_Strike_Source
			unzip css.zip
			rm css.zip
			install_games
		;;
		4)
			apt-get install -y zip unzip
			mkdir /host/servers/css34/
			cd /host/servers/css34/
			wget $ScriptGates_Counter_Strike_v34
			unzip cssold.zip
			rm cssold.zip
			install_games
		;;
		5)
			apt-get install -y zip unzip
			mkdir /host/servers/csgo/
			cd /host/servers/csgo/
			wget $ScriptGates_Counter_Strike_CSGO
			unzip csgo.zip
			rm csgo.zip
			install_games
		;;
		6)
			apt-get install -y zip unzip
			mkdir /host/servers/hldm/
			cd /host/servers/hldm/
			wget $ScriptGates_Half_Life_Deathmatch
			unzip hldm.zip
			rm hldm.zip
			install_games
		;;
		7)
			apt-get install -y zip unzip
			mkdir /host/servers/dods/
			cd /host/servers/dods/
			wget $ScriptGates_Day_Of_Defeat_Source
			unzip dods.zip
			rm dods.zip
			install_games
		;;
		8)
			apt-get install -y zip unzip
			mkdir /host/servers/tf2/
			cd /host/servers/tf2/
			wget $ScriptGates_Team_Fortress_2
			unzip tf2.zip
			rm tf2.zip
			install_games
		;;
		9)
			apt-get install -y zip unzip
			mkdir /host/servers/gm/
			cd /host/servers/gm/
			wget $ScriptGates_Garrys_Mod
			unzip gm.zip
			rm gm.zip
			install_games
		;;
		10)
			apt-get install -y zip unzip
			mkdir /host/servers/l4d2/
			cd /host/servers/l4d2/
			wget $ScriptGates_Left_4_Dead_2
			unzip l4d2.zip
			rm l4d2.zip
			install_games
		;;
		11)
			install_mineallversion
		;;
		12)
			apt-get install -y zip unzip
			mkdir /host/servers/kf/
			cd /host/servers/kf/
			wget $ScriptGates_Killing_Floor
			unzip kf.zip
			rm kf.zip
			install_games
		;;
		13)
			apt-get install -y zip unzip
			mkdir /host/servers/mta/
			cd /host/servers/mta/
			wget $ScriptGates_GTA_Multi_Theft_Auto
			unzip mta.zip
			rm mta.zip
			install_games
		;;
		14)
			apt-get install -y zip unzip
			mkdir /host/servers/samp037/
			cd /host/servers/samp037/
			wget $ScriptGates_GTA_San_Andreas_037
			unzip samp037.zip
			rm samp037.zip
			install_games
		;;
		15)
			apt-get install -y zip unzip
			mkdir /host/servers/crmp/
			cd /host/servers/crmp/
			wget $ScriptGates_GTA_Criminal_Russia
			unzip crmp.zip
			rm crmp.zip
			install_games
		;;
		16)
			apt-get install -y zip unzip
			mkdir /host/servers/rwmp/
			cd /host/servers/rwmp/
			wget $ScriptGates_GTA_RenderWare
			unzip rwmp.zip
			rm rwmp.zip
			install_games
		;;
		17)
			apt-get install -y zip unzip
			mkdir /host/servers/anmp/
			cd /host/servers/anmp/
			wget $ScriptGates_GTA_Alien_City_Anderius
			unzip anmp.zip
			rm anmp.zip
			install_games
		;;		
		18)
			apt-get install -y zip unzip
			mkdir /host/servers/g6mp/
			cd /host/servers/g6mp/
			wget $ScriptGates_Gostown6_Multiplayer
			unzip g6mp.zip
			rm g6mp.zip
			install_games
		;;		
		19)
			apt-get install -y zip unzip
			mkdir /host/servers/vmp/
			cd /host/servers/vmp/
			wget $ScriptGates_GTA_Vice_Multiplayer
			unzip vmp.zip
			rm vmp.zip
			install_games
		;;		

		20)
			apt-get install -y zip unzip
			mkdir /host/servers/rust/
			cd /host/servers/rust/
			wget $ScriptGates_RUST
			unzip rust.zip
			rm rust.zip
			install_games
		;;

		21)
			apt-get install -y zip unzip
			mkdir /host/servers/samp03dl/
			cd /host/servers/samp03dl/
			wget $ScriptGates_GTA_San_Andreas_03DL
			unzip samp03dl.zip
			rm samp03dl.zip
			install_games
		;;
		0) menu;;
	esac
}
install_fastdl()
{
	if [ "$@" = "1" ]; then
		apt-get install -y apache2-mpm-itk php5
		STRING=$(apache2 -v | grep Apache/2.4)
		mkdir /etc/apache2/fastdl
		if [ "$STRING" = "" ]; then
			echo "Include /etc/apache2/fastdl/*.conf">>"/etc/apache2/apache2.conf"
		else
			echo "IncludeOptional fastdl/*.conf">>"/etc/apache2/apache2.conf"
		fi
		service apache2 restart
	else
		apt-get install -y nginx
		mkdir /etc/nginx/fastdl
		echo "server {">"/etc/nginx/sites-enabled/fastdl.conf"
		echo "listen 80 default;">>"/etc/nginx/sites-enabled/fastdl.conf"
		echo "include /etc/nginx/fastdl/*;">>"/etc/nginx/sites-enabled/fastdl.conf"
		echo "}">>"/etc/nginx/sites-enabled/fastdl.conf"
		sed -i 's/user www-data;/user root;/g' "/etc/nginx/nginx.conf"
		service nginx restart
	fi
}
install_ftp()
{
	apt-get install -y pure-ftpd-common pure-ftpd
	echo "yes" > /etc/pure-ftpd/conf/CreateHomeDir
	echo "yes" > /etc/pure-ftpd/conf/NoAnonymous
	echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone
	echo "yes" > /etc/pure-ftpd/conf/VerboseLog
	echo "yes" > /etc/pure-ftpd/conf/IPV4Only
	echo "100" > /etc/pure-ftpd/conf/MaxClientsNumber
	echo "8" > /etc/pure-ftpd/conf/MaxClientsPerIP
	echo "no" > /etc/pure-ftpd/conf/DisplayDotFiles 
	echo "15" > /etc/pure-ftpd/conf/MaxIdleTime
	echo "16" > /etc/pure-ftpd/conf/MaxLoad
	echo "50000 50300" > /etc/pure-ftpd/conf/PassivePortRange
	rm /etc/pure-ftpd/conf/PAMAuthentication /etc/pure-ftpd/auth/70pam 
	ln -s ../conf/PureDB /etc/pure-ftpd/auth/45puredb
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
	screen -dmS ftp_s pure-pw useradd root -u www-data -g www-data -d /host -N 15000
	sleep 5
	screen -S ftp_s -p 0 -X stuff '123$\n';
	sleep 5
	screen -S ftp_s -p 0 -X stuff '123$\n';
	sleep 5
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
	pure-pw userdel root
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
}
install_java()
{
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list 
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections	
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886  
    apt-get update
	sudo apt-get -y install oracle-java8-installer
}
install_base()
{
	apt-get install -y ssh sudo screen cpulimit zip unzip htop
	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then
		sudo dpkg --add-architecture i386
		sudo apt-get update 
		sudo apt-get install -y ia32-libs
		apt-get install -y lib32gcc1 lib32stdc++6 libreadline5 gcc-multilib
		echo "Europe/Moscow" > /etc/timezone
		dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
	else
		cd /etc/apt/sources.list.d
		echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
		apt-get update
		apt-get install -y ia32-libs
		apt-get install -y lib32gcc1 lib32stdc++6 libreadline5 gcc-multilib
		echo "Europe/Moscow" > /etc/timezone
		dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini

	fi
}
contacts_gamepl()
{
	upd
	clear
	Info
	wow
	log_t "• Контакты ScriptGates •"
	log_n " - Наш канал в Telegram: ${red}https://t.me/scriptgates ${green}"
	log_n " - Вы скачали скрипт с сайта ${red}https://scriptgates.ru ${green}"
	log_n " - ${red}0${green} В главное меню <<< "
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		0) menu;;
	esac
}
configure_box()
{
	upd
	clear
	Info
	wow
	log_t "• Добро пожаловать в меню настройки сервера машины •"
	Info "- ${red}1${green}  -  Установить основные пакеты для машины с играми"
	Info "- ${red}2${green}  -  Настроить FastDL на Apache для машины с играми"
	Info "- ${red}3${green}  -  Настроить FastDL на Nginx для машины с играми"
	Info "- ${red}4${green}  -  Установить FTP сервер для машины с играми"
	Info "- ${red}5${green}  -  Установить Java для машины с играми MineCraft"
	Info "- ${red}0${green}  -  В главное меню <<<"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) install_base;;
		2) install_fastdl "1";;
		3) install_fastdl "2";;
		4) install_ftp;;
		5) install_java;;
		0) menu;;
	esac
	configure_box
}
UPD="0"
upd()
{
	if [ "$UPD" = "0" ]; then
		apt-get update
		UPD="1"
	fi
}
menu()
{
	clear
	wow
	Info
	log_t "• Добро пожаловать в установочное меню ${red}GamePL${BLUE} v.8.5${green} ✔ •"
	Info "• - ${red}1${green}  -  Установить ${red}GamePL${BLUE} v.8.5${green} на VDS ✔ •"
	Info "• - ${red}2${green}  -  Настроить машину под игры ✔ •"
	Info "• - ${red}3${green}  -  Установить игры на машину ✔ •"
	Info "• - ${red}4${green}  -  Контакты разработчика ✔ •"
	Info "• - ${red}0${green}  -  Выход ✔ •"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) install_gamepl;;   
		2) configure_box;;   
		3) install_games;;
		4) contacts_gamepl;;
		0) exit;;
	esac
}
menu
