# vagrant-neo4j-modproxy

This repository contains a sample setup for running neo4j behind a Apache webserver using mod_proxy.

Additionally SSL is enabled and authentication is used. There is one user configured with username = neo4j, password = neo4j.

## usage

* install vagrant
* call `vagrant up`

Installation will take some time to download images and packages

When installation has finished, point your local webbrowser to https://localhost:8443 or http://localhost:8080.