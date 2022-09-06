#!/bin/bash
while :
do
echo "Введите 2 числа: "
read a b
re='^[0-9]+$'
if ! [[ $b =~ $re ]] ; then
   echo "прочти сообщение выше" >&2; exit 1
fi
if [[ -z "$a" ]]; then
echo "бб"
break
fi
gcd() (
    if (( $1 % $2 == 0)); then
        echo $2
     else
        gcd $2 $(( $1 % $2 ))
    fi
)
echo -n "GCD="
gcd $a $b

done