#!/bin/bash
#sed -i "s/^/\'/g" input.csv 
#sed -i "0,/,/s//\',/" input.csv
while IFS="," read -r nombre email usuario grupo pais
do
	./create-user "$nombre" $email $usuario $grupo $pais
#	echo $nombre $email $usuario $grupo $pais
done < input.csv
