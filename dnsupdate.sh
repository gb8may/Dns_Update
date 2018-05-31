#!/bin/bash

###########################################
#         Autor: Mayara Gouveia           #
#           gb8may@gmail.com              #
# Script que gera atualizacoes para o DNS #
#              Release 1.0                #
###########################################

clear
echo "What is your main network interface?"
echo "e.g: eth0, eth1..."
read int
ifconfig $int > ifconfig_out
cat ifconfig_out |grep inet > filter
cut -c 14-28 filter > ip1
sed -n 1p ip1 > ip_updated
clear
echo "Updated IP info for $int:"
cat ip_updated
