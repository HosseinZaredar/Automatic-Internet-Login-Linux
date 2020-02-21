#!/bin/bash

# internet.aut.ac.ir username and password
USERNAME="my_username"
PASSWORD="my_password"

# getting the wi-fi name my device has conneted to
ssid=`nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d: -f2`

# if it equals to the ones at AUT
if [ "$ssid" = "Wi-Fi" ] || [ "$ssid" = "Wi-Fi 5GHz" ] || [ "$ssid" = "CEIT" ]  ; then
  # sending post request having my username and password
  curl -d "username=${USERNAME}&password=${PASSWORD}" https://login.aut.ac.ir/login
fi
