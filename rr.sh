#!/bin/bash
echo "Restauracion de Acceso"

#Limpiar reglas IPv4
iptables -F
iptables -X
iptables -Z

#Restaurar Politicas
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT 
iptables -P FORWARD ACCEPT 

#Limpiar reglas IPv4
ip6tables -F
ip6tables -X
ip6tables -Z

#Restaurar Politicas
ip6tables -P INPUT ACCEPT
ip6tables -P OUTPUT ACCEPT 
ip6tables -P FORWARD ACCEPT 

echo "Conexion Restaurada"
