#!/bin/bash

rclone serve webdav /home/einsam/d/books --addr 0.0.0.0:8081 &
rclone serve webdav /home/einsam/m/v --addr 0.0.0.0:8080 &

