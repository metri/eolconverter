#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
        echo "please run this script as root"
        exit 1
else
        echo "installin eol convertor"
        if [[ -s 'eol' ]];then
                echo "copy file"
                cp eol /usr/bin
                echo "set executing script"
                chmod +x /usr/bin/eol
                echo "installation complete"
        fi
fi
