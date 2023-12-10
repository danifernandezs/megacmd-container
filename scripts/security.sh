#!/bin/bash

mega-logout
mega-login $EMAIL $PASSWORD
sleep 5
mega-cmd << EOF
confirm --security
EOF
sleep 5
mega-logout
