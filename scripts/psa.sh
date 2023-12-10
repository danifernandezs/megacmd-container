#!/bin/bash

mega-logout
mega-login $EMAIL $PASSWORD
sleep 5
mega-cmd << EOF
psa --discard
EOF
sleep 5
mega-logout
