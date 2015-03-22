FROM ubuntu:14.04.2

MAINTAINER khiraiwa

# Initialize apt-get
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "apache2", "libapache2-mod-php5", "php5-cli", "php-apc", "php5-mcrypt", "-y"]
RUN ["a2enmod", "php5"]
CMD ["aache2ctl", "restart"]
