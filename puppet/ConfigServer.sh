#! /bin/bash


#yum install -y puppet-server
echo "Ip du client " 
read a
echo "hostname du client"
read b
echo "nom du client" 
read c
echo "$a $b $c" >> /etc/hosts


