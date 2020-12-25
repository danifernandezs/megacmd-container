#!/bin/bash 

mega-logout
mega-login $EMAIL $PASSWORD
for i in /tmp/files/*; do mega-put "$i";done;
echo "#####################"
echo "##       FILES      #"
echo "#####################"
mega-ls
mega-logout