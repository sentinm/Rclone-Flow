#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip -qqj rclone-current-linux-amd64.zip
rm -rf rclone-current-linux-amd64.zip
export PATH=$PWD/:$PATH
