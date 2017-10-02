FROM alpine:latest

LABEL maintainer="carlos@digitalr00ts.com"

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    unicode=YES

RUN cd && set -ex && \
  apk update && apk upgrade && \
  apk add python2 py-mysqldb yaml gmp gnupg musl libffi ca-certificates libzmq libsodium git tini && \
  mkdir -p /etc/salt/ && mkdir -p /var/cache/salt/master/ && \
  mkdir -p /etc/pki/tls/certs/ && \
  rm -rf -- /var/cache/apk/* /var/lib/apk/* /etc/apk/cache/* /root/.cache

ENTRYPOINT ["/sbin/tini", "-g", "--"]

