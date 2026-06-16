#!/bin/bash

NAME=$(curl -s -m 10 https://randomuser.me/api/ | jq -r '.results[0].name | "\(.first) \(.last)"')
[ -z "$NAME" ] || [ "$NAME" = "null" ] && NAME="Fallback Name"

mega-logout
mega-signup $EMAIL $PASSWORD --name="$NAME"
mega-logout
