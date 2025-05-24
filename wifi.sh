#!/bin/bash


connectwifi(){
  local ssid="$1"
  if [ -z "ssid" ]; then
    echo "enter a wifi name (SSID)"
    return 1
  fi
  nmcli dev wifi connect "$ssid" --ask
}
disconnectwifi(){
  nmcli dev disconnect wlan0
}
wifilist(){
  nmcli dev wifi list
}
