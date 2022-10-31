FROM amazon/aws-for-fluent-bit:latest

USER root

RUN yum install ruby-devel
RUN gem install fluent-plugin-grafana-loki
RUN gem install fluent-plugin-concat
RUN gem sources --clear-all

COPY etc /fluent-bit/etc
