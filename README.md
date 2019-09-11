## Installation
```
wget https://raw.githubusercontent.com/GamePLru/install/master/install.sh:chmod 777 install.sh;bash install.sh;
```
## Manual Debian 8/9

<div id="sp0895d212586f9d3a5138013c4bb544bd" class="text_spoiler" style=""><b><!--spoiler_text--></b><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Installing Gamepl V 8.5 on VDS hosting </font></font></u></b><br><br><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">First of all, we need to update the packages. </font><font style="vertical-align: inherit;">This is done by the command:</font></font></u></b></span><pre class="language-markup"><code class="undefined">apt-get update<font></font>
apt-get upgrade --show-upgraded</code></pre><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">After the update, install these packages:</font></font></u></b></span><pre class="language-markup"><code class="undefined">apt-get install -y apt-utils<font></font>
<font></font>
apt-get install -y pwgen<font></font>
<font></font>
apt-get install -y dialog</code></pre><u><b><span style="font-size:14px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Then we need to install the keys</font></font></span></b></u><pre class="language-markup"><code class="javascript">Скачиваем его<font></font>
wget http:<span class="comment">//www.dotdeb.org/dotdeb.gpg</span><font></font>
<font></font>
Устанавливаем<font></font>
apt-key add dotdeb.gpg<font></font>
<font></font>
Удаляем<font></font>
rm dotdeb.gpg<font></font>
<font></font>
и обновляем систему<font></font>
apt-get update</code></pre><u><b><span style="font-size:14px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Now we need to install the main packages, including Mysql and PhpMyAdmin.</font></font></span></b></u><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> For debian 8</font></font><pre class="language-markup"><code class="undefined">apt-get install -y apache2 php5 php5-dev cron unzip sudo nano php5-curl php5-memcache php5-json memcached mysql-server libapache2-mod-php5</code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">For debian 9</font></font><pre class="language-markup"><code class="undefined">apt-get install -y apache2 php php-dev cron unzip sudo nano php-curl php-memcache php-json memcached mysql-server libapache2-mod-php</code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">* In Debian 8, during the installation of Mysql, you will be asked to specify a password (I recommend that you specify the same one so as not to get confused) </font></font><br><br><b><u><span style="font-size:14px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Turn on the Php5 module</font></font></span></u></b><pre class="language-markup"><code class="undefined">a2enmod php5 и перезапускаем apache2 командой: service apache2 restart</code></pre><b><u><span style="font-size:14px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Now we need to install PhpMyAdmin</font></font></span></u></b><pre class="language-markup"><code class="undefined">sudo apt-get install -y phpmyadmin</code></pre><b><u><span style="font-size:14px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">At this point, you will be asked to indicate for which server you are installing. </font><font style="vertical-align: inherit;">At the moment we are installing on Apache2. </font></font></span></u></b><br><b><u><span style="font-size:14px;"><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563803450_scriptgates_ruscreenshot_5.png"><img src="/uploads/posts/2019-07/medium/1563803450_scriptgates_ruscreenshot_5.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Here we click "YES". </font></font></span></u></b><font style="vertical-align: inherit;"><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;">Here we specify the password. </font></u></b></span><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;">At this stage, the installation of mysql and apache 2 is completed. </font></u></b></span><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;">Now we need to add phpmyadmin to the apache configuration:</font></u></b></span></font><br><b><u><span style="font-size:14px;"><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563803501_scriptgates_ruscreenshot_6.png"><img src="/uploads/posts/2019-07/medium/1563803501_scriptgates_ruscreenshot_6.png" class="fr-fic fr-dib" alt=""></a></span></u></b><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"></font></u></b></span><br><span style="font-size:14px;"><b><u><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563803539_scriptgates_ruscreenshot_7.png"><img src="/uploads/posts/2019-07/medium/1563803539_scriptgates_ruscreenshot_7.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"></font></u></b></span><br><br><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"></font></u></b></span><pre class="language-markup"><code class="php">После того, как установка окончена, Вы должны добавить phpmyadmin в конфигурацию apache командой:<font></font>
sudo nano /etc/apache2/apache2.conf<font></font>
<font></font>
И добавить следующую строку в конец файла:<font></font>
<span class="keyword">Include</span> /etc/phpmyadmin/apache.conf<font></font>
<font></font>
Для того, чтобы постепенно спуститься в конец файла, используйте Ctrl+V.<font></font>
<font></font>
Снова перезапустим службы Apache командой:<font></font>
sudo service apache2 restart</code></pre><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Download additional packages:</font></font></u></b></span><pre class="language-markup"><code class="undefined">apt-get install -y php5-ssh2(Для Debian 9: apt-get install -y php-ssh2 )<font></font>
<font></font>
apt-get install -y sudo screen htop nano tcpdump ssh zip unzip mc nload gdb lsof<font></font>
<font></font>
apt-get install -y libssh2-php</code></pre><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">In order for everything to work correctly, mod_rewrite must be cut there</font></font></u></b></span><pre class="language-markup"><code class="undefined">Включаем модуль mod_rewrite командой:<font></font>
a2enmod rewrite<font></font>
<font></font>
Перезагружаем Apache командой:<font></font>
service apache2 restart</code></pre><br><span style="font-size:14px;"><b><u><b> <span style="color:rgb(226,80,65);"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Panel Installation</font></font></span></b></u></b></span><br><br><span style="font-size:14px;"><b><u><b><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Download the panel and database:</font></font></b></u></b></span><pre class="language-markup"><code class="javascript">Логин ih1560707_gamepl<font></font>
Пароль scriptgates<font></font>
Панель ftp:<span class="comment">//193.124.176.46/gamepl/files/srv/gamepl.zip</span>
База ftp:<span class="comment">//193.124.176.46/gamepl/files/srv/gamepl.sql</span></code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">We go to the server via FileZilla in the / var / www / html </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">folder. We delete index.html from there and upload the files from the downloaded archive. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">While our panel is poured onto the server, you can install the database. </font><font style="vertical-align: inherit;">To do this, go to the site: http: // Site domain / phpmyadmin </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Log in using the username and password that you specified when installing phpmyadmin. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Go to the "Databases" section, and create a database. </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804040_scriptgates_ruscreenshot_12.png"><img src="/uploads/posts/2019-07/medium/1563804040_scriptgates_ruscreenshot_12.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">And download the downloaded database. </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804144_scriptgates_ruscreenshot_13.png"><br><img src="/uploads/posts/2019-07/medium/1563804144_scriptgates_ruscreenshot_13.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Go to FileZilla and follow the path: / var / www / html / data and open the conf.ini file. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">There we only change</font></font><pre class="language-markup"><code class="javascript"><span class="string">"domain"</span>:<span class="string">"host"</span> <span class="comment">// Ip/Домен машины</span>
<span class="string">"db_users_host"</span>:<span class="string">"127.0.0.1"</span> <span class="comment">//Ip адрес Mysql сервера</span>
<span class="string">"db_users_name"</span>:<span class="string">"gamepl"</span> <span class="comment">// Название базу данных</span>
<span class="string">"db_users_user"</span>:<span class="string">"root"</span> <span class="comment">// Пользователь</span>
<span class="string">"db_users_pass"</span>:<span class="string">"passwd"</span> <span class="comment">// Пароль</span></code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">We go to the site, we see such a warning:</font></font><pre class="language-markup"><code class="php">Site error: the ionCube PHP Loader needs to be installed. <span class="keyword">This</span> is a widely used PHP extension <span class="keyword">for</span> running ionCube <span class="keyword">protected</span> PHP code, website security <span class="keyword">and</span> malware blocking. Please visit get-loader.ioncube.com <span class="keyword">for</span> install assistance. Site error: the ionCube PHP Loader needs to be installed. <span class="keyword">This</span> is a widely used PHP extension <span class="keyword">for</span> running ionCube <span class="keyword">protected</span> PHP code, website security <span class="keyword">and</span> malware blocking. Please visit get-loader.ioncube.com <span class="keyword">for</span> install assistance.</code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">We need to install IonCube </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Download the latest version of IonCube from the attached files that are&nbsp; </font></font><b><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">below</font></font></b><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> &nbsp;this post. </font><font style="vertical-align: inherit;">Open the archive, go to the ioncube folder. </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Next, go to FileZille and go along the path:&nbsp; </font></font><a href="https://scriptgates.ru/redirect?to=aHR0cHM6Ly9kb3dubG9hZHMuaW9uY3ViZS5jb20vbG9hZGVyX2Rvd25sb2Fkcy9pb25jdWJlX2xvYWRlcnNfbGluX3g4Ni02NC56aXA=" rel="nofollow noopener external noreferrer" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">"/ usr / lib / php5 /</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> there may be another number." </font><font style="vertical-align: inherit;">We throw all the files into this folder. </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Next, open PuTTy and go to the server, and insert these commands:</font></font><pre class="language-markup"><code class="php">Для Debian <span class="number">9</span>:<font></font>
<font></font>
    <span class="keyword">echo</span> <span class="string">"zend_extension=ioncube_loader_lin_7.0.so"</span>&gt;&gt;<span class="string">"/etc/php/7.0/apache2/php.ini"</span>
    <span class="keyword">echo</span> <span class="string">"zend_extension=ioncube_loader_lin_7.0.so"</span>&gt;&gt;<span class="string">"/etc/php/7.0/cli/php.ini"</span><font></font>
