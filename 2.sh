#!/bin/bash

arq=$1

tr -s '\n' < $arq > new_arq
mv new_arq $arq
cat $arq
