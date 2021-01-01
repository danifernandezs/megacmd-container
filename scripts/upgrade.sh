#!/bin/bash 

mega-logout
mega-login $EMAIL $PASSWORD
mega-mkdir temp-upgrade-folder
sleep 15
mega-put /opt/scripts/5MB.zip temp-upgrade-folder/.
sleep 15
mega-put /opt/scripts/10MB.zip temp-upgrade-folder/.
sleep 15
mega-put /opt/scripts/20MB.zip temp-upgrade-folder/.
sleep 15
mega-ls -R temp-upgrade-folder
mega-rm -rf temp-upgrade-folder
sleep 15
mega-logout
