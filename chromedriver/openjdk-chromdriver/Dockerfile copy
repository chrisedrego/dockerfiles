FROM openjdk:8-jre-alpine
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories &&  echo "http://dl-cdn.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories && echo "http://dl-4.alpinelinux.org/alpine/v3.4/main" >> /etc/apk/repositories  && echo "http://dl-4.alpinelinux.org/alpine/v3.4/community" >> /etc/apk/repositories
RUN apk update && apk upgrade
RUN apk add chromium chromium-chromedriver