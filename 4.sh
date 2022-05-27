#!/bin/bash

while true;do
	echo 'a - listar diretório de uma pasta'
	echo 'b - listar só arquivos executáveis'
	echo 'c - listar só links simbólicos'
	echo 'x - sair do script'
	echo 'r - exibir frase legal'
	read -p "escolha uma alternativa: " opc
	case $opc in
		"a") read -p 'escolha a pasta: ' pasta
			ls -al $pasta | grep "^d"
			;;
		"b") read -p 'escolha a pasta: ' pasta
			ls -l | grep '-..x' ;;
		"c") read -p 'escolha a pasta: ' pasta
			for i in $(ls $pasta);
			do
				if [ -h $pasta ];then
					echo $i
				fi
			done;;
			"x") break;;
		"r")echo "Transforme as pedras que você tropeça nas pedras da sua escada."
	esac
done	
		
