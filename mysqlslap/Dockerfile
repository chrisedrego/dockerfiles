FROM alpine:3.4
RUN apk add --update mariadb && rm -rf /var/cache/apk/*
ENTRYPOINT ["mysqlslap"]