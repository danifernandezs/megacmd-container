#!/bin/bash

mega-logout
mega-signup $EMAIL $PASSWORD --name="$(curl -s https://api.namefake.com/ | jq -r '.name' | tr -d '\n' | sed 's/^\(.*\) \(.*\)$/\1 \2/')"
mega-logout
