#!/bin/bash
echo "Actividad2 - 201901907"

#por si ocurre un error

set -o errexit

read -p "Ingrese el usuario de Github: " GITHUB_USER

github_id=$(curl -s https://api.github.com/users/$GITHUB_USER | jq '.id')
github_create_at=$(curl -s https://api.github.com/users/$GITHUB_USER | jq '.created_at')

#fecha del sistema

FECHA_ACTUAL=`date +"%d-%m-%Y"`

#Creamos el folder con la fecha del sistema

mkdir ./tmp/$FECHA_ACTUAL/saludos.log

# guardamos el mensaje en el archivo saludos.log

echo "Hola < $GITHUB_USER >. User ID: < $github_id > . Cuenta Creada El: < $github_create_at >" | tee "/tmp/$FECHA_ACTUAL/saludos.log"
#Mostramos el contenido con cat
cat /tmp/"$FECHA_ACTUAL"/saludos.log

