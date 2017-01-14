#!/bin/bash

# Bash script originally intended to run rescuetime since it's not found on the menu or by searching
# Updated script to be able to run any application by searching the executable directory of the App
# Updated so that application doesn't close when the parent terminal is closed and prevents the creation of a nohup.out in the directory the app is run from

read -p "Enter application you wish to run : " appName
appDirectory=$(which $appName)
echo "Executing $appDirectory"
nohup $appDirectory > /dev/null &

