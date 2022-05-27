#!/bin/bash

read -p "Insire um ip: " IP

for a in {1..4};do
	oct=$(cut -d '.' -f $a <<< "$IP")
	oct_em_bin="$(bc < <(echo "obase=2;$oct"))"
	while [ ${#oct_em_bin} -lt 8 ]; do
		oct_em_bin="0$oct_em_bin"
	done
	echo "octeto #$n: $oct em binário $oct_em_bin"
done 
