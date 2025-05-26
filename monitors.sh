#!/bin/bash

laptopscreenoff(){
  hyprctl keyword monitor "eDP-1, disable"
}
laptopscreenon(){
  hyprctl keyword monitor "eDP-1,2880x1800@120,1920x0,1.5"
}
