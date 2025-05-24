#!/bin/bash

shh(){
  exec hyprlock &

  sleep 1

  systemctl suspend
}

