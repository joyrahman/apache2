sudo apt-get install apache2 collectd git -y
sudo apt-get install librrds-perl libconfig-general-perl libhtml-parser-perl  libregexp-common-perl
sudo /etc/init.d/collectd restart


git clone https://github.com/joyrahman/apache2.git
cd apache2
sudo cp -rf www/ /var/www
sudo cp -rf sites-available/ sites-enabled/ /etc/apache2
sudo cp -rf apache2.conf httpd.conf /etc/apache2/

sudo chmod a+x /var/www/collection3/bin/*.cgi

sudo /etc/init.d/apache2 restart

