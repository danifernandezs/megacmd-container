#!/bin/bash 

mega-logout
mega-login $EMAIL $PASSWORD
echo "#####################"
echo "##       FILES      #"
echo "#####################"
mega-ls
echo "DOWNLOAD time"
cd /tmp/files/
mega-get * .
mega-logout