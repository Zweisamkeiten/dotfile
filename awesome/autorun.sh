#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run ~/c/b/keyboard.sh
run ~/c/b/display.sh
run ~/c/b/audio.sh
run ~/c/b/app.sh
run ~/c/b/rclone.sh
