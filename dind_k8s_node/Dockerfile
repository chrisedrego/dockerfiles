FROM node:8-slim
RUN apt-get -y update && \
    apt-get install -y libpng-dev gcc make g++ python python-dev curl tar git yarn apt-transport-https ca-certificates curl software-properties-common gnupg2 
# COPY config /root/.kube/config
RUN apt update && apt upgrade
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt update && apt install docker-ce -y

RUN apt-get update && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update && apt-get install -y kubectl
RUN mkdir -p /root/.kube/ && touch /root/.kube/config
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]