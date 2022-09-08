#!/bin/bash

while :
do
echo "Ваше имя: "
read name
if [[ -z "$name" ]]; then
echo "давай бб"
break
fi

echo "лет скока: "
read age
if [[ $age -eq 0 ]]; then
echo "давай бб"
break
fi

if [ $age -le 16 ];
then
       	echo "$name, ребеночек ты еще дружек"
elif [ $age -le 25 ];
then
	echo "$name, оу, подросток"
else
	echo "$name, взрослый дядя\тетя..."
fi
done