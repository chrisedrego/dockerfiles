FROM ubuntu
# Installing the Dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential pkg-config make wget && \
    apt-get install -y tcl8.5 && \
    cd /tmp && wget http://download.redis.io/releases/redis-stable.tar.gz && tar xzf redis-stable.tar.gz && cd redis-stable && \
    make && make test || echo "Adding Failback" && make install || echo "Adding Failback"
RUN cp /tmp/redis-stable/src/redis-server /tmp/redis-stable/src/redis-cli  /usr/local/bin && \
    cp /tmp/redis-stable/redis.conf /etc/redis
CMD [ "redis-server", "/etc/redis/redis.conf"]
EXPOSE 6379