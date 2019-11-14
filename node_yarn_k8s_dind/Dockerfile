FROM node:8-slim
RUN apt-get -y update && \
    apt-get install -y libpng-dev gcc make g++ python python-dev curl tar git yarn

RUN apt update && apt upgrade
RUN apt install apt-transport-https ca-certificates curl software-properties-common gnupg2 -y
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt update
RUN apt install docker-ce -y

RUN apt-get update && sudo apt-get install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl

# RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]