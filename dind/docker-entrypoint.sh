#!/bin/sh
echo "Starting the Docker Daemon"
dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=vfs && /bin/sh
echo "Starting the Docker Daemon"