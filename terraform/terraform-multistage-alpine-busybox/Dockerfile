FROM alpine as source
ENV TERRAFORM_VERSION=0.12.12
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip

FROM busybox
COPY --from=source /usr/bin/terraform /usr/bin/terraform