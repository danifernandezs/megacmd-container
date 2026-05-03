#!/bin/bash

mega-logout
mega-login $EMAIL $PASSWORD
sleep 2
mega-cmd << EOF
masterkey
EOF
sleep 2
mega-logout
