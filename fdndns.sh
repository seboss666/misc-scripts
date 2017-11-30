#!/bin/bash
#Seboss666
#Force FDN public DNS servers

SUDO=""

if [ "$(id -u)" -ne "0" ]; then
	SUDO="sudo "

${SUDO} echo -ne 'nameserver 80.67.169.12\nnameserver 80.67.169.40' > /etc/resolv.conf
