#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Download da aplicação do GitHub..."

wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

cd /tmp
unzip /tmp/main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Servidor Web Configurado!!"



