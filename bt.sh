#!/bin/bash
echo "Bloqueo total de red"

#Limpiar IPv4
iptables -F
iptables -X
iptables -Z

#Establece DROP
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

#Bloqueo de Interfaces activas 
iptables -A INPUT -i wlan0 -j DROP
iptables -A OUTPUT -o wlan0 -j DROP
iptables -A INPUT -i eth0 -j DROP
iptables -A OUTPUT -o eth0 -j DROP 
iptables -A INPUT -i lo -j DROP
iptables -A OUTPUT -o lo -j DROP 


#Limpiar IPv6
ip6tables -F
ip6tables -X
ip6tables -Z

#Establece DROP
ip6tables -P INPUT DROP
ip6tables -P OUTPUT DROP
ip6tables -P FORWARD DROP

#Bloqueo de Interfaces activas 
ip6tables -A INPUT -i wlan0 -j DROP
ip6tables -A OUTPUT -o wlan0 -j DROP
ip6tables -A INPUT -i eth0 -j DROP
ip6tables -A OUTPUT -o eth0 -j DROP 
ip6tables -A INPUT -i lo -j DROP
ip6tables -A OUTPUT -o lo -j DROP 

echo "Bloqueo Total Aplicado"
