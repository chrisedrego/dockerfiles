FROM python:alpine
RUN apk add --update curl
ARG CLI_VERSION=1.17.7
RUN pip install --no-cache-dir awscli==$CLI_VERSION
RUN curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
RUN chmod +x kops-linux-amd64
RUN mv kops-linux-amd64 /usr/local/bin/kops
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl && mkdir -p $HOME/.kube
CMD sh