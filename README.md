## Installation
```
wget https://raw.githubusercontent.com/GamePLru/install/master/install.sh:chmod 777 install.sh;bash install.sh;
```
## Manual install

First of all, we need to update the packages. This is done by the command:
apt-get update
apt-get upgrade --show-upgraded
After the update, install these packages:
apt-get install -y apt-utils

apt-get install -y pwgen

apt-get install -y dialog
Then we need to install the keys
wget http://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
rm dotdeb.gpg
apt-get update
Now we need to install the main packages, including Mysql and PhpMyAdmin.

For debian 8
apt-get install -y apache2 php5 php5-dev cron unzip sudo nano php5-curl php5-memcache php5-json memcached mysql-server libapache2-mod-php5
For debian 9
apt-get install -y apache2 php php-dev cron unzip sudo nano php-curl php-memcache php-json memcached mysql-server libapache2-mod-php
* In Debian 8, during the installation of Mysql, you will be asked to specify a password (I recommend that you specify the same one so as not to get confused)

Turn on the Php5 module
a2enmod php5 и перезапускаем apache2 командой: service apache2 restart
Now we need to install PhpMyAdmin
sudo apt-get install -y phpmyadmin
At this point, you will be asked to indicate for which server you are installing. At the moment we are installing on Apache2.
Here we click "YES". Here we specify the password. At this stage, the installation of mysql and apache 2 is completed. Now we need to add phpmyadmin to the apache configuration:

sudo nano /etc/apache2/apache2.conf

Include /etc/phpmyadmin/apache.conf


sudo service apache2 restart
Download additional packages:
apt-get install -y php5-ssh2(Для Debian 9: apt-get install -y php-ssh2 )

apt-get install -y sudo screen htop nano tcpdump ssh zip unzip mc nload gdb lsof

apt-get install -y libssh2-php
In order for everything to work correctly, mod_rewrite must be cut there
a2enmod rewrite

service apache2 restart

Panel Installation

While our panel is poured onto the server, you can install the database. To do this, go to the site: http: // Site domain / phpmyadmin
Log in using the username and password that you specified when installing phpmyadmin.

Go to the "Databases" section, and create a database.
And download the downloaded database.

Go to FileZilla and follow the path: / var / www / html / data and open the conf.ini file.

There we only change
"domain":"host" // Ip/Домен машины
"db_users_host":"127.0.0.1" //Ip адрес Mysql сервера
"db_users_name":"gamepl" // Название базу данных
"db_users_user":"root" // Пользователь
"db_users_pass":"passwd" // Пароль
We go to the site, we see such a warning:
Site error: the ionCube PHP Loader needs to be installed. This is a widely used PHP extension for running ionCube protected PHP code, website security and malware blocking. Please visit get-loader.ioncube.com for install assistance. Site error: the ionCube PHP Loader needs to be installed. This is a widely used PHP extension for running ionCube protected PHP code, website security and malware blocking. Please visit get-loader.ioncube.com for install assistance.
We need to install IonCube

Download the latest version of IonCube from the attached files that are  below  this post. Open the archive, go to the ioncube folder.
Next, go to FileZille and go along the path:  "/ usr / lib / php5 / there may be another number." We throw all the files into this folder.
Next, open PuTTy and go to the server, and insert these commands:
Для Debian 9:

    echo "zend_extension=ioncube_loader_lin_7.0.so">>"/etc/php/7.0/apache2/php.ini"
    echo "zend_extension=ioncube_loader_lin_7.0.so">>"/etc/php/7.0/cli/php.ini"

Для Debian 8:

    echo "zend_extension=ioncube_loader_lin_5.6.so">>"/etc/php5/apache2/php.ini"
    echo "zend_extension=ioncube_loader_lin_5.6.so">>"/etc/php5/cli/php.ini"
and reboot the server with the command: reboot

Everything, the site is installed.

Then we need to go to the / etc / apache2 directory and open the apache2.conf file. Find ~ 153 string
And replace with this:
<Directory />
    Options FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>

<Directory /usr/share>
    AllowOverride All
    Require all granted
</Directory>

<Directory /var/www/>
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>

#<Directory /srv/>
#    Options Indexes FollowSymLinks
#    AllowOverride All
#    Require all granted
#</Directory>
Now we need to configure the task scheduler. i.e. cron
Go to PuTTY and write:
crontab -e

*/1 * * * * cd /var/www/html/;php5 cron.php

This completes the installation.

[Installing servers on this machine]

Let's start the installation with our favorite Minecraft game. With her was all the major hemorrhoids.

We connect to the machine through PuTTy and the first thing we need to create a folder for our servers
mkdir host
cd host
mkdir servers
Go to the root folder and download the game installer
cd

wget hos7.ru/gamepl/install.sh && sh install.sh
Select item 2
Install only the "basic packages for the machine", then install FTP. Java does not touch.

Next, go to the main menu and go to the item "Installing games on the machine." After the transition, select item 11. I chose the version of the lane - 1.9.

After downloading the file, go to the folder where the file was installed and rename it to "start.jar"
Now let's check if we have java. Checked by the command "java -version"
Java is missing. Install it with the command "apt-get install default-jre"
After installation, check availability.
Next, go to the panel under the admin panel. Go to the "Locations" and create a new location. Next, go to the Physical server and create a new server.
I have such parameters.

Where versions

1. Name of version
2. Path where the kernel lies [/ host / servers / mineTHERE VERSION OF THE DOWNLOADED VERSION]

Save and check. To start the server correctly, you need to  upload the file to: / var / www / folder with the site / engine / classes / games
