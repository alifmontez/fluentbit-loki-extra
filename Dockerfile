FROM amazon/aws-for-fluent-bit:latest

USER root

RUN amazon-linux-extras install ruby2.6
RUN yum -y install ruby-devel
RUN gem install fluent-plugin-grafana-loki
RUN gem install fluent-plugin-concat
RUN gem sources --clear-all

COPY etc /fluent-bit/etc
