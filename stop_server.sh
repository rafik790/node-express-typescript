#!/bin/bash
# Stop all servers and start the server
#sudo pm2 stop all
# checking if 'appname' running in pm2
PM2_EXIST=$(if sudo pm2 list 2> /dev/null | grep -q index; then echo "Yes" ; else echo "No" ; fi)
if [ $PM2_EXIST = Yes ] ; then
    sudo pm2 stop all
    echo "Stop index."
fi