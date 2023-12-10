#!/bin/bash

mega-logout
mega-login $EMAIL $PASSWORD
echo "Listing Files"
mega-ls
mega-ls > /tmp/filestodelete
echo "Time to delete all files"
cat /tmp/filestodelete | while read line
do
echo $line
mega-rm -rf  "$line"
done
echo "Listing Files AGAIN"
mega-ls
mega-logout
