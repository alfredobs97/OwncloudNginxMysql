#!/bin/bash
echo "Escribir link de la version a descargar"
read version
cd owncloud && wget $version 
echo "Escribir nombre del archivo descargado "
read archivo
unzip $archivo && mv $archivo owncloud
