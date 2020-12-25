#!/bin/bash 

mega-logout
mega-signup $EMAIL $PASSWORD --name=$(echo $(curl -s http://names.drycodes.com/1?separator=space) |cut -d '[' -f2 |cut -d ']' -f1)
mega-logout