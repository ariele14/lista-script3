#!/bin/bash
echo -e "insira uma senha que tenha no mínimo 5 caracteres, uma letra maiúscula e um número\n"
read -s senha
echo "$senha" \ grep -qP '^.*(?=.{5,})(?=.*[A-Z](?=.*\d)(?=.*[a-z]).*$';
teste=$?

if [ $teste = '0' ];then
	echo 'senha válida'
else
	echo 'senha inválida :('
fi	
