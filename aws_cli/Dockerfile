FROM python:alpine
RUN apk add --update curl
ARG CLI_VERSION=1.17.7
RUN pip install --no-cache-dir awscli==$CLI_VERSION
CMD sh