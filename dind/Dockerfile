FROM docker:18.09.0-dind
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# CMD ["/usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=vfs"]
