FROM python:3.7-slim
LABEL maintainer="chrisederego@gmail.com"

# Never prompts the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
# Use the Linux terminal
ENV TERM linux

# Airflow
ARG AIRFLOW_VERSION=1.10.2
ARG AIRFLOW_HOME=/usr/local/airflow
ARG AIRFLOW_DEPS=""
ARG PYTHON_DEPS=""
ENV AIRFLOW_GPL_UNIDECODE yes

# Define en_US.
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8

COPY requirements.txt .
RUN pip install -r ./requirements.txt

RUN set -ex \
    && buildDeps=' \
        freetds-dev \
        libkrb5-dev \
        libsasl2-dev \
        libssl-dev \
        libffi-dev \
        libpq-dev \
        libpq5 \
    ' \
    && apt-get update -yqq \
    && apt-get upgrade -yqq \
    && apt-get install -yqq --no-install-recommends \
        $buildDeps \
        freetds-bin \
        build-essential \
        default-libmysqlclient-dev \
        apt-utils \
        curl \
        rsync \
        netcat \
        locales \
        git \
    && sed -i 's/^# en_US.UTF-8 UTF-8$/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 \
    && pip install -U pip setuptools wheel \
    && pip install pytz \
    && pip install pyOpenSSL \
    && pip install ndg-httpsclient && pip install psycopg2 \
    && pip install psycopg2-binary \
    && pip install pyasn1 \
    && pip install apache-airflow[crypto,celery,hive,jdbc,mysql,ssh${AIRFLOW_DEPS:+,}${AIRFLOW_DEPS}]==${AIRFLOW_VERSION} \
    && pip install apache-airflow[kubernetes] \
    && pip install 'redis>=2.10.5,<3' \
    && if [ -n "${PYTHON_DEPS}" ]; then pip install ${PYTHON_DEPS}; fi \
    && apt-get purge --auto-remove -yqq $buildDeps \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/doc-base \
    && rm -rf /usr/local/lib/python3.7/site-packages/airflow/example_dags/example_http_operator.py
# Install all the dependencies and removing the cache or temp

COPY script/entrypoint.sh /entrypoint.sh
COPY config.d/airflow.cfg ${AIRFLOW_HOME}/usr/local/airflow.cfg
RUN mkdir -p /usr/local/airflow/dags && mkdir -p /usr/local/airflow/logs
WORKDIR ${AIRFLOW_HOME}
# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["webserver"]
