#!/bin/bash

MENU (){
dialog	--title "Redes"	--menu "Escolha uma opção" 0 0 0 IP "Adicionar IP" RIP "Remover IP" Host "Alterar nome interno" DNS "Configurar servidor DNS"


case $MENU in 
	1)IP   ;;
	2)RIP  ;;
	3)Host ;;
	4)DNS  ;;
esac
}
MENU	

IP() {
dialog --title "IP" --inputbox "Digite o IP desejado (Incluido a faixa)"
ip addr add $IP dev eth0
}	
IP
