#!/bin/bash

echo "Atualizando o ubuntu"
apt update

echo "instalando o unzip"
apt install unzip -y

echo "instalando o apache2"
apt install apache2 -y

echo "baixando o arquivo e alocando para pasta html"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "deszipando os arquivos"
unzip -u /tmp/main.zip

cp -R /tmp/linux-site-dio-main/*  /var/www/html