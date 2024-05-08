#!/bin/bash

if [ $# -gt 0 ]; then
    echo "Your command line contains $# arguments" 
else
    echo "Your command line contains no arguments"
    exit 1; 
fi 

argument="$1" 

for VAR in 1 2 3 4 5
do 
  uname;
  whoami; 
  uptime;
  uname -r; 
  uname -m; 
  uname -a;
  ifconfig; 
  sysctl -a;
  sw_vers;
  df -h;
  # print the number in loop 
  echo $VAR;
  echo $argument;
  sleep 0.5;
done;

if [ $argument == "start" ]; then
  echo "Starting the server"
elif [ $argument == "stop" ]; then
  echo "Stopping the server"
else
  echo "Invalid argument"
  exit 1; 
fi 
