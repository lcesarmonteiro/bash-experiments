#!/bin/bash

IN="aaaaa;bbbbbb"
IFS=";" read -ra ADDR <<< "$IN"
I=0; LEN=${#ADDR[@]}

COMMA_SEPARATED_LIST=""
for CURRENT in ${ADDR[@]}
do
    I=$(($I+1))
    CURRENT="\"$CURRENT\""
    [[ $I = $LEN ]] && SEP="" || SEP=","
    CURRENT="$CURRENT$SEP"
    COMMA_SEPARATED_LIST="$COMMA_SEPARATED_LIST$CURRENT"
done

echo $COMMA_SEPARATED_LIST
