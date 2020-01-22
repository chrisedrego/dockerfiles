FROM python:alpine
ARG CLI_VERSION=1.17.7
RUN pip install --no-cache-dir awscli==$CLI_VERSION
WORKDIR /aws
CMD sh