FROM ubuntu:18.04

LABEL maintainer="chrisedrego@gmail.com"

RUN apt-get update && apt-get install apt-transport-https -y 
RUN apt-get install curl -y
RUN apt-get install gnupg -y

RUN apt-get update && apt-get install curl apt-transport-https lsb-release gnupg -y 
RUN apt-get install rsync -y && apt-get install git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y build-essential nodejs
RUN npm install npm@latest -g && npm install -g @angular/cli
RUN node -v && npm -v 
RUN git config credential.helper store || echo "Setting the Git Credentials"
RUN ng config -g cli.warnings.versionMismatch false || echo "MISMATCH WARNING"
RUN apt-get update
RUN curl -sL https://aka.ms/InstallAzureCLIDeb |  bash

