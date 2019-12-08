#!/bin/sh
TERRAFORM_VERSION=0.12.12
echo $TERRAFORM_VERSION
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d .
docker build -t chrisedrego/terraform-busybox .
docker push chrisedrego/terraform-busybox