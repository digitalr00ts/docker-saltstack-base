FROM digitalr00ts:alpine

LABEL maintainer="carlos@digitalr00ts.com"

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    unicode=YES

RUN cd && set -ex && \
  apk --no-cache add python2 py-mysqldb yaml gmp gnupg musl libffi ca-certificates libzmq libsodium git tini && \
  mkdir -p /etc/salt/ /etc/salt/pki/ 
    /var/cache/salt/master/ /etc/pki/tls/certs/

ENTRYPOINT ["/sbin/tini", "-g", "--"]

