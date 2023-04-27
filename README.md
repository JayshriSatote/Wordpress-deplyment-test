# Wordpress-deployment test
# deploying wordpress website using nginx reverse proxy 

## commands usefull for deploying wordpress application

1- Installing dependencies:

sudo apt update

sudo apt install nginx mysql-server php-fpm php-mysql

2- Creating Database:

sudo mysql -u root -p

CREATE DATABASE wordpress;

GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY 'password';

FLUSH PRIVILEGES;

EXIT;

3- Downloading wordpress:

curl -O https://wordpress.org/latest.tar.gz

tar xzvf latest.tar.gz

4.Automation
-Jenkins-github ingtegration

-creating docker image
 
docker build -t <tag to be given to image> <location where dockerfile is>
 

