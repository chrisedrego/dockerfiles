FROM docker:18.09.0-dind
RUN apk add --update nodejs npm git nodejs-npm yarn curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl && mkdir -p $HOME/.kube
# RUN apk add --update docker openrc
# RUN rc-update add docker boot
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]