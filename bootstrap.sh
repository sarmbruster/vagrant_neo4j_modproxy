#!/usr/bin/env bash
               
# use neo4j debian repo
wget -O - http://debian.neo4j.org/neotechnology.gpg.key| apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

apt-get update
apt-get upgrade
apt-get install -y apache2 neo4j
