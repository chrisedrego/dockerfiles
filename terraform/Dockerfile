FROM alpine
ENV TERRAFORM_VERSION=0.12.12
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip
CMD ["/bin/sh"]