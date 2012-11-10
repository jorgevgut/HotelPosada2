#!/bin/sh

# Entramos en la carpeta
#cd trunk/HotelPosada2

# Arrancamos grails
grails run-app  &

echo Aplicacion disponible en:
echo http://localhost:8080/HotelPosada

# Abrimos la página
xdg-open http://localhost:8080/HotelPosada &