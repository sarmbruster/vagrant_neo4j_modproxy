#!/usr/bin/env bash
               
# setup apt repo for neo4j
wget -O - http://debian.neo4j.org/neotechnology.gpg.key| apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

apt-get update
apt-get upgrade
apt-get install -y apache2 neo4j

# listen on all interfaces 
#rm /etc/neo4j/neo4j-server.properties; ln -s /vagrant/etc/neo4j/neo4j-server.properties /etc/neo4j
#/etc/init.d/neo4j-service restart

a2enmod proxy_http
a2enmod ssl
a2ensite default-ssl
rm /etc/apache2/sites-available/default; ln -s /vagrant/etc/apache2/sites-available/default /etc/apache2/sites-available/
rm /etc/apache2/sites-available/default-ssl; ln -s /vagrant/etc/apache2/sites-available/default-ssl /etc/apache2/sites-available/
apachectl restart