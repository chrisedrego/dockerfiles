#!/bin/sh

echo 'alias dde="killall dockerd"' >> ~/.bashrc
echo "Starting the Docker Daemon"
dockerd &
echo "Started the Docker Daemon"
/bin/bash