#!/bin/bash

mega-logout
mega-login $EMAIL $PASSWORD
mega-ls
mega-df -h
mega-logout
