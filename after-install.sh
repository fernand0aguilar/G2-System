prestaShopFile=prestashop_1.6.1.11.zip


echo "Atualizando lista de pacotes APT..."


sudo apt-get -qq update

sudo apt-get install -y software-properties-common python-software-properties python-pycurl


echo ">>>> Instalando Apache 2 ..."
sudo apt-get install -y apache2

echo ">>>> Instalando PHP 5 ..."
sudo apt-get install -y php5
sudo apt-get install -y -qq libapache2-mod-php5



echo ">>>> Configurando servidor mySql ... "

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password prestashop'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password prestashop'
sudo apt-get install -y -qq mysql-server-5.5
sudo apt-get install -y php5-xmlrpc
sudo apt-get install -y php5-mcrypt
sudo apt-get install -y php5-mysql


sudo a2enmod rewrite

rm -rf /var/www/html

ln -fs /vagrant /var/www/html

sudo service apache2 restart


cd /vagrant

wget https://download.prestashop.com/download/old/$prestaShopFile --no-verbose


echo "Instalando PrestaShop"
echo "---------------------"
sudo apt-get install -y unzip
cd /var/www/html
unzip -qq /home/vagrant/$prestaShopFile


mysql -uroot -pprestashop -e 'create database prestashop'
