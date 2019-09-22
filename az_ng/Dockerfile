FROM alpine:latest

RUN apk get update

RUN apk add git && apk add curl && git config --global credential.helper store || echo "Setting the Git Credentials" 

RUN apk add bash py-pip
RUN pip --no-cache install -U pip
RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make
RUN apk add --update gcc libc-dev fortify-headers linux-headers && rm -rf /var/cache/apk/* 
RUN pip install --upgrade pip
RUN pip --no-cache install azure-cli || echo "Installing Azure CLI"

