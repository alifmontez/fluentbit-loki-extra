FROM amazon/aws-for-fluent-bit:latest

USER root

RUN sudo amazon-linux-extras install ruby2.6
RUN sudo gem install fluent-plugin-grafana-loki \
RUN sudo gem install fluent-plugin-concat \
RUN sudo gem sources --clear-all \
RUN apk add curl \
RUN apk del .build-deps \
RUN rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.4.0/cache/*.gem

COPY etc /fluent-bit/etc
