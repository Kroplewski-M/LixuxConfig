#!/bin/bash

startdocker(){
    if systemctl is-active --quiet docker; then
      echo "Docker is already running."
    elif systemctl start docker; then
      echo "Docker started successfully."
    else
      echo "Failed to start Docker."
      return 1
    fi
    return 0
}
startmssql(){
  startdocker || return 1
  echo "Starting container 'sql1'..."
  if sudo docker start sql1 then
    echo "Container 'sql1' started successfully."
  else
    echo "Failed to start container 'sql1'."
    return 1
  fi
  return 0
}
