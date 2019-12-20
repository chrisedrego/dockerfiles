FROM alpine
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.15.0-rc.0/prometheus-2.15.0-rc.0.linux-amd64.tar.gz && \
    tar xvfz prometheus-*.tar.gz && rm -rf prometheus-2.15.0-rc.0.linux-amd64.tar.gz && mv prometheus-2.15.0-rc.0.linux-amd64 prom && cd prom
# RUN cd prometheus-2.15.0-rc.0.linux-amd64
RUN chmod +x /prom/prometheus && ln ./prom/prometheus /usr/bin/
COPY prometheus.yml ./prom
EXPOSE 9090
WORKDIR /prom
ENTRYPOINT [ "/usr/bin/prometheus" ]
CMD        [ "--config.file=prometheus.yml", \
             "--storage.tsdb.path=/prometheus"]