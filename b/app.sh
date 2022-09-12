#!/bin/bash

kdeconnect-indicator &

sleep 3

LC_CTYPE=zh_CN.UTF-8 emacs --bg-daemon &
#emacs --bg-daemon --with-x-toolkit=lucid