<font></font>
Для Debian <span class="number">8</span>:<font></font>
<font></font>
    <span class="keyword">echo</span> <span class="string">"zend_extension=ioncube_loader_lin_5.6.so"</span>&gt;&gt;<span class="string">"/etc/php5/apache2/php.ini"</span>
    <span class="keyword">echo</span> <span class="string">"zend_extension=ioncube_loader_lin_5.6.so"</span>&gt;&gt;<span class="string">"/etc/php5/cli/php.ini"</span></code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">and reboot the server with the command: reboot </font></font><br><br><span style="font-size:14px;"><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Everything, the site is installed. </font></font></u></b></span><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Then we need to go to the / etc / apache2 directory and open the apache2.conf file. </font><font style="vertical-align: inherit;">Find ~ 153 string </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">And replace with this:</font></font><pre class="language-markup"><code class="xml"><span class="tag">&lt;<span class="title">Directory</span> /&gt;</span><font></font>
    Options FollowSymLinks<font></font>
    AllowOverride All<font></font>
    Require all granted<font></font>
<span class="tag">&lt;/<span class="title">Directory</span>&gt;</span><font></font>
<font></font>
<span class="tag">&lt;<span class="title">Directory</span> /<span class="attribute">usr</span>/<span class="attribute">share</span>&gt;</span><font></font>
    AllowOverride All<font></font>
    Require all granted<font></font>
