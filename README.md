# Firewall-Manual-Kali-Linux
Firewall manual con iptables e ip6tables- bloqueo total y restauracion de conexion

## Bloqueo total y Restauracion de red en Kali Linux con IPTables

Este repositorio contiene dos scripts para Kali Linux que permiten:

- Aplicar un bloqueo total del tráfico de red (IPv4 e IPv6)
- Restaurar el acceso completo a la red

## Archivos

- `bt.sh`: Aplica reglas de firewall para bloquear todo el tráfico entrante y saliente.
- `rr.sh`: Limpia las reglas y restablece el flujo de tráfico.

## Requisitos

- Kali Linux
- Permisos de superusuario (`sudo`)
- Herramienta `conntrack` instalada

## Ejecución

```bash
chmod +x bt.sh rr.sh
sudo ./bt.sh
sudo ./rr.sh
