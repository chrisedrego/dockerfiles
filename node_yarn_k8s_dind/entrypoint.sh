#!/bin/sh
echo "Starting the Docker Daemon"
dockerd &
echo "Started the Docker Daemon"
/bin/bash