<span class="tag">&lt;/<span class="title">Directory</span>&gt;</span><font></font>
<font></font>
<span class="tag">&lt;<span class="title">Directory</span> /<span class="attribute">var</span>/<span class="attribute">www</span>/&gt;</span><font></font>
    Options Indexes FollowSymLinks<font></font>
    AllowOverride All<font></font>
    Require all granted<font></font>
<span class="tag">&lt;/<span class="title">Directory</span>&gt;</span><font></font>
<font></font>
#<span class="tag">&lt;<span class="title">Directory</span> /<span class="attribute">srv</span>/&gt;</span><font></font>
#    Options Indexes FollowSymLinks<font></font>
#    AllowOverride All<font></font>
#    Require all granted<font></font>
#<span class="tag">&lt;/<span class="title">Directory</span>&gt;</span></code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Now we need to configure the task scheduler. </font><font style="vertical-align: inherit;">i.e. cron </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Go to PuTTY and write:</font></font><pre class="language-markup"><code class="javascript">crontab -e<font></font>
<font></font>
Нажимаем <span class="number">1</span>, Потом CTRL+ V(Это перемещает нас в конец файла)<font></font>
<font></font>
И вставляем: *<span class="regexp">/1 * * * * cd /</span><span class="keyword">var</span>/www/html/;php5 cron.php</code></pre><br><b><u><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">This completes the installation. </font></font></u></b><br><br><b><span style="font-size:14px;color:rgb(226,80,65);"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">[Installing servers on this machine]</font></font></span></b><br><br><b><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Let's start the installation with our favorite Minecraft game. </font><font style="vertical-align: inherit;">With her was all the major hemorrhoids. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">We connect to the machine through PuTTy and the first thing we need to create a folder for our servers</font></font></b><br><pre class="language-markup"><code class="perl"><span class="keyword">mkdir</span> host<font></font>
cd host<font></font>
<span class="keyword">mkdir</span> servers</code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Go to the root folder and download the game installer</font></font><br><pre class="language-markup"><code class="undefined">cd<font></font>
<font></font>
wget hos7.ru/gamepl/install.sh &amp;&amp; sh install.sh</code></pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select item 2 </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804630_scriptgates_rusnimok-ekrana-2019-06-24-v-7_42_33.png"><img src="/uploads/posts/2019-07/medium/1563804630_scriptgates_rusnimok-ekrana-2019-06-24-v-7_42_33.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Install only the "basic packages for the machine", then install FTP. </font><font style="vertical-align: inherit;">Java does not touch. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Next, go to the main menu and go to the item "Installing games on the machine." </font><font style="vertical-align: inherit;">After the transition, select item 11. I chose the version of the lane - 1.9. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">After downloading the file, go to the folder where the file was installed and rename it to "start.jar" </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804684_scriptgates_rusnimok-ekrana-2019-06-24-v-7_50_15.png"><img src="/uploads/posts/2019-07/medium/1563804684_scriptgates_rusnimok-ekrana-2019-06-24-v-7_50_15.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Now let's check if we have java. </font><font style="vertical-align: inherit;">Checked by the command "java -version" </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804721_scriptgates_rusnimok-ekrana-2019-06-24-v-7_52_20.png"><img src="/uploads/posts/2019-07/medium/1563804721_scriptgates_rusnimok-ekrana-2019-06-24-v-7_52_20.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Java is missing. </font><font style="vertical-align: inherit;">Install it with the command "apt-get install default-jre" </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804749_scriptgates_rusnimok-ekrana-2019-06-24-v-7_52_36.png"><img src="/uploads/posts/2019-07/medium/1563804749_scriptgates_rusnimok-ekrana-2019-06-24-v-7_52_36.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">After installation, check availability. </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804737_scriptgates_rusnimok-ekrana-2019-06-24-v-7_54_56.png"><img src="/uploads/posts/2019-07/thumbs/1563804737_scriptgates_rusnimok-ekrana-2019-06-24-v-7_54_56.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Next, go to the panel under the admin panel. </font><font style="vertical-align: inherit;">Go to the "Locations" and create a new location. </font><font style="vertical-align: inherit;">Next, go to the Physical server and create a new server. </font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804864_scriptgates_rusnimok-ekrana-2019-06-24-v-17_35_19.png"><img src="/uploads/posts/2019-07/medium/1563804864_scriptgates_rusnimok-ekrana-2019-06-24-v-17_35_19.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">I have such parameters.</font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804808_scriptgates_rusnimok-ekrana-2019-06-24-v-17_43_32.png"><img src="/uploads/posts/2019-07/medium/1563804808_scriptgates_rusnimok-ekrana-2019-06-24-v-17_43_32.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804875_scriptgates_rusnimok-ekrana-2019-06-24-v-17_46_28.png"><img src="/uploads/posts/2019-07/medium/1563804875_scriptgates_rusnimok-ekrana-2019-06-24-v-17_46_28.png" class="fr-fic fr-dib" alt=""></a><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804878_scriptgates_rusnimok-ekrana-2019-06-24-v-17_47_33.png"><img src="/uploads/posts/2019-07/medium/1563804878_scriptgates_rusnimok-ekrana-2019-06-24-v-17_47_33.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Where versions </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1. Name of version </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2. Path where the kernel lies [/ host / servers / mineTHERE VERSION OF THE DOWNLOADED VERSION] </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Save and check. </font><font style="vertical-align: inherit;">To start the server correctly, you need to&nbsp; </font><a href="https://yadi.sk/d/Phzvs39V62nQpg" rel="noopener noreferrer external" target="_blank"><font style="vertical-align: inherit;">upload the file</font></a><font style="vertical-align: inherit;"> to: / var / www / folder with the site / engine / classes / games</font></font><br><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563804995_scriptgates_rusnimok-ekrana-2019-06-24-v-17_51_55.png"><img src="/uploads/posts/2019-07/medium/1563804995_scriptgates_rusnimok-ekrana-2019-06-24-v-17_51_55.png" class="fr-fic fr-dib" alt=""></a><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563805008_scriptgates_rusnimok-ekrana-2019-06-24-v-18_04_19.png"><img src="/uploads/posts/2019-07/medium/1563805008_scriptgates_rusnimok-ekrana-2019-06-24-v-18_04_19.png" class="fr-fic fr-dib" alt=""></a><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563805030_scriptgates_rusnimok-ekrana-2019-06-24-v-18_05_15.png"><img src="/uploads/posts/2019-07/medium/1563805030_scriptgates_rusnimok-ekrana-2019-06-24-v-18_05_15.png" class="fr-fic fr-dib" alt=""></a><a class="highslide" href="https://hos7.ru/uploads/posts/2019-07/1563805083_scriptgates_rusnimok-ekrana-2019-06-24-v-18_06_39.png"><img src="/uploads/posts/2019-07/medium/1563805083_scriptgates_rusnimok-ekrana-2019-06-24-v-18_06_39.png" class="fr-fic fr-dib" alt=""></a><font style="vertical-align: inherit;"></font><a href="https://yadi.sk/d/Phzvs39V62nQpg" rel="noopener noreferrer external" target="_blank"><font style="vertical-align: inherit;"></font></a><font style="vertical-align: inherit;"></font><br>

	<div class="attachment_position">
	
		<a href="https://hos7.ru/engine/download.php?id=147" title="Downloads: 18">
		
			<div class="attachment_main"></div>
			
			<div class="attachment_block">
			
				<div class="attachment_block_2">
				
					<div class="attachment_block_3">

						<div class="attachment_file">
							<span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Download Now</font></font></span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
							Extension: zip
						</font></font></div>

						<div class="attachment_size"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
							11.9 Mb
						</font></font></div>

						<div class="attachment_border"></div>

					</div>
					
				</div>

				<div class="icon_attachment"></div>
				
			</div>
			
		</a>
		
	</div>
	


<script>

	$(".attachment_position").on({

		mouseenter: function () {

			var attachment_target = $(this);

			$(attachment_target).addClass('attachment_active');

			setTimeout(function() {
			
				$(".attachment_active .attachment_block_2").css({
					"margin": "6px 0 0 0"
				});

				$(".attachment_active .attachment_block_3").css({
					"margin": "0 0 0 -17px"
				});

				setTimeout(function() {
				
					$(".attachment_active .icon_attachment").css({
						"opacity": "1",
						"visibility": "visible",
						"-webkit-transform": "translateY(0)",
						"-moz-transform": "translateY(0)",
						"-ms-transform": "translateY(0)",
						"transform": "translateY(0)"
					});
					
				}, 400);
				
			}, 400);

		}, mouseleave: function () {

			var attachment_target = $(this);

			setTimeout(function() {
			
				$(".attachment_active .attachment_block_2").css({
					"margin": "6px 0 0 37px"
				});

				$(".attachment_active .attachment_block_3").css({
					"margin": "0 0 0 4px"
				});

				$(attachment_target).removeClass('attachment_active');
				
			}, 400);

			setTimeout(function() {
			
				$(".attachment_active .icon_attachment").css({
					"opacity": "0",
					"visibility": "hidden",
					"-webkit-transform": "translateY(-20%)",
					"-moz-transform": "translateY(-20%)",
					"-ms-transform": "translateY(-20%)",
					"transform": "translateY(-20%)"
				});
				
			}, 0);

			setTimeout(function() {
			
				$(".attachment_active .icon_attachment").css({
					"opacity": "0",
					"visibility": "hidden",
					"-webkit-transform": "translateY(-20%)",
					"-moz-transform": "translateY(-20%)",
					"-ms-transform": "translateY(-20%)",
					"transform": "translateY(-20%)"
				});
				
			}, 800);
    	
		}
		
	});
	
</script>
<br><br><span style="font-size:14px;"><b><!--spoiler_text_end--></b></span></div>